/*****************************************************************************************************************************
********************************************* STOCK MARKET ANALYSIS ASSIGNMENT***********************************************
******************************************************************************************************************************                                                                                          
********
******** Author: Chandan Singh(singh.chandan1809@gmail.com)  
********                                                                      
******** First Draft Date 24/04/2020                                                                                                                                             
******** Current Version: 1.0                                                                    
********                                 
******** Scope:  The DDLs and SQLs the creation of Objects and Analysis related to Stock Market Assignment                
********
********
******** History: 
********      24/04/2020 - chandan singh (u8048639) - 1.0 - First Draft                                   
********                                                                 
********                                                                        
********                                                                        
*****************************************************************************************************************************/


----------------------------------- CREATE DATABASE ASSIGNMENT ----------------------------

create database `Assignment`;

use `Assignment`;

----------------------------------- CREATE RAW TABLE BAJAJ AUTO  ----------------------------

create table `Bajaj Auto` 
( Date date
  , `Close Price` double
);


----------------------------------- CREATE RAW TABLE EICHER MOTORS  ----------------------------

create table `Eicher Motors`
( Date date
  , `Close Price` double
);


----------------------------------- CREATE RAW TABLE HERO MOTOCORP  ----------------------------

create table `Hero Motocorp` 
( Date date
  , `Close Price` double
);

----------------------------------- CREATE RAW TABLE INFOSYS  ----------------------------

create table `Infosys` 
( Date date
  , `Close Price` double
);

----------------------------------- CREATE RAW TABLE TCS  ----------------------------

create table `TCS` 
( Date date
  , `Close Price` double
);

----------------------------------- CREATE RAW TABLE TVS MOTORS  ----------------------------

create table `TVS Motors`
( Date date
  , `Close Price` double
);


----------------------------------- CREATE TABLE "bajaj1" ----------------------------

create table `bajaj1`
( Date date
  , `close_price` double
  , `20_day_ma` double
  , `50_day_ma` double
);


----------------------------------- CREATE TABLE "Eicher1" ----------------------------

create table `eicher1`
( Date date
  , `close_price` double
  , `20_day_ma` double
  , `50_day_ma` double
);


----------------------------------- CREATE TABLE "Hero1" ----------------------------

create table `hero1`
( Date date
  , `close_price` double
  , `20_day_ma` double
  , `50_day_ma` double
);


----------------------------------- CREATE TABLE "Infosys1" ----------------------------

create table `infosys1`
( Date date
  , `close_price` double
  , `20_day_ma` double
  , `50_day_ma` double
);


----------------------------------- CREATE TABLE "TCS1" ----------------------------

create table `TCS1`
( Date date
  , `close_price` double
  , `20_day_ma` double
  , `50_day_ma` double
);


----------------------------------- CREATE TABLE "TVS1" ----------------------------

create table `TVS1`
( Date date
  , `close_price` double
  , `20_day_ma` double
  , `50_day_ma` double
);


----------------------------------- CREATE TABLE "Stock_Master" ----------------------------


create table Stock_Master
(
 `Date` date
  , `Bajaj` double
  , `TCS` double
  , `TVS` double
  , `Infosys` double
  , `Eicher` double
  , `Hero` double
);


----------------------------------- CREATE TABLE "bajaj2" ----------------------------

create table `bajaj2`
( Date date
  , `close_price` double
  , `signal` varchar(4)
);

----------------------------------- CREATE TABLE "eicher2" ----------------------------

create table `eicher2`
( Date date
  , `close_price` double
  , `signal` varchar(4)
);

----------------------------------- CREATE TABLE "Hero2" ----------------------------

create table `hero2`
( Date date
  , `close_price` double
  , `signal` varchar(4)
);


----------------------------------- CREATE TABLE "Infosys2" ----------------------------

create table `infosys2`
( Date date
  , `close_price` double
  , `signal` varchar(4)
);



----------------------------------- CREATE TABLE "TCS2" ----------------------------

create table `TCS2`
( Date date
  , `close_price` double
  , `signal` varchar(4)
);



----------------------------------- CREATE TABLE "TVS2" ----------------------------

create table `TVS2`
( Date date
  , `close_price` double
  , `signal` varchar(4)
);


----------------------------------- POPULATE RAW TABLE TVS "Bajaj Auto" WITH THE CSV FILE "Bajaj Auto.csv" ----------------------------

-- Update the path of the file name, if the script is to be excuted in a different machine


