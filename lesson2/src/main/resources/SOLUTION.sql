INSERT INTO student (name, groupnumber, birthday)
VALUES
    ('John', 1, '1995-01-15'),
    ('Chris', 1, '1995-02-20'),
    ('Carl', 1, '1995-03-10'),
    ('Oliver', 2, '1996-04-05'),
    ('James', 2, '1996-05-12'),
    ('Lucas', 2, '1996-06-18'),
    ('Henry', 2, '1996-07-22'),
    ('Jacob', 3, '1997-08-30'),
    ('Logan', 3, '1997-09-14'),
    ('Ivan', 4, '1998-10-08'),
    ('Fedor', 4, '1998-11-25'),
    ('Misha', 4, '1998-12-03'),
    ('Sam', 4, '1999-01-19'),
    ('Grisha', 5, '1999-02-28'),
    ('Sasha', 5, '1999-03-15'),
    ('Alex', 5, '1999-04-10');
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