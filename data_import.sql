create table cc_detail(
Client_Num	INT,
Card_Category	VARCHAR(20),
Annual_Fees	INT,
Activation_30_Days	INT,
Customer_Acq_Cost	INT,
Week_Start_Date	DATE,
Week_Num	VARCHAR(20),
Qtr	VARCHAR(20),
current_year INT,
Credit_Limit	DECIMAL(10,2),
Total_Revolving_Bal	INT,
Total_Trans_Amt	INT,
Total_Trans_ct	INT,
Avg_Utilization_Ratio	DECIMAL(10,3),
Use_Chip	VARCHAR(20),
Exp_Type	VARCHAR(20),
Interest_Earned	DECIMAL(10,3),
Delinquent_Acc	VARCHAR(5)
);


CREATE table customer_detail(
Client_Num	INT,
Customer_Age	INT,
Gender	VARCHAR(5),
Dependent_Count	INT,
Education_Level	VARCHAR(50),
Marital_Status	VARCHAR(20),
state_cd	VARCHAR(50),
Zipcode	VARCHAR(20),
Car_Owner	VARCHAR(5),
House_Owner	VARCHAR(5),
Personal_loan	VARCHAR(5),
contact	VARCHAR(50),
Customer_Job	VARCHAR(50),
Income	INT,
Cust_Satisfaction_Score	INT
);


select * from cc_detail;
select * from customer_detail;

-- data import

copy cc_detail 
from 'D:\credit_card.csv'
delimiter ','
csv header;

copy customer_detail
from 'D:\customer.csv'
delimiter ','
csv header;

-- adding new data in the same table from a diff csv file
-- only change the file name , table will be same

copy cc_detail     -- table name
from 'D:\cc_add.csv'     -- new file name
delimiter ','
csv header;


copy customer_detail     -- table name
from 'D:\cust_add.csv'     -- new file name
delimiter ','
csv header;

select * from cc_detail;
select * from customer_detail;
