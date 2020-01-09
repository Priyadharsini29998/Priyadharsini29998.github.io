-- ----------------------------------------------------------------
-- Adding Menu items into the table
-- ----------------------------------------------------------------

insert into menu_item
values
(1, 'Sandwich', 99.0, 'Yes', '2017-03-15','Main Course', 'Yes'),
(2, 'Burger', 129.0,'Yes' , '2017-12-23','Main Course', 'No'),
(3, 'Pizza', 149.0,'Yes' , '2018-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.0, 'No', '2017-07-02','Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.0, 'Yes', '2022-11-02','Dessert','Yes');

-- ----------------------------------------------------------------
-- Admin Menu Item List
-- ----------------------------------------------------------------

select 
me_name as Name ,
me_price as Price,
me_active as Active,
me_date_of_launch as Date_Of_Launch ,
me_category as Category,
me_free_delivery as Free_Delivery
from menu_item;

-- ----------------------------------------------------------------
-- Updating the Menu Item value 
-- Edit Menu Item
-- ----------------------------------------------------------------

update menu_item 
set me_name='Nuggets'
where me_id=1;

-- ----------------------------------------------------------------

update menu_item 
set 
me_name='Cookies',
me_price=44 ,
me_active='No',
me_date_of_launch='2019-12-31',
me_category='Starter',
me_free_delivery='Yes'
where me_id=3;

-- ----------------------------------------------------------------
-- Inserting User value
-- ----------------------------------------------------------------

insert into user 
values 
(1,'Priya'),
(2,'Kumaresh');

-- ----------------------------------------------------------------
-- Inserting into Cart Table 
-- ----------------------------------------------------------------

insert into cart (ct_us_id  , ct_pr_id)
values
(1,2),
(1,4),
(2,3),
(2,4);

-- ----------------------------------------------------------------
-- Retrieving Cart Menu Item List
-- Add To cart
-- ----------------------------------------------------------------

select 
me_name as Name, 
me_free_delivery as Free_Delivery , 
me_price as Price, 
me_category as Category 
from menu_item
where  me_active = 'Yes' 
and 
me_date_of_launch < current_date() ;

-- ----------------------------------------------------------------

select 
me_name as Name ,
me_price as Price,
me_free_delivery as Free_Delivery,
me_category as Category
from menu_item m
join cart c on (m.me_id = c.ct_pr_id)
where ct_us_id = 1 ;

-- ----------------------------------------------------------------
-- Retrieving the total of MenuItems in Cart
-- Cart Total
-- ----------------------------------------------------------------

select 
sum(me_price) Total
from menu_item m 
join cart c on (m.me_id = c.ct_pr_id)
where c.ct_us_id=2;

-- ----------------------------------------------------------------
-- Deleting a Menu Item from Cart
-- Remove from Cart
-- ----------------------------------------------------------------
	
delete 
from cart 
where ct_pr_id=2 
and ct_us_id = 1;






