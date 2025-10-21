select min(birthday) from student;

select min(payment_date) from payment;

select avg(mark) from mark where subject_id = (select id from subject where name = 'math');

select min(amount) from Payment where type_id = (select id from PaymentType where name = 'WEEKLY');