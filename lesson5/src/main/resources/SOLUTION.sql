
select * from payment where amount >= 500;

SELECT * FROM student WHERE EXTRACT(YEAR FROM AGE(birthday)) > 20;

SELECT * FROM student WHERE groupnumber = 10 AND birthday > CURRENT_DATE - INTERVAL '20 years';

select * from student where name like 'Mike%' or groupnumber in (4, 5, 6);

select * from payment where payment_date > current_date - interval '8 months';

select * from student where name like 'A%';

select * from student where ((name like 'Roxi%' and groupnumber = 4) or (name like 'Tallie%' and groupnumber = 9));