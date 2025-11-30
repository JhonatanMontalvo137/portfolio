SELECT
	state,
	COUNT(DISTINCT order_id) as num_orders
FROM
	inlaid-computer-474219-u0.pedidos_almacen.pedidos AS orders
JOIN
  inlaid-computer-474219-u0.pedidos_almacen.almacen warehouse ON orders.warehouse_id = warehouse.warehouse_id
GROUP BY
	warehouse.state