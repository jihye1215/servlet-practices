show tables;
desc guestbook;

-- insert
insert into guestbook values(null, '둘리', '1234', '하이!', now());

-- select
select no, password, name, date_format(reg_date, '%Y/%m/%d %H:%i:%s') as reg_date, message from guestbook order by reg_date desc;

-- delete
delete from guestbook where no = 7;
delete from guestbook where no = 1 and password = '123';

