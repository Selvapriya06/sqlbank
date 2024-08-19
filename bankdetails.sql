create database Bank;
use Bank;
show databases;
create table cus(id int, first_name varchar(20), last_name varchar(20),DOB varchar(20),
city varchar(20),mobile_no varchar(15),primary key(id));
insert into cus (id,first_name,last_name,DOB,city,mobile_no)
values(101,"Mythili","M","14-08-2004","Rasipuram","12345678"),
(102,"SelvaPriya","P","14-09-2004","Namakkal","876543210"),
(103,"Harini","S","31-08-2004","PNPalayam","34567899"),
(104,"Janani","I","29-8-2004","PNPalayam","56483844");
update cus set city ="Attur" where id=104;
create table account(id int,customer_id int,balance bigint,account_status varchar(20),
account_type varchar(20),currency varchar(20),primary key(id),
foreign key(customer_id) references customer(id));
select * from cus;
select * from account;
insert into account(id ,customer_id,balance,account_status,account_type,currency)values
(1,101,30000,"Active","Salary","$$80"),
(2,102,50000,"Active","Salary","$50"),
(3,103,80000,"Active","Salary","$30"),
(4,104,0,"Locked","Salary","$0");
create table branchs(id int ,branch_name varchar(20),branch_loction varchar(20),primary key(id));
drop table branchs;
insert into branchs(id,branch_name,branch_loction) values
(01,"UCO","PNPalayaam"),(02,"HDFC","PGPalayaam"),(03,"Axis","Attur"),(04,"ICICI","Rasipuram");
select * from branchs;
create table loans(loan_id int,customer_id int,branchs_id int,loan_amount bigint,date_issued date,primary key(loan_id),
foreign key(customer_id) references customer(id),
foreign key(branchs_id) references branchs(id));
create table transactionss(trans_id int,trans_type varchar(20),from_account_id int,
to_account_id int,date_issued date,amount bigint,primary key(trans_id),
foreign key(from_account_id) references accounts(id),foreign key(to_account_id) references accounts(id));
drop table customer;

