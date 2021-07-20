/*
Overview (обзор ключевых метрик)

- Total Sales
- Total Profit
- Profit Ratio
- Avg. Discount
*/

SELECT 
	round(SUM(sales), 0) AS Продажи,
	round(SUM(profit), 0) AS Прибыль,
	round(SUM(profit) / SUM(sales), 3) AS Маржа,
	round(AVG(discount), 3) AS Скидка
FROM
	public.orders ord
	LEFT JOIN public.returns ret
	ON ord.order_id = ret.orderid
WHERE ret.orderid IS NULL;

/*
Profit per Order
*/

SELECT 
	order_id,
	round(SUM(profit), 0) AS Прибыль
FROM public.orders
GROUP BY order_id
ORDER BY Прибыль DESC;

/*
Sales per Customer
*/

SELECT 
	customer_id,
	customer_name,
	round(SUM(sales), 0) AS Продажи
FROM public.orders
GROUP BY customer_id, customer_name
ORDER BY Продажи DESC;

/*
Monthly Sales by Segment
*/

SELECT 	
	EXTRACT(YEAR FROM order_date) AS Год,
	EXTRACT(MONTH FROM order_date) AS Месяц,
	segment AS Сегмент,
	round(SUM(sales), 0) AS Продажи
FROM public.orders
GROUP BY 1, 2, 3
ORDER BY 1, 2;

/*
Monthly Sales by Product Category
*/

SELECT 	
	EXTRACT(YEAR FROM order_date) AS Год,
	EXTRACT(MONTH FROM order_date) AS Месяц,
	category AS Категория,
	round(SUM(sales), 0) AS Продажи
FROM public.orders
GROUP BY 1, 2, 3
ORDER BY 1, 2;