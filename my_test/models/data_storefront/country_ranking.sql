SELECT
  order_country,
  COUNT(order_id) AS order_count,
  SUM(product_price * qt) AS country_order_amount
FROM {{ ref('Orders') }}
WHERE order_status != 'Canceled'
GROUP BY order_country
ORDER BY country_order_amount DESC;
