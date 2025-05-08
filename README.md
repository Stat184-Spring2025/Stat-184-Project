# Amazon India Sales Analysis 

This project explores pricing, ratings, and discount patterns in the Amazon India marketplace using a dataset from Kaggle.

## Overview
The goal of this project is to uncover relationships between product pricing, discount percentages, customer ratings, and product categories. Through data cleaning, wrangling, and visualization in R, we aim to better understand consumer behavior and marketplace dynamics on Amazon India.


## Interesting Insight
### Actual Prive vs Discounted Price 
This scatter plot compares the original price of each product (on the x-axis) with its discounted price (on the y-axis). Each point represents a single product, and the points are color-coded by product category. A dashed diagonal reference line is included to show where actual price equals discounted price—meaning no discount.

Products that appear below this line are being sold at a discount, while those closer to the line have little to no markdown. We also focused the axes on items priced under $500 to keep the plot readable and to avoid extreme outliers skewing the visual.

### Key Insights 
Some product categories consistently offer deeper discounts, while others rarely deviate from the original price. This suggests that pricing strategies vary across categories, possibly based on demand, competition, or inventory levels.



## Repo Structure
- Data Files: Includes the original dataset in both CSV and Excel formats, sourced from Kaggle
- Data Wrangling & Analysis: Contains R scripts used to clean the data, generate summaries, and create visualizations. These scripts handle tasks like converting currency, formatting columns, building tables, and plotting trends
- Report Files: The core analysis and narrative are documented in a Quarto file, which is also rendered as a PDF for easy sharing and review
- Documentation & Citatiions: Supporting files like the project guidelines, citation style files (APA/MLA), and this README help guide users and ensure proper referencing.

## Data Sources and Acknowledgements

- The dataset is from Kaggle: "Amazon Sales Dataset"
- Author: Karkavel Raja 
- All analysis and visualization were completed using R and RStudio

## Authors
- Soren Epple - sce5193@psu.edu
- Lucas Sadoulet - lls5617@psu.e
- Tjoet Lakmana - tal5618@psu.edu 