SET GLOBAL local_infile = true;
-- local-infile=1;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bajaj Auto.csv'
IGNORE
INTO TABLE `Bajaj Auto`
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(@col1, @col2, @col3, @col4, @col5)
SET Date = STR_TO_DATE(@col1, '%d-%M-%Y')
, `Close Price` = @col5;

----------------------------------- POPULATE RAW TABLE TVS "Eicher Motors" WITH THE CSV FILE "Eicher Motors.csv" ----------------------------

-- Update the path of the file name, if the script is to be excuted in a different machine

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Eicher Motors.csv'
IGNORE
INTO TABLE `Eicher Motors`
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(@col1, @col2, @col3, @col4, @col5)
SET Date = STR_TO_DATE(@col1, '%d-%M-%Y')
, `Close Price` = @col5;



----------------------------------- POPULATE RAW TABLE TVS "Hero Motocorp" WITH THE CSV FILE "Hero Motocorp.csv" ----------------------------

-- Update the path of the file name, if the script is to be excuted in a different machine

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Hero Motocorp.csv'
IGNORE
INTO TABLE `Hero Motocorp`
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(@col1, @col2, @col3, @col4, @col5)
SET Date = STR_TO_DATE(@col1, '%d-%M-%Y')
, `Close Price` = @col5;


----------------------------------- POPULATE RAW TABLE TVS "Infosys" WITH THE CSV FILE "Infosys.csv" ----------------------------

-- Update the path of the file name, if the script is to be excuted in a different machine

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Infosys.csv'
IGNORE
INTO TABLE `Infosys`
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(@col1, @col2, @col3, @col4, @col5)
SET Date = STR_TO_DATE(@col1, '%d-%M-%Y')
, `Close Price` = @col5;


----------------------------------- POPULATE RAW TABLE TVS "TCS" WITH THE CSV FILE "TCS.csv" ----------------------------

-- Update the path of the file name, if the script is to be excuted in a different machine

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TCS.csv'
IGNORE
INTO TABLE `TCS`
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(@col1, @col2, @col3, @col4, @col5)
SET Date = STR_TO_DATE(@col1, '%d-%M-%Y')
, `Close Price` = @col5;


----------------------------------- POPULATE RAW TABLE TVS "TVS Motors" WITH THE CSV FILE "TVS Motors.csv" ----------------------------

-- Update the path of the file name, if the script is to be excuted in a different machine

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TVS Motors.csv'
IGNORE
INTO TABLE `TVS Motors`
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(@col1, @col2, @col3, @col4, @col5)
SET Date = STR_TO_DATE(@col1, '%d-%M-%Y')
, `Close Price` = @col5;



----------------------------------- Verify The Records Count In All The Six Tables  ----------------------------


select 'Bajaj Auto' as Table_name
       , count(*)
from `bajaj auto`
	union all
select 'Eicher Motors' as Table_name
       , count(*)
  from `eicher motors`
	union all
select 'Hero Motocorp' as Table_name
       , count(*)
from `hero motocorp`
	union all
select 'Infosys' as Table_name
       , count(*)
from `Infosys`
union all
 select 'TCS' as Table_name
       , count(*)
from `TCS`
union all
 select 'TVS Motors' as Table_name
       , count(*)
from `TVS motors`;


----------------------------- Populate The Table "bajaj1", After Calculating The 20 and 50 Days Moving Average, Using The Raw Table "Bajaj Auto" ------------------------------------------


insert into bajaj1
(
  Date
  , close_price
  , 20_day_ma
  , 50_day_ma
)
with
raw_data as 
		 (
			select date as stock_date
				   , `Close Price`
			from `Bajaj Auto`
			order by date
            ),
mov_avg as
			(
			 select stock_date
					, `Close Price` as close_price
					, round(avg(`Close Price`) over (order by stock_date rows 19 preceding),4) as mov_avg_20 -- Calculate 20 days moving average using window function
                    , round(avg(`Close Price`) over (order by stock_date rows 49 preceding),4) as mov_avg_50 -- Calculate 50 days moving average using window function
			from raw_data
            )
select * 
from mov_avg;



----------------------------- Populate The Table "Eicher1", After Calculating The 20 and 50 Days Moving Average, Using The Raw Table "Eicher Motors" ------------------------------------------


insert into eicher1
(
  Date
  , close_price
  , 20_day_ma
  , 50_day_ma
)
with
raw_data as 
		 (
			select date as stock_date
				   , `Close Price`
			from `Eicher Motors`
			order by date
            ),
