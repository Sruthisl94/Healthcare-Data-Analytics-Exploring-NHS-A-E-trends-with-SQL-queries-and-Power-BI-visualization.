use NHS_Analysis;
show tables;
drop table nhs_ae_monthly_data2018_2025;
describe nhs_ae_monthly_data2018_2025;

select * from nhs_ae_monthly_data2018_2025 limit 10;
select count(*) from nhs_ae_monthly_data2018_2025;
select distinct month_year from nhs_ae_monthly_data2018_2025 order by month_year;
#Data cleaning steps
alter table nhs_ae_monthly_data2018_2025 modify month_year date;
# checking null values in each column
select count(*) as total_rows,
sum(code is null) as code_null,
sum(region is null) as region_null,
sum(name is null) as Name_null,
sum(type1_AE_att is null) as type1_AE_att_null,
sum(type2_AE_att  is null) as type2_AE_att_null,
sum(type3_AE_att  is null) as type3_AE_att_null,
sum(type3_AE_att  is null) as type3_AE_att_null,
sum(type1_lessthan_4hrs  is null) as total_AE_att_null,
sum(type1_lessthan_4hrs is null) as type1_lessthan_4hrs_null,
sum(type2_lessthan_4hrs  is null) as type2lessthan_4hrs_null,
sum(type3_lessthan_4hrs  is null) as type3_lessthan_4hrs_null,
sum(total_lessthan_4hrs  is null) as total_lessthan_4hrs_null,
sum(type1_over4hrs  is null) as type1_over4hrs_null,
sum(type2_over4hrs  is null) as type1_over4hrs_null,
sum(type3_over4hrs  is null) astype3_over4hrss_null,
sum(total_over4hrs is null) astotal_over4hrs_null,
sum(All_4hrs_percent  is null) as All_4hrs_percent_null,
sum(type1_4hrs_percent  is null) as type1_4hrs_percent_null,
sum(type2_4hrs_percent is null) as type2_4hrs_percent_null,
sum(type3_4hrs_percent is null) as type3_4hrs_percent_null,
sum(type1_AE_emer_ad  is null) as type1_AE_emer_ad_null,
sum(type2_AE_emer_ad  is null) as type2_AE_emer_ad,
sum(type_AE_emer_ad is null) as type_AE_emer_ad_null,
sum(total_AE_emer_ad  is null) as total_AE_emer_ad_null,
sum(other_emer_ad  is null) as other_emer_ad_null,
sum(total_emer_ad  is null) as total_emer_ad_null,
sum(No_of_patients_greater_4hr is null) as No_of_patients_greater_4hr_null,
sum(No_of_patients_greater_12hr is null) as No_of_patients_greater_12hr_null,
sum(month_year  is null) as month_year_null
from nhs_ae_monthly_data2018_2025;


SELECT * FROM nhs_ae_monthly_data2018_2025
WHERE region IS NULL AND name IS NULL AND type1_AE_att IS NULL;
SET SQL_SAFE_UPDATES = 0;
delete from nhs_ae_monthly_data2018_2025
where (type1_AE_att is null) and
(type2_AE_att  is null) and
(type3_AE_att  is null) and
(type1_lessthan_4hrs  is null) and
(type1_lessthan_4hrs is null) and
(type2_lessthan_4hrs  is null) and
(total_lessthan_4hrs  is null) and
(type1_over4hrs  is null) and
(type3_over4hrs  is null) and
(total_over4hrs is null) and
(All_4hrs_percent  is null) and
(type1_4hrs_percent  is null) and
(type2_4hrs_percent is null) and
(type3_4hrs_percent is null) and
(type1_AE_emer_ad  is null) and
(type2_AE_emer_ad  is null) and
(type_AE_emer_ad is null) and
(total_AE_emer_ad  is null) and
(other_emer_ad  is null) and
(total_emer_ad  is null) and
(No_of_patients_greater_4hr is null) and
(No_of_patients_greater_12hr is null);
SET SQL_SAFE_UPDATES = 1;
alter table nhs_ae_monthly_data2018_2025
modify column type1_AE_att int;
alter table nhs_ae_monthly_data2018_2025 
modify column type2_AE_att int;
alter table nhs_ae_monthly_data2018_2025 
modify column type3_AE_att int;
alter table nhs_ae_monthly_data2018_2025 
modify column total_AE_att int;
alter table nhs_ae_monthly_data2018_2025 
 modify column type1_lessthan_4hrs int;
alter table nhs_ae_monthly_data2018_2025 
  modify column type1_lessthan_4hrs int;
alter table nhs_ae_monthly_data2018_2025 
 modify column type2_lessthan_4hrs  int;
 alter table nhs_ae_monthly_data2018_2025 
 modify column type3_lessthan_4hrs  int;
 alter table nhs_ae_monthly_data2018_2025 
 modify column total_lessthan_4hrs int;
 alter table nhs_ae_monthly_data2018_2025 
modify column type1_over4hrs int;
 alter table nhs_ae_monthly_data2018_2025 
modify column type2_over4hrs int;
 alter table nhs_ae_monthly_data2018_2025  
 modify column  type3_over4hrs int;
  alter table nhs_ae_monthly_data2018_2025  
 modify column total_over4hrs int;

  alter table nhs_ae_monthly_data2018_2025  
 modify column type1_AE_emer_ad  int;
  alter table nhs_ae_monthly_data2018_2025  
 modify column type2_AE_emer_ad  int;
 alter table nhs_ae_monthly_data2018_2025  
 modify column type_AE_emer_ad int;
  alter table nhs_ae_monthly_data2018_2025  
 modify column total_AE_emer_ad int;
  alter table nhs_ae_monthly_data2018_2025  
 modify column other_emer_ad int;
 alter table nhs_ae_monthly_data2018_2025  
 modify column total_emer_ad int;
alter table nhs_ae_monthly_data2018_2025  
 modify column No_of_patients_greater_4hr int;
alter table nhs_ae_monthly_data2018_2025  
 modify column No_of_patients_greater_12hr int;

#Top 10 providers with highest total attendaces over time 
select code, name, sum(total_AE_att) as Total_att
from nhs_ae_monthly_data2018_2025
group by code,name
order by Total_att desc
limit 10;

#Identify the worst month where >12 hr wait has highest per hospital
select d.name,d.region,d.month_year,d.No_of_patients_greater_12hr 
from nhs_ae_monthly_data2018_2025 d
join (
select name, max(No_of_patients_greater_12hr) as Max_patients_12hr_wait
from nhs_ae_monthly_data2018_2025 
group by name) max_table
on d.name=max_table.name and d.No_of_patients_greater_12hr=max_table.Max_patients_12hr_wait
order by d.No_of_patients_greater_12hr desc;
#Which hospital consistently failed to meet the 95% 4 hr target?
select name, count(*) as months_below_target, ROUND(AVG(All_4hrs_percent), 2) AS avg_percent_4hr,Year(STR_TO_DATE(month_year, '%Y-%m-%d')) AS report_year
from nhs_ae_monthly_data2018_2025 
where All_4hrs_percent<0.95
group by name,YEAR(STR_TO_DATE(month_year, '%Y-%m-%d'))
ORDER BY report_year, months_below_target DESC;
