use sakila;
-- 1.Select all the actors with the first name ‘Scarlett’.
select * from sakila.actor where first_name like 'Scarlett';
-- 2. Select all the actors with the last name ‘Johansson’.
select * from sakila.actor where last_name like 'Johansson';
-- 3.How many films rental_date(movies) are available for rent?
 select count(*) from film;
 -- 4.How many films have been rented?
 select count(*) from rental;
 -- 5. What is the shortest and longest rental period?
 select min(rental_duration), max(rental_duration) from film;
 -- 6. What are the shortest and longest movie duration?
 select min(length), max(length) from film;
-- 7.What's the average movie duration?
select avg(length) from film;
-- 8. What's the average movie duration expressed in format (hours, minutes)?
select concat(
 floor(avg(time_to_sec(sec_to_time(length * 60))) / 3600), ' hours, ',
  mod(floor(avg(time_to_sec(sec_to_time(length * 60))) / 60), 60), ' minutes'
) as avg_duration
from film;
-- 9. How many movies longer than 3 hours?
select * from film where length > 180;
-- 10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(first_name,'.',last_name, '@sakilacustomer.org') as customer_mail from customer;
-- 11. What's the length of the longest film title?
select max(length) from film;
select * from film where (length = 185);

