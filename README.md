# Pizza Sales Analysis
### Project Overview
This data analysis project intends to provide insights into the sales perfomance of a pizza restaurant. By analyzing various aspects of the sales data, i hope that we will find opportunities to drive more sales and work more efficiently.

# About Dataset
1. Data source: Collected from Kaggle - the world's largest data science community. Link below: https://www.kaggle.com/datasets/shilongzhuang/pizza-sales/data
2. Information about the dataset: This pizza sales dataset make up 12 relevant features:

- order_id: Unique identifier for each order placed by a table

- order_details_id: Unique identifier for each pizza placed within each order (pizzas of the same type and size are kept in the same row, and the quantity increases)

- pizza_id: Unique key identifier that ties the pizza ordered to its details, like size and price

- quantity: Quantity ordered for each pizza of the same type and size

- order_date: Date the order was placed (entered into the system prior to cooking & serving)

- order_time: Time the order was placed (entered into the system prior to cooking & serving)

- unit_price: Price of the pizza in USD

- total_price: unit_price * quantity

- pizza_size: Size of the pizza (Small, Medium, Large, X Large, or XX Large)

- pizza_type: Unique key identifier that ties the pizza ordered to its details, like size and price

- pizza_ingredients: ingredients used in the pizza as shown in the menu (they all include Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce is specified)
- pizza_name: Name of the pizza as shown in the menu

# Business Task
1. What days do we tend to be busiest?
3. What is our monthly order performance?
5. What's the average pizzas per order?
6. What is the order performance of various pizza sizes?
7. Which pizza category is the most popular among the customers?
8. What are the best and worst-selling pizzas?

# My Data Process
1. Data cleaning: I used power query to cleaning data and transforming the data to ensure the dataset's quality and suitability for analysis. This included replacing the abbreviations, extract the days from order_date.
2. SQL queries: I used SQL Server Management Studio 19 to show all relevant information from the dataset. Here is full [analysis](https://github.com/HibikiFu/portfolio_pizza_sales/blob/main/SQLQuery2.sql)
3. Visualization: I utilized Power BI to create a report to visualize all relevant information from the dataset clearly. Please click [here](https://github.com/HibikiFu/portfolio_pizza_sales/blob/main/pizza_dashboard.pbix) to download the full Power BI dashboard.

# Insights
After conducting the analysis, i have gathered several valuable insights from the pizza sales data. Here are the results that i discovered:
1. The busiest days are Fridays and Saturdays: With Fridays having a total of 3,538 orders, 8,242 quantities of pizzas made, and revenue generation of $136,073. While on Saturdays, orders received was 3158, with a total of 7,493 pizzas made and revenue generation of $123,182.
2. Monthly trend for total orders: July was the top performing month with a total of 1935 orders, 4,392 pizzas sold and revenue generation of $72,560.
3. The order performance of pizza sizes: Large size contributed maximum to sales with total revenue is $375,320.
4. Classic catergory is the most customers' favorite: The classic pizza catergory dominated the most in terms of total orders and revenue-generating.
5. The Thai Chicken Pizza was the top performers in terms of revenue.
6. The Classic Deluxe Pizza dominated the total orders and quantity.

# Pizza Sales Dashboard

![pizza_sales_pic](https://github.com/HibikiFu/portfolio_pizza_sales/assets/164732424/90e3aa95-2666-4524-8c5d-255bc9d2de39)
![pizza_sales_pic2](https://github.com/HibikiFu/portfolio_pizza_sales/assets/164732424/e0b18d79-9e73-4add-9cda-324dba6cb609)






