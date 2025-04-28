library(dplyr)
library(tidyr)
data <- read.csv("C:/Users/llsad/Downloads/amazon.csv")


View(data)
df_unique <- data %>%
  distinct(product_id, .keep_all = TRUE)


conversion_rate <- 0.012  # ₹1 = $0.012

df_usd <- df_unique %>%
  mutate(
    actual_price_USD = as.numeric(gsub(",","",gsub("₹", "", actual_price))),
    discounted_price_USD = as.numeric(gsub(",","",gsub("₹", "", discounted_price)))
    
  )
View(df_usd)


df_tidy <- df_usd %>%
  mutate(
    rating_count = as.numeric(gsub(",", "", rating_count))
    
  ) %>%
  select(product_name, category, PriceUSD, rating, rating_count, user_id) %>%
  separate_rows(user_id, sep = ",")

View(df_tidy)
