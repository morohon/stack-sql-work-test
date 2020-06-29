SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
use stack
GO
CREATE FUNCTION select_orders_by_item_name 
(	
	@namePosition nvarchar(max)
) 
RETURNS TABLE
AS
RETURN 
(
	SELECT oi.order_id, o.customer, COUNT(oi.name) as c
	FROM dbo.OrderItems oi JOIN dbo.Orders o 
	ON oi.order_id = o.row_id 
	WHERE oi.name = @namePosition 
	GROUP BY oi.order_id, o.customer
)
GO
