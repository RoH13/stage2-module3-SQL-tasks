
select * from subject where id in (select subject_id from mark group by subject_id having avg(mark) > (select avg(mark) from mark));


select * from student where id in (select student_id from payment group by student_id having sum(amount) < (select avg(amount) from payment));