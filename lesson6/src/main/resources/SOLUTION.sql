select * from payment where type_id = (select id from paymenttype where name = 'monthly');


select * from mark where subject_id = (select id from subject where name = 'art');


select * from student where id = (select student_id from payment where (type_id = (select id from paymenttype where name = 'WEEKLY')));

select * from student where id in (select student_id from mark where subject_id = (select id from subject where name = 'math'));