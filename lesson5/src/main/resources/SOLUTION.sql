
select * from payment where amount >= 500;

SELECT * FROM student WHERE birthday < DATEADD(year, -20, CAST('20001010' AS DATE));

SELECT * FROM student WHERE groupnumber = 10 AND birthday > DATEADD(year, -20, CAST('20001010' AS DATE));

select * from student where name like 'Mike%' or groupnumber in (4, 5, 6);

SELECT * FROM payment WHERE payment_date >= DATEADD(month, -8, CAST('20001010' AS DATE)) AND payment_date <= CAST('20001010' AS DATE);

select * from student where name like 'A%';

select * from student where ((name like 'Roxi%' and groupnumber = 4) or (name like 'Tallie%' and groupnumber = 9));