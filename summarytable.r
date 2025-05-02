df_summary <- df_tidy %>%
  mutate(
    rating = as.numeric(rating),
    main_category = sapply(strsplit(category, '\\|'), `[`, 1)  # fixed typo here
  ) %>%
  group_by(main_category) %>%
  summarise(
    avg_rating = round(mean(rating, na.rm = TRUE), 2),
    total_reviews = n()  # Counts number of user_id entries per category
  ) %>%
  arrange(desc(total_reviews))

View(df_summary)
