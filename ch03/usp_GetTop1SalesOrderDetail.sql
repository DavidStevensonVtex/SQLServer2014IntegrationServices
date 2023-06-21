ALTER PROCEDURE usp_GetTop1SalesOrderDetail
(
	@CARRIER_TRACKING_NUMBER nvarchar(25) OUTPUT,
	@LINE_TOTAL numeric(38,6) OUTPUT,
	@ORDER_QTY smallint OUTPUT,
	@UNIT_PRICE money OUTPUT ) AS
BEGIN
	SELECT TOP  1
		@CARRIER_TRACKING_NUMBER = CarrierTrackingNumber,
		@LINE_TOTAL = LineTotal,
		@ORDER_QTY = OrderQty,
		@UNIT_PRICE = UnitPrice
	FROM Sales.SalesOrderDetail ;
END