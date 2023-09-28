SELECT
  order_country,
  order_status,
  COUNT(*) AS order_count,
  SUM(product_price * qt) AS country_order_amount
FROM {{ ref('Orders') }}
GROUP BY order_status, order_country
ORDER BY order_country, order_status, order_count DESC, country_order_amount DESC;
