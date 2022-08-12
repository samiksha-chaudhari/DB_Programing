-------------Scalar Function------it return only single value

create function SalaryStatus(@Salary as bigint)  
returns varchar(50)
begin
	declare @Status varchar(50);
	if @Salary>300000
	begin 
		set @Status='High';
	end
	else
	begin
		set @Status='Moderate';
	end
	return @Status;
end

select dbo.SalaryStatus(45000);
select dbo.SalaryStatus(1500000);



CREATE FUNCTION sales.udfNetSale(
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @quantity * @list_price * (1 - @discount);
END;

SELECT 
    sales.udfNetSale(10,100,0.1) net_sale;




--System Defined Scalar Function
Select Upper(first_name) as FirstName From sales.customers where customer_id=1
Select Lower(first_name) as FirstName From sales.customers where customer_id=1
Select Len(first_name) as FirstName From sales.customers where customer_id=1
Select Substring(first_name,2,4)as SubStrings From sales.customers where customer_id=1

--System Defined Aggregate Function
Select Avg(list_price) as Price From sales.order_items
Select Min(list_price) as Price From sales.order_items
Select Max(list_price) as Price From sales.order_items
Select Sum(list_price) as Price From sales.order_items
Select Count(list_price) as Price From sales.order_items

