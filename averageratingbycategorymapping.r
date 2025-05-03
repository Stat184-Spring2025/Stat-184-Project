library(ggplot2)

ggplot(df_summary, aes(x = reorder(main_category, -avg_rating), y = avg_rating, fill = main_category)) +
  geom_bar(stat = "identity", color = "black", width = 0.7, show.legend = FALSE) +
  scale_fill_brewer(palette = "Set3") +
  labs(
    title = "Average Rating by Main Category",
    subtitle = "Amazon India Sales Dataset",
    x = "Main Category",
    y = "Average Rating"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(size = 12, hjust = 0.5),
    axis.text.x = element_text(angle = 45, hjust = 1),
    panel.grid.major.y = element_line(color = "black")
  )
