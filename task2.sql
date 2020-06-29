SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION calculate_total_price_for_orders_group(@id int)
RETURNS int
AS
BEGIN
	DECLARE @ResultVar int;

	WITH cte(row_id, parent_id) as (
		SELECT row_id, parent_id FROM Orders WHERE row_id = @id
		UNION ALL
		SELECT Orders.row_id,  Orders.parent_id
		FROM Orders
		INNER JOIN  cte on cte.row_id = Orders.parent_id
	)

	SELECT @ResultVar = SUM(oi.price) FROM cte c INNER JOIN OrderItems oi ON c.row_id = oi.order_id;

	RETURN @ResultVar

END
GO

