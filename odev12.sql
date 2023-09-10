1.film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

select count(*) from film
where length >
(
select avg(length)
	from film	 
);


2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

select count(*) from film
where rental_rate =
(
select max(rental_rate)
	from film
);

3.film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

(select * from film 
where rental_rate = (select min(rental_rate) from film))
INTERSECT
(select * from film 
where replacement_cost = (select min(replacement_cost) from film))
;


4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_id, COUNT(*) AS most_payments FROM payment
GROUP BY customer_id
ORDER BY most_payments DESC; 