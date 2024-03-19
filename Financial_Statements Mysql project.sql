SELECT * FROM project.financial_statements;

select * from financial_statements;


-- 1. show all company names 
select Company from financial_statements;
-- 2. show only the year, company name and category

select Company,Category from financial_statements;

-- 3. Number of companies
select count(*) from financial_statements;


-- 4. unique companies 
select distinct Company from financial_statements;


-- 5. number of unique companies
select count(distinct Company) from financial_statements;

-- 6. consider revenue with company
select Company,Revenue from financial_statements;

-- 7. show which companies above 200000 revenue
where Revenue > 200000;

-- 8. show the average revenue each company
select AVG(Revenue) from financial_statements;

-- 9. show company and ROA,ROE,ROI
select Company,ROA,ROE,ROI from financial_statements;

-- 10. Averages of ROA,ROE,ROI each company
select AVG(ROA),avg(ROI),AVG(ROE) from financial_statements;



-- 11. show the top 10 highest revenue companies
select Company,Revenue from financial_statements;
order by Revenue desc;
limit 10;

-- 12. show the least revenue 10 companies
select Company,Revenue from financial_statements;
order by Revenue;
limit 10;

-- 13. show the category types
select Category from financial_statements;
select distinct(Category) from financial_statements;
select count(distinct Category) from financial_statements;

-- 14. show who are all IT,Manager,Bank    like etc
select Company,Category from financial_statements;
where Category like '%IT%';

select Company,Category from financial_statements;
where Category like '%Bank%';

-- 15. show all category not equal to bank
select Company,Category from financial_statements;
where Category !='IT';

-- 16. show all Revenue between 200000 and 300000
select * from financial_statements;
where Revenue>=200000 and Revenue<=300000;

-- 17. show all comapny revenue less than 200000
-- or greater than 300000

select * from financial_statements;
where Revenue <200000 or Revenue >300000;

-- 18. show all companies revenue between 2L to 3L
-- and Category is IT

select * from financial_statements;

where Revenue between 200000 and 300000;
and Category like 'IT';


-- 19. show all companies Category and average of revennue 
-- at least 100000 and order them by the average Revenue in descending
--  order 

select Company, AVG(Revenue)  from financial_statements;
group by Company;
having avg(Revenue) >=100000;


-- 20. delete the column
select * from financial_statements;
alter table financial_statements;
drop column Category
select * from financial_statements;





