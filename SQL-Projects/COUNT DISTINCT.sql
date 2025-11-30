SELECT
	COUNT(DISTINCT warehouse.state) as num_states
FROM
	inlaid-computer-474219-u0.pedidos_almacen.pedidos AS orders
JOIN
    inlaid-computer-474219-u0.pedidos_almacen.almacen warehouse ON orders.warehouse_id = warehouse.warehouse_id