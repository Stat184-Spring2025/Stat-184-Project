library(dplyr)
library(tidyr)
library(janitor)
library(knitr)
library(kableExtra)

# Step 1: Use all reviews (no distinct!)
df_all_reviews <- df_tidy %>%
  mutate(
    rating = round(as.numeric(rating), 1),
    main_category = sapply(strsplit(category, '\\|'), `[`, 1)
  )

# Step 2: Create tabyl with full counts
rating_table <- df_all_reviews %>%
  tabyl(main_category, rating) %>%
  adorn_totals(where = c("row", "col")) %>%
  adorn_percentages(denominator = "all") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_title(
    placement = "combined",
    row_name = "Main Category",
    col_name = "Rating"
  )

# Step 3: Format absolute counts for display
count_format <- attr(rating_table, "core") %>%
  adorn_totals(where = c("row", "col")) %>%
  mutate(across(where(is.numeric), format, big.mark = ","))

# Step 4: Add absolute counts to % table
final_table <- rating_table %>%
  adorn_ns(position = "front", ns = count_format)

# Step 5: Polished table with kableExtra
final_table %>%
  kable(
    caption = "Distribution of Ratings Across All Reviews",
    booktabs = TRUE,
    align = c("l", rep("c", ncol(final_table) - 1))
  ) %>%
  kable_styling(
    bootstrap_options = c("striped", "condensed"),
    font_size = 14
  )