mov_avg as
			(
			 select stock_date
					, `Close Price` as close_price
					, round(avg(`Close Price`) over (order by stock_date rows 19 preceding),4) as mov_avg_20  -- Calculate 20 days moving average using window function
                    , round(avg(`Close Price`) over (order by stock_date rows 49 preceding),4) as mov_avg_50  -- Calculate 50 days moving average using window function
			from raw_data
            )
select * 
from mov_avg;



----------------------------- Populate The Table "Hero1", After Calculating The 20 and 50 Days Moving Average, Using The Raw Table "Hero Motocorp" ------------------------------------------


insert into hero1
(
  Date
  , close_price
  , 20_day_ma
  , 50_day_ma
)
with
raw_data as 
		 (
			select date as stock_date
				   , `Close Price`
			from `Hero Motocorp`
			order by date
            ),
mov_avg as
			(
			 select stock_date
					, `Close Price` as close_price
					, round(avg(`Close Price`) over (order by stock_date rows 19 preceding),4) as mov_avg_20  -- Calculate 20 days moving average using window function
                    , round(avg(`Close Price`) over (order by stock_date rows 49 preceding),4) as mov_avg_50  -- Calculate 50 days moving average using window function
			from raw_data
            )
select * 
from mov_avg;



----------------------------- Populate The Table "Infosys1", After Calculating The 20 and 50 Days Moving Average, Using The Raw Table "Infosys" ------------------------------------------


insert into infosys1
(
  Date
  , close_price
  , 20_day_ma
  , 50_day_ma
)
with
raw_data as 
		 (
			select date as stock_date
				   , `Close Price`
			from `Infosys`
			order by date
            ),
mov_avg as
			(
			 select stock_date
					, `Close Price` as close_price
					, round(avg(`Close Price`) over (order by stock_date rows 19 preceding),4) as mov_avg_20  -- Calculate 20 days moving average using window function
                    , round(avg(`Close Price`) over (order by stock_date rows 49 preceding),4) as mov_avg_50  -- Calculate 50 days moving average using window function
			from raw_data
            )
select * 
from mov_avg;



----------------------------- Populate The Table "TCS1", After Calculating The 20 and 50 Days Moving Average, Using The Raw Table "TCS" ------------------------------------------


insert into TCS1
(
  Date
  , close_price
  , 20_day_ma
  , 50_day_ma
)
with
raw_data as 
		 (
			select date as stock_date
				   , `Close Price`
			from `TCS`
			order by date
            ),
mov_avg as
			(
			 select stock_date
					, `Close Price` as close_price
					, round(avg(`Close Price`) over (order by stock_date rows 19 preceding),4) as mov_avg_20  -- Calculate 20 days moving average using window function
                    , round(avg(`Close Price`) over (order by stock_date rows 49 preceding),4) as mov_avg_50  -- Calculate 50 days moving average using window function
			from raw_data
            )
select * 
from mov_avg;



----------------------------- Populate The Table "TVS1", After Calculating The 20 and 50 Days Moving Average, Using The Raw Table "TVS Motors" ------------------------------------------


insert into TVS1
(
  Date
  , close_price
  , 20_day_ma
  , 50_day_ma
)
with
raw_data as 
		 (
			select date as stock_date
				   , `Close Price`
			from `TVS Motors`
			order by date
            ),
mov_avg as
			(
			 select stock_date
					, `Close Price` as close_price
					, round(avg(`Close Price`) over (order by stock_date rows 19 preceding),4) as mov_avg_20  -- Calculate 20 days moving average using window function
                    , round(avg(`Close Price`) over (order by stock_date rows 49 preceding),4) as mov_avg_50  -- Calculate 50 days moving average using window function
			from raw_data
            )
select * 
from mov_avg;



----------------------------- Populate The Master Table "Stock_Master" With the "Close_Price" For All the Six Stocks ------------------------------------------

-- Use INNER join to join all the tables, as based on the analysis , all the six tables have same dates, hence, it is very unlikely to miss any records 

insert into stock_master
(
  date
  , bajaj
  , tcs
  , tvs
  , infosys
  , eicher
  , hero
)
select b.date
       , b.close_price as bajaj_close_price
       , t.close_price as tcs_close_price
       , tvs.close_price as tvs_close_price
       , i.close_price as infy_close_price
       , e.close_price as eicher_close_price
       , h.close_price as hero_close_price
