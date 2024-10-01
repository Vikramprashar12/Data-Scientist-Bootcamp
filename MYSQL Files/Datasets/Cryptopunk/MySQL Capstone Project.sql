use nftdata;
select * from pricedata;

/*************************************************************************************/
-- 1. How many sales occurred during this time period?*/
select count(*) from pricedata;

-- There have been 19920 sales in this time period.

/*************************************************************************************/
-- 2. Return the top 5 most expensive transactions (by USD price) for this data set. Return the name, ETH price, and USD price, as well as the date.
select name, eth_price, usd_price, event_date from pricedata order by usd_price desc limit 5;

/*************************************************************************************/
-- 3. Return a table with a row for each transaction with an event column, a USD price column, and a moving average of USD price that averages the last 50 transactions.
select event_date, usd_price, AVG(usd_price) OVER(rows between 50 preceding and current row) as movAvg_last50 from pricedata;

/*************************************************************************************/
-- 4. Return all the NFT names and their average sale price in USD. Sort descending. Name the average column as average_price.
select name, avg(usd_price) as average_price from pricedata group by name order by average_price desc;

/*************************************************************************************/
-- 5. Return each day of the week and the number of sales that occurred on that day of the week, as well as the average price in ETH. Order by the count of transactions in ascending order.
