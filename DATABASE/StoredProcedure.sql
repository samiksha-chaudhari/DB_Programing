----SP to add two numbers-----
ALTER PROCEDURE addition 
@first_number int, 
@second_number int
AS
DECLARE
@sum int
BEGIN
SET @sum=@first_number+@second_number
PRINT('Sum of given numbers is:'+STR(@sum))
END
GO

EXEC addition 40, 60;


------SP to

CREATE PROCEDURE DisplayInfo 
@customer_id int
AS
DECLARE

@name nchar(30),
@lastname nchar(30),
@email nchar(30),
@city nchar(30)

BEGIN

SET @name= (SELECT first_name FROM sales.customers WHERE [customer_id]=@customer_id)
SET @lastname= (SELECT last_name FROM sales.customers WHERE [customer_id]=@customer_id)
SET @email= (SELECT email FROM sales.customers WHERE [customer_id]=@customer_id)
SET @city= (SELECT city FROM sales.customers WHERE [customer_id]=@customer_id)
PRINT('Employee Name is:'+ @name)
PRINT('Employee Last is:'+@lastname)
PRINT('Employee Email ID is:'+@email)
PRINT('Employee City is:'+@city)

END
GO

EXEC DisplayInfo 4;

-----------stored procedure to list columns--------------------

EXEC sp_columns 'sales.customers'


-----------SP with output parameter in customer details table--------

Create Procedure OutputParamProcedure
@name varchar(50),
@Usercount int output
As
Begin
	Begin Try
		select @Usercount=Count(customer_id)
		from sales.customers
		where first_name=@name;
	End Try
	Begin Catch
		Select ERROR_MESSAGE() AS ErrorMessage;
	End Catch
End

select * from sales.customers where first_name = 'Kasha';

Declare @TotalCount int;
Exec OutputParamProcedure 'Kasha',@TotalCount Output;
Select @TotalCount;


---------------------------------------------------------


CREATE PROCEDURE uspFindProducts(
    @min_list_price AS DECIMAL = 0
    ,@max_list_price AS DECIMAL = NULL
    ,@name AS VARCHAR(max)
)
AS
BEGIN
    SELECT
        product_name,
        list_price
    FROM 
        production.products
    WHERE
        list_price >= @min_list_price AND
        (@max_list_price IS NULL OR list_price <= @max_list_price) AND
        product_name LIKE '%' + @name + '%'
    ORDER BY
        list_price;
END;


EXECUTE uspFindProducts 
    @min_list_price = 500,
    @name = 'Haro';