from bajaj1 b
join tcs1 t
using(date)
join tvs1 tvs
using(date)
join infosys1 i
using(date)
join eicher1 e
using(date)
join hero1 h
using(date);



----------------------------- Populate The Table "bajaj2", after deriving the signal, based on 20 days and 50 days Moving Average ------------------------------------------

------------------------------------- Following Logic has been used to claculate the Buy/Sell signal ----------------------------------------------------------------------

-- When the shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY.
-- when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL.
-- When the signal is neither buy nor sell, it is classified as hold.


insert into bajaj2
with
stock_data as
			(
			select date
				   , close_price
				   , 20_day_ma
				   , 50_day_ma
				   , case
						when 20_day_ma > 50_day_ma -- If 20_day_ma > 50_day_ma, then set the curr_day_stat = 'Above, if it is less then set it as 'Below', else 'Equal'
							then
								 'Above'
						else
							case
								when 20_day_ma < 50_day_ma
									then
										'Below'
							else
								'Equal'
						 end
					end as curr_day_stat
					, row_number() over (order by date) as l_row
			from bajaj1
		 ) ,
stock_data_1 as 
				(
					select date
							, close_price
							, 20_day_ma
							 , 50_day_ma
							 , curr_day_stat
							 , next_day_stat
							 , case 
									when curr_day_stat <> next_day_stat -- Check, if there's cross over next day.
										then
											case
												when next_day_stat = 'Above' -- Check, if it is Golden Cross. If so, set the signal as 'Buy'
													then
														'Buy'
												else
													case
														when next_day_stat = 'Below' -- Else, check if it is Death Cross. If so, set the signal as 'Sell'
															then
																'Sell'
														else
															'Hold' 
													end
											end
										else
											'Hold' -- If there's no cross over, set the signal as 'Hold'.
								end as l_signal
					from
						(
						 select date
								 , close_price
								 , 20_day_ma
								 , 50_day_ma
								 , curr_day_stat
								, lead(curr_day_stat, 1) over (order by date) as next_day_stat -- use Lead to get the Next Day Stat
						from stock_data
						where l_row > 50 -- Take row number from 51 onwards
					)t
				)
select date
	, close_price
    , 'Hold' as l_signal -- For first 50 rows, set the signal as Hold
from stock_data
where l_row <= 50
	union
select date
	, close_price
    , l_signal
from stock_data_1;

commit;



----------------------------- Populate The Table "eicher2", after deriving the signal, based on 20 days and 50 days Moving Average ------------------------------------------

-- When the shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY.
-- when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL.
-- When the signal is neither buy nor sell, it is classified as hold.


insert into eicher2
with
stock_data as
			(
			select date
				   , close_price
				   , 20_day_ma
				   , 50_day_ma
				   , case
						when 20_day_ma > 50_day_ma -- If 20_day_ma > 50_day_ma, then set the curr_day_stat = 'Above, if it is less then set it as 'Below', else 'Equal'
							then
								 'Above'
						else
							case
								when 20_day_ma < 50_day_ma
									then
										'Below'
							else
								'Equal'
						 end
					end as curr_day_stat
					, row_number() over (order by date) as l_row
			from eicher1
		 ) ,
stock_data_1 as 
				(
					select date
							, close_price
							, 20_day_ma
							 , 50_day_ma
							 , curr_day_stat
							 , next_day_stat
							 , case 
									when curr_day_stat <> next_day_stat -- Check, if there's cross over next day.
										then
											case
												when next_day_stat = 'Above' -- Check, if it is Golden Cross. If so, set the signal as 'Buy'
													then
														'Buy'
												else
													case
														when next_day_stat = 'Below' -- Else, check if it is Death Cross. If so, set the signal as 'Sell'
															then
																'Sell'
														else
															'Hold' 
													end
											end
										else
											'Hold' -- If there's no cross over, set the signal as 'Hold'.
								end as l_signal
					from
						(
						 select date
								 , close_price
								 , 20_day_ma
								 , 50_day_ma
								 , curr_day_stat
								, lead(curr_day_stat, 1) over (order by date) as next_day_stat -- use Lead to get the Next Day Stat
						from stock_data
						where l_row > 50 -- Take row number from 51 onwards
					)t
				)
select date
	, close_price
    , 'Hold' as l_signal -- For first 50 rows, set the signal as Hold
from stock_data
where l_row <= 50
	union
