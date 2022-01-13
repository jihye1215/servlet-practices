show tables;
desc emaillist;
insert into emaillist values(null, '둘', '리', 'dooly@gmail.com');
insert into emaillist values(null, '루', '피', 'luffy@gmail.com');
select no, first_name, last_name, email from emaillist order by no desc;
delete from emaillist where no = 5;
ALTER TABLE emaillist AUTO_INCREMENT=5;