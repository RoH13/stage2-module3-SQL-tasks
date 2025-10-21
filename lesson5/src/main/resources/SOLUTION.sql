
select * from payment where amount >= 500;

select * from student where age(birthday) > interval '20 years';

select * from student where groupnumber = 10 and age(birthday) < interval '20 years';

select * from student where name = 'Mike' or groupnumber in (4, 5 , 6);

select * from payment where payment_date > current_date - interval '8 month';

select * from student where name like 'A%';

select * from student where (name = 'Roxi' and groupnumber = 4) or (name = 'Tallie' and groupnumber = 9);