ALTER TABLE student ALTER COLUMN birthday DROP NOT NULL;
insert into student(name, groupnumber)
values ('John', 1), ('Chris', 1), ('Carl', 1),
       ('Oliver', 2), ('James', 2), ('Lucas', 2), ('Henry', 2),
       ('Jacob', 3),  ('Logan', 3),
       ('Ivan', 4) , ('Fedor', 4), ('Misha', 4), ('Sam', 4),
       ('Grisha', 5), ('Sasha', 5), ('Alex', 5);

insert into subject(name, grade)
values ('art', 1), ('music', 1),
       ('geography', 2), ('history', 2),
       ('PE', 3), ('math', 3),
       ('science', 4), ('it', 4),
       ('algebraic geometry', 5), ('topology', 5);

insert into paymenttype(name)
values ('WEEKLY'), ('DAILY'), ('MONTHLY');

insert into Payment(student_id, type_id)
values((select id from student where name = 'John'), (select id from PaymentType where name = 'WEEKLY')),
      ((select id from student where name = 'Oliver'), (select id from PaymentType where name = 'MONTHLY')),
      ((select id from student where name = 'Henry'), (select id from PaymentType where name = 'WEEKLY')),
      ((select id from student where name = 'James'), (select id from PaymentType where name = 'DAILY')),
      ((select id from student where name = 'Alex'), (select id from PaymentType where name = 'WEEKLY')),
      ((select id from student where name = 'Sasha'), (select id from PaymentType where name = 'DAILY'));


insert into mark(mark, student_id, subject_id)
values (8, (select id from Student where name = 'Chris'), (select id from Subject where name = 'art')),
       (5, (select id from Student where name = 'Oliver'), (select id from Subject where name = 'history')),
       (9, (select id from Student where name = 'James'), (select id from Subject where name = 'geography')),
       (4, (select id from Student where name = 'Jacob'), (select id from Subject where name = 'math')),
       (8, (select id from Student where name = 'Logan'), (select id from Subject where name = 'PE')),
       (5, (select id from Student where name = 'Grisha'), (select id from Subject where name = 'topology')),
       (4, (select id from Student where name = 'Sasha'), (select id from Subject where name = 'math')),
       (8, (select id from Student where name = 'Alex'), (select id from Subject where name = 'art'));