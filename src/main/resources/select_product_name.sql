select product_name
from ORDERS
         JOIN CUSTOMERS ON ORDERS.customer_id=CUSTOMERS.id
where lower(CUSTOMERS.name)=lower(:name);