

select * from mark
where Mark.mark > 6
order by mark desc;


select * from payment
where amount < 300
order by amount asc;


select * from paymenttype
order by name desc;


select * from student
order  by name desc;



select * from student
where id in (select student_id from payment
             where amount > 1000)
order by birthday;


