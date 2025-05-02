library(dplyr)
library(tidyr)
data <- read.csv("C:/Users/llsad/Downloads/amazon.csv")


View(data)
df_unique <- data %>%
  distinct(product_id, .keep_all = TRUE)


conversion_rate <- 0.012  # ₹1 = $0.012

df_usd <- df_unique %>%
  mutate(
    discounted_price_USD = as.numeric(gsub(",","",gsub("₹", "", discounted_price))),
    actual_price_USD = as.numeric(gsub(",","",gsub("₹", "", actual_price)))
    
  )
View(df_usd)


df_tidy <- df_usd %>%
  mutate(
    rating_count = as.numeric(gsub(",", "", rating_count)),
  ) %>%
  select(product_name, category, discounted_price_USD, actual_price_USD, rating, rating_count, user_id) %>%
  separate_rows(user_id, sep = ",")

View(df_tidy)
