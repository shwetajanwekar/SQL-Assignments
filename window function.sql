use b102;

select *,max( price_in_thousands)  over(partition by Manufacturer order by price_in_thousands desc) as price from Car_sales;
select * from student_score;
select *, max(score) over() as max_score ,min(score) over() asMin_score from student_score;
select *, min(score) over(partition by dep_name) as Min_score from student_score;
select *, sum(score) over(partition by dep_name) as total_score,
avg(score) over (partition by dep_name) as avg_score from student_score;
select *, row_number() over (partition by dep_name order by score asc) as row_num from student_score;
select * ,rank() over(partition by dep_name order by score desc) as rank_num from student_score;
select * ,dense_rank() over(partition by dep_name order by score desc) as denserank_num from student_score;
select * ,percent_rank() over( order by score asc) as percent_ran from student_score;
select * ,lag(score) over(partition by dep_name) as lag_score, lead(score) over(partition by dep_name) as lead_score from student_score;
select * , first_value(score) over() as first_val from student_score;
select * , last_value(score) over(partition by dep_name) as las_val from student_score;
select * , nth_value(score,2) over(partition by dep_name) as nth_val from student_score;