select date
	, close_price
    , l_signal
from stock_data_1;

commit;

----------------------------- Populate The Table "hero2", after deriving the signal, based on 20 days and 50 days Moving Average ------------------------------------------

-- When the shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY.
-- when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL.
-- When the signal is neither buy nor sell, it is classified as hold.

insert into hero2
with
stock_data as
			(
			select date
				   , close_price
				   , 20_day_ma
				   , 50_day_ma
				   , case
						when 20_day_ma > 50_day_ma -- If 20_day_ma > 50_day_ma, then set the curr_day_stat = 'Above, if it is less then set it as 'Below', else 'Equal'
							then
								 'Above'
						else
							case
								when 20_day_ma < 50_day_ma
									then
										'Below'
							else
								'Equal'
						 end
					end as curr_day_stat
					, row_number() over (order by date) as l_row
			from hero1
		 ) ,
stock_data_1 as 
				(
					select date
							, close_price
							, 20_day_ma
							 , 50_day_ma
							 , curr_day_stat
							 , next_day_stat
							 , case 
									when curr_day_stat <> next_day_stat -- Check, if there's cross over next day.
										then
											case
												when next_day_stat = 'Above' -- Check, if it is Golden Cross. If so, set the signal as 'Buy'
													then
														'Buy'
												else
													case
														when next_day_stat = 'Below' -- Else, check if it is Death Cross. If so, set the signal as 'Sell'
															then
																'Sell'
														else
															'Hold' 
													end
											end
										else
											'Hold' -- If there's no cross over, set the signal as 'Hold'.
								end as l_signal
					from
						(
						 select date
								 , close_price
								 , 20_day_ma
								 , 50_day_ma
								 , curr_day_stat
								, lead(curr_day_stat, 1) over (order by date) as next_day_stat -- use Lead to get the Next Day Stat
						from stock_data
						where l_row > 50 -- Take row number from 51 onwards
					)t
				)
select date
	, close_price
    , 'Hold' as l_signal -- For first 50 rows, set the signal as Hold
from stock_data
where l_row <= 50
	union
select date
	, close_price
    , l_signal
from stock_data_1;


commit;



----------------------------- Populate The Table "infosys2", after deriving the signal, based on 20 days and 50 days Moving Average ------------------------------------------

-- When the shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY.
-- when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL.
-- When the signal is neither buy nor sell, it is classified as hold.


insert into infosys2
with
stock_data as
			(
			select date
				   , close_price
				   , 20_day_ma
				   , 50_day_ma
				   , case
						when 20_day_ma > 50_day_ma -- If 20_day_ma > 50_day_ma, then set the curr_day_stat = 'Above, if it is less then set it as 'Below', else 'Equal'
							then
								 'Above'
						else
							case
								when 20_day_ma < 50_day_ma
									then
										'Below'
							else
								'Equal'
						 end
					end as curr_day_stat
					, row_number() over (order by date) as l_row
			from Infosys1
		 ) ,
stock_data_1 as 
				(
					select date
							, close_price
							, 20_day_ma
							 , 50_day_ma
							 , curr_day_stat
							 , next_day_stat
							 , case 
									when curr_day_stat <> next_day_stat -- Check, if there's cross over next day.
										then
											case
												when next_day_stat = 'Above' -- Check, if it is Golden Cross. If so, set the signal as 'Buy'
													then
														'Buy'
												else
													case
														when next_day_stat = 'Below' -- Else, check if it is Death Cross. If so, set the signal as 'Sell'
															then
																'Sell'
														else
															'Hold' 
													end
											end
										else
											'Hold' -- If there's no cross over, set the signal as 'Hold'.
								end as l_signal
					from
						(
						 select date
								 , close_price
								 , 20_day_ma
								 , 50_day_ma
								 , curr_day_stat
								, lead(curr_day_stat, 1) over (order by date) as next_day_stat -- use Lead to get the Next Day Stat
						from stock_data
						where l_row > 50 -- Take row number from 51 onwards
					)t
				)
select date
	, close_price
    , 'Hold' as l_signal -- For first 50 rows, set the signal as Hold
from stock_data
where l_row <= 50
	union
select date
	, close_price
    , l_signal
from stock_data_1;

commit;



----------------------------- Populate The Table "TCS2", after deriving the signal, based on 20 days and 50 days Moving Average ------------------------------------------

-- When the shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY.
-- when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL.
-- When the signal is neither buy nor sell, it is classified as hold.

