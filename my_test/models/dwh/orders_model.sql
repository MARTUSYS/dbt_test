SELECT
  order_id,
  order_name,
  order_status,
  order_country,
  delivery_cost,
  product_code,
  product_name,
  product_price,
  qt,
  delivery,
  product_price * qt AS order_amount
FROM {{ ref('Orders') }};
