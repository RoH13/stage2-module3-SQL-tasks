create table Student(
                        id bigint primary key,
                        name varchar,
                        birthday date,
                        groupnumber int
);
create table Subject(
                        id bigint primary key,
                        name varchar,
                        description date,
                        grade int
);
create table PaymentType(
                            id bigint primary key,
                            name varchar
);
create table Payment(
                        id bigint primary key,
                        type_id bigint references PaymentType,
                        amount decimal,
                        student_id bigint references Student,
                        payment_date date
);
create table Mark(
                     id bigint primary key,
                     student_id bigint references Student,
                     subject_id bigint references Subject,
                     mark int
);