insert into TCS2
with
stock_data as
			(
			select date
				   , close_price
				   , 20_day_ma
				   , 50_day_ma
				   , case
						when 20_day_ma > 50_day_ma -- If 20_day_ma > 50_day_ma, then set the curr_day_stat = 'Above, if it is less then set it as 'Below', else 'Equal'
							then
								 'Above'
						else
							case
								when 20_day_ma < 50_day_ma
									then
										'Below'
							else
								'Equal'
						 end
					end as curr_day_stat
					, row_number() over (order by date) as l_row
			from TCS1
		 ) ,
stock_data_1 as 
				(
					select date
							, close_price
							, 20_day_ma
							 , 50_day_ma
							 , curr_day_stat
							 , next_day_stat
							 , case 
									when curr_day_stat <> next_day_stat -- Check, if there's cross over next day.
										then
											case
												when next_day_stat = 'Above' -- Check, if it is Golden Cross. If so, set the signal as 'Buy'
													then
														'Buy'
												else
													case
														when next_day_stat = 'Below' -- Else, check if it is Death Cross. If so, set the signal as 'Sell'
															then
																'Sell'
														else
															'Hold' 
													end
											end
										else
											'Hold' -- If there's no cross over, set the signal as 'Hold'.
								end as l_signal
					from
						(
						 select date
								 , close_price
								 , 20_day_ma
								 , 50_day_ma
								 , curr_day_stat
								, lead(curr_day_stat, 1) over (order by date) as next_day_stat -- use Lead to get the Next Day Stat
						from stock_data
						where l_row > 50 -- Take row number from 51 onwards
					)t
				)
select date
	, close_price
    , 'Hold' as l_signal -- For first 50 rows, set the signal as Hold
from stock_data
where l_row <= 50
	union
select date
	, close_price
    , l_signal
from stock_data_1;


commit;



----------------------------- Populate The Table "TVS2", after deriving the signal, based on 20 days and 50 days Moving Average ------------------------------------------

-- When the shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY.
-- when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL.
-- When the signal is neither buy nor sell, it is classified as hold.

insert into TVS2
with
stock_data as
			(
			select date
				   , close_price
				   , 20_day_ma
				   , 50_day_ma
				   , case
						when 20_day_ma > 50_day_ma -- If 20_day_ma > 50_day_ma, then set the curr_day_stat = 'Above, if it is less then set it as 'Below', else 'Equal'
							then
								 'Above'
						else
							case
								when 20_day_ma < 50_day_ma
									then
										'Below'
							else
								'Equal'
						 end
					end as curr_day_stat
					, row_number() over (order by date) as l_row
			from TVS1
		 ) ,
stock_data_1 as 
				(
					select date
							, close_price
							, 20_day_ma
							 , 50_day_ma
							 , curr_day_stat
							 , next_day_stat
							 , case 
									when curr_day_stat <> next_day_stat -- Check, if there's cross over next day.
										then
											case
												when next_day_stat = 'Above' -- Check, if it is Golden Cross. If so, set the signal as 'Buy'
													then
														'Buy'
												else
													case
														when next_day_stat = 'Below' -- Else, check if it is Death Cross. If so, set the signal as 'Sell'
															then
																'Sell'
														else
															'Hold' 
													end
											end
										else
											'Hold' -- If there's no cross over, set the signal as 'Hold'.
								end as l_signal
					from
						(
						 select date
								 , close_price
								 , 20_day_ma
								 , 50_day_ma
								 , curr_day_stat
								, lead(curr_day_stat, 1) over (order by date) as next_day_stat -- use Lead to get the Next Day Stat
						from stock_data
						where l_row > 50 -- Take row number from 51 onwards
					)t
				)
select date
	, close_price
    , 'Hold' as l_signal -- For first 50 rows, set the signal as Hold
from stock_data
where l_row <= 50
	union
select date
	, close_price
    , l_signal
from stock_data_1;


commit;


----------------------------- Create a User defined function "GetSignal", that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.-----------------------------------

-- Note => Date should be input in the format 'YYYY-MM-DD'.


delimiter //

create function getSignal(ldate date) returns varchar(5) deterministic
begin
	declare lsignal varchar(5);
	select `signal`
		into lsignal
	from bajaj2 where date = ldate;
	return lsignal;
end

//
delimiter ;

-- -------------- Example ---------------------------

select getSignal('2015-12-22') as SignalForDay; -- "Sell"
