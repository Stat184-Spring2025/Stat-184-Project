library(dplyr)
library(tidyr)
data <- read.csv("datasets/amazon.csv")
 
 
View(data)
df_unique <- data %>%
  distinct(product_id, .keep_all = TRUE)
 
 
conversion_rate <- 0.012  # ₹1 = $0.012
 
df_usd <- df_unique %>%
  mutate(
    PriceINR_clean = as.numeric(gsub("₹|,", "", actual_price)),
    PriceUSD = PriceINR_clean * 0.012
  )
 
df_tidy <- df_usd %>%
  mutate(
    rating_count = as.numeric(gsub(",", "", rating_count))
  ) %>%
  select(product_name, category, PriceUSD, rating, rating_count, user_id) %>%
  separate_rows(user_id, sep = ",")
 
View(df_tidy)
