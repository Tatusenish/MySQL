
SELECT*
FROM users u
WHERE id < 150
GROUP BY firstname; 

SELECT*
FROM products p
GROUP BY name;

SELECT*
FROM product_orders o
WHERE price >= 1000
GROUP BY id; 

SELECT* u.id, u.name, o.name AS o_name
FROM users u
RIGHT JOIN product_orders o ON o_id = o.id
WHERE u.id IS null

/* SELECT* 
FROM table1 
UNION SELECT* 
FROM table2; */

CREATE VIEW "Products by Properties" AS
 SELECT* product_properties.model, products.description,
  product_properties.quantity, products.in_stock
 FROM product_properties INNER JOIN products ON product_properties.id 
  =
  Products.id

 
CREATE VIEW "User's Profiles" AS
 SELECT* users.firstname, profiles.gender,
  users.lastname, profiles.is_active
 FROM users INNER JOIN profiles ON users.id 
  =
  users.id

  
/* SELECT* products.description,
 manufacturers.description
 FROM products INNER JOIN
 manufacturers ON products.id = products.id
 WHERE manufacturers.product_id = 1 */
 
 