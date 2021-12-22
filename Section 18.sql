/* Section 18 */
-- PATTERN MATCHING -- 
-- mean customer name start with Jo --
SELECT * FROM customer where customer_name like 'Jo%';

-- mean customer name end on --
SELECT * FROM customer where customer_name like '%on';

-- mean customer name start a and n --  
select * from customer where customer_name like 'J%n'

select * from customer where customer_name ~*'^a+[a-z\s]+$'

select * from customer where customer_name ~*'^(a|b|c|d)+[a-z\s]+$'
select * from customer where customer_name ~*'^(a|b|c|d)[a-z]{3}\s[a-z]{4}$'

-- find put all customers who have first name and last name of 5 characters each and last name starts with 'a/b/c/d'
select * from customer where customer_name ~*'^[a-z]{5}\s(a|b|c|d)[a-z]{4}$'

-- create a table "zipcode" and insert the beliw data in it --
-- find out the valid zipcodes from this table (5 or 6 numeric charecters) --
create table zipcode (zip varchar)
insert into zipcode (zip) values('234432');
insert into zipcode (zip) values('23345');
insert into zipcode (zip) values('sdfe4');
insert into zipcode (zip) values('123&3');
insert into zipcode (zip) values('67424');
insert into zipcode (zip) values('78954321');
insert into zipcode (zip) values('12312');
insert into zipcode values('12312345');

select * from zipcode where zip ~*'^[0-9]{5,6}$'
