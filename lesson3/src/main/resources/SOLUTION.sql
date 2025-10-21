update student set birthday = '2001-09-11' where birthday is null;
alter table student alter column birthday set not null;

alter table mark add constraint mark_check check (mark >= 1 and mark <= 10), alter column student_id set not null, alter column subject_id set not null;

alter table subject add constraint grade_check check (grade >= 1 and grade <= 5);

alter table paymenttype add unique(name);

delete from payment where type_id is null;
update payment set amount = 0 where type_id is null;
update payment set payment_date = '2001-09-11' where payment_date is null;
alter table payment alter column type_id set not null,
alter column amount set not null,
alter column payment_date set not null;