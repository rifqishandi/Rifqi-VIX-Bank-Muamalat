SELECT 
  o.Date order_date,
  pc.CategoryName category_name,
  p.ProdName product_name,
  p.Price product_price,
  o.Quantity order_qty,
  (p.Price * o.Quantity) AS total_sales,
  c.CustomerEmail cust_email,
  c.CustomerCity cust_city
FROM `muamalat_project.Customers` AS c
JOIN `muamalat_project.Orders` AS o
  ON c.CustomerID = o.CustomerID
JOIN `muamalat_project.Products` AS p
  ON o.ProdNumber = p.ProdNumber
JOIN `muamalat_project.ProductCategory` AS pc
  ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;