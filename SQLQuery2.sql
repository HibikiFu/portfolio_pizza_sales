
-- Total Revennue: The sum of total price of all pizza orders
select sum(total_price) as Total_Revenue from pizza_sales

-- Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders
select sum(total_price) / count(distinct order_id) as Average_Order_value from pizza_sales

-- Total Pizzas Sold: The sum of the quantities of all pizzas sold
select sum(quantity) as Total_Pizzas_Sold from pizza_sales

-- Total Orders: The total number of orders placed
select count(distinct order_id) as Total_Orders from pizza_sales

-- Average Pizzas Per Order: The average number of pizzas sold per order, 
-- calculated by dividing the total number of pizzas sold by the total number of orders
select cast (cast (sum (quantity) as decimal (10,2))  / cast (count(distinct order_id) as decimal (10,2)) as decimal (10,2)) as Avg_Pizzas_Per_Order 
from pizza_sales;

-- Daily Trend For Total Orders: Create a bar chart that displays the daily trend of total orders over a specific time period.
-- This chart will help us identify any patterns or fluctuation in order volumes on a daily basis

select datename(dw, order_date) as Order_day,
count (distinct order_id) as Total_Orders
from pizza_sales
group by datename(dw, order_date)

-- Monthly Trend For Total Orders: Create a line chart that illustrates the hourly trend of total orders throughout the day.
-- This chart will allow us to identify peak hours or periods of high order activity.

select datename (month, order_date) as Month_name,
count (distinct order_id) as Total_Orders
from pizza_sales
group by datename(month, order_date)
order by Total_Orders desc

-- Percentage Of Sales By Catergory: Create a pie chart that shows the distribution of sales across different pizza categories.
-- This chart will provide insights into the popularity of various pizza categories and their contribution to overall sales.

select pizza_category,
sum(total_price) as Total_Sales,
sum(total_price) * 100 / (select sum(total_price) from pizza_sales where month(order_date) = 1) as PCT
from pizza_sales
where month(order_date) = 1
group by pizza_category


-- Percentage Of Sales By Pizza Size: Generate a pie chart that represents the percentage of sales attributed to different pizza sizes.
-- This chart will help us understand customer preferences for pizza sizes and their impact on sales.

select pizza_size,
cast(sum(total_price) as decimal(10,2)) as Total_sales,
cast(sum(total_price) * 100 / (select sum(total_price)
from pizza_sales where datename(qq, order_date)=1 ) as decimal(10,2)) as PCT
from pizza_sales
where datename(qq, order_date)=1
group by pizza_size
order by PCT Desc

-- Top 5 Best Sellers By Revenue, Total Quantity And Total Orders: Create a bar chart highlighting the top 5 best-selling pizzas based on the Revenue, Total Quantity, Total Orders.
-- This chart will help us identify the most popular pizza options

-- Top 5 Pizzas By Revenue
select top 5 pizza_name,
sum(total_price) as total_revenue 
from pizza_sales
group by pizza_name
order by total_revenue desc

-- Bottom 5 Pizzas By Revenue
select top 5 pizza_name,
sum(total_price) as total_revenue 
from pizza_sales
group by pizza_name
order by total_revenue asc

-- Top 5 Pizzas By Quantity
select top 5 pizza_name,
sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity desc

-- Bottom 5 Pizzas By Quantity
select top 5 pizza_name,
sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity asc

-- Top 5 Pizzas By Total Orrders
select top 5 pizza_name,
sum(distinct(order_id)) as total_orders
from pizza_sales
group by pizza_name
order by total_orders desc

-- Bottom 5 Pizzas By Total Orrders
select top 5 pizza_name,
sum(distinct(order_id)) as total_orders
from pizza_sales
group by pizza_name
order by total_orders asc
