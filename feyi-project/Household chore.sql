create database household_chores_db;
use household_chores_db;

create table tasks(
task_id int auto_increment primary key,
task_name varchar(100) not null,
category varchar(50) not null,
frequency_per_week int not null,
estimated_minutes int not null,
can_batch boolean not null default true
);

show tables;
select * from tasks;
select * from task_history;

create table task_history (
record_id int auto_increment primary key,
task_id int not null ,
task_date date not null,
actual_minutes int not null,
completed boolean not null default true,
foreign key (task_id) references tasks(task_id)
);

insert into tasks
(task_name  ,
category  ,
frequency_per_week ,
estimated_minutes ,
can_batch )
values
('sweep and mop', 'cleaning', 7,30,true),
('clean bathroon','cleaning', 2,25, true),
('wash dishes', 'cleaning',7,10,true),
('laundry', 'cleaning', 2,80,true),
('buy water', 'water',2,20,true),
('cook meals','cooking',2,30,true),
('grocery shopping','shopping',1,20,true),
('organize room', 'cleaning',3,25,true);

insert into task_history(
task_id  ,
task_date ,
actual_minutes ,
completed 
)
values
(1,"2026-10-07", 30, true),
(4,"2026-10-08", 23, true),
(7,"2026-10-07", 45,true ),
(3,"2026-10-07",23,true),
(2,"2026-10-07",10,true);

Select 
category,
sum(frequency_per_week *
estimated_minutes) as weekly_minutes,
round(
sum(frequency_per_week *
estimated_minutes) / 60,2) as weekly_hours
from tasks
group by category
order by weekly_minutes desc;

select
task_name  ,
category  ,
frequency_per_week ,
estimated_minutes ,
frequency_per_week * estimated_minutes as weekly_minutes
from tasks
order by weekly_minutes desc;

select
t.task_name  ,
t.estimated_minutes ,
h.actual_minutes,
h.task_date,
h.actual_minutes - t.estimated_minutes as differences_minutes
from tasks as t
join task_history as h
on t.task_id = h.task_id
order by h.task_date;

select
t.task_name  ,
t.estimated_minutes ,
round(avg(h.actual_minutes),2) as average_actual_minutes
from tasks t
join task_history h
on t.task_id = h.task_id
group by
t.task_id,
t.task_name,
t.estimated_minutes
order by average_actual_minutes desc;

select
t.task_name  ,
t.estimated_minutes ,
round(avg(h.actual_minutes),2) as average_actual_minutes,
round(avg(h.actual_minutes) - t.estimated_minutes,2) as extra_minutes
from tasks as t
join task_history as h
on t.task_id = h.task_id
group by
t.task_id,
t.task_name,
t.estimated_minutes
having avg(h.actual_minutes) > t.estimated_minutes
order by extra_minutes desc;

select
category ,
count(*) as total_tasks,
group_concat(task_name separator ',') as tasks_to_batch,
sum(frequency_per_week) as total_weekly_occurence
from tasks
where can_batch = true
group by category
order by total_tasks desc;

select
sum(frequency_per_week * estimated_minutes) as total_weekly_minutes,
round(sum(frequency_per_week * estimated_minutes)/60,2) as total_weekly_hours
from tasks;












