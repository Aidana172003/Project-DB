select count(shopping_order.customer_ID), sum(products.product_price), shopping_order.customer_name
from shopping_order join products on shopping_order.product_ID=products.product_id and EXTRACT(year FROM shopping_order.date)=EXTRACT(year FROM now())-1
group by shopping_order.customer_ID, shopping_order.customer_name
order by shopping_order.customer_ID asc limit 1;
--
select count(sell.product_ID), products.product_name
from sell join products on products.product_id=sell.product_ID and EXTRACT(year FROM sell.date)=EXTRACT(year FROM now())-1
group by sell.product_ID, products.product_name
order by count(sell.product_ID) desc limit 2;
--
select count(sell.product_ID), products.product_name, sum(products.product_price)
from sell join products on products.product_id=sell.product_ID and EXTRACT(year FROM sell.date)=EXTRACT(year FROM now())-1
group by sell.product_ID, products.product_name
order by sum(products.product_price) desc limit 2;
--
select deliveries.delivery_id, shopping_order.order_ID, shopping_order.customer_name
from deliveries join shopping_order on deliveries.order_ID=shopping_order.order_ID and shopping_order.date<deliveries.date
group by deliveries.delivery_id, shopping_order.order_ID, shopping_order.customer_name;
--
select count(shopping_order.customer_ID), sum(products.product_price), shopping_order.customer_name
from shopping_order join products on shopping_order.product_ID=products.product_id and EXTRACT(month FROM shopping_order.date)=EXTRACT(month FROM now())-1
group by shopping_order.customer_ID, shopping_order.customer_name
order by shopping_order.customer_ID;
--
select products.product_name, store.status
from products join store on products.product_id=store.product_id and location='California';