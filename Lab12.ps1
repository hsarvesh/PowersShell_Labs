<#

Formatting Output
•	Write a script to format a table of products with their names, prices, and quantities.
•	Use the Format-Table cmdlet to customize the table's appearance.
#>

$products = @(
    @{ Name = "Product A"; Price = 10; Quantity = 5 },
    @{ Name = "Product B"; Price = 20; Quantity = 3 },
    @{ Name = "Product C"; Price = 15; Quantity = 2 }
)

$products | Format-Table -AutoSize
