update student set birthday = '2001-09-11' where birthday is null;
alter table student alter column birthday set not null;

DELETE FROM mark WHERE mark < 1 OR mark > 10;
alter table mark add constraint mark_check check (mark >= 1 and mark <= 10);
alter table mark alter column student_id set not null;
alter table mark alter column subject_id set not null;

delete from subject where grade < 1 or grade > 5;
alter table subject add constraint grade_check check (grade >= 1 and grade <= 5);

DELETE FROM student WHERE id NOT IN (SELECT MIN(id) FROM student GROUP BY name);
alter table paymenttype add unique(name);

delete from payment where type_id is null;
delete from payment where amount is null;
delete from payment where payment_date is null;
alter table payment alter column type_id set not null,
alter column amount set not null,
alter column payment_date set not null;