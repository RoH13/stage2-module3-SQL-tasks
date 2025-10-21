
delete from mark where student_id in (select id from (select id from student where gr > 4));
delete from payment where student_id in (select id from (select id from student where gr > 4));
delete from student where id in (select id from (select id from student where gr > 4));


delete from student where id in (select student_id from mark group by student_id having min(mark) < 4);


delete from payment where type_id = (select id from PaymentType where name = 'daily');
delete from paymenttype where name = 'daily';


delete from mark where mark.mark < 7;
