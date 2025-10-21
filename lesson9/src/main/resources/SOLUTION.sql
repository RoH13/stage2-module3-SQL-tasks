select * from student where id in (select student_id from mark group by student_id having avg(mark) > 8);


select id, name from student where id in (select student_id from mark group by student_id having min(mark) > 7);

select id, name from student where id in (select student_id from payment where extract(year from payment_date) = 2019 group by student_id having count(*) > 2);

