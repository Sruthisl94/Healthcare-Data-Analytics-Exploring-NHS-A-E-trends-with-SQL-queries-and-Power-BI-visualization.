# Healthcare-Data-Analytics-Exploring-NHS-A-E-trends-with-SQL-queries-and-Power-BI-visualization.
## Objective:<br>
This project aims to analyze NHS A&E (Accident and Emergency) data from 2018 to 2025 to identify the trends in the A&E admission, examining the underperforming hospitals fail to meet the taget 4 hour wait time and to understand the increasing demmand of emrgency serivices through key techniques of data analysis.<br>

### Dataset <br>
The data used in this project was sourced from the official NHS England statistics on A&E waiting times and activity. This dataset provides monthly and weekly figures, including details such as total attendances, waiting times under and over 4 hours, emergency admissions, Number of patients spending greater than 4hour or 12 hour from from descision to admission.<br>
📎[NHS A&e Monthly Dataset](https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/) <br>

## Tools:<br>
•	Python– To organize the collected data and connect it to SQL.<br>
•	 SQL (MySQL) – For querying, cleaning, and aggregating hospital-level data. <br>
•	Power BI – For building dynamic visualizations, KPIs, and dashboards.<br>
•	Excel – For initial formatting and structural adjustments.<br>
•	 GitHub – To share and track progress. <br>

## Data Preparation and SQL Analysis<br>
### Step 1: Data Cleaning<br>
•	Removed footnotes, merged cells, and empty rows, and null values<br>
•	Standardized column names and date formats<br>
•	Converted percentage values from string to decimal<br>
•	Resolved data type mismatches (e.g., double → int/float)<br>

### Step 2: Complex Queries: For extracting the insights from the data <br>
? Top 10 providers with highest total attendances over time <br>
? Identify the worst month where >12 hr wait has highest per hospital<br>
? Which hospital consistently failed to meet the 95% 4 hr target?<br>

📈 These queries helped extract actionable insights from a large and complex dataset.<br>

## Integration with Power BI<br>
To effectively communicate the insights derived from SQL, the query outputs were directly integrated with Power BI. This allowed for:<br>
•	Real-time visualizations based on SQL data<br>
•	Interactive dashboards with filters and slicers<br>
•	Seamless updates and consistent data flow between SQL and Power BI<br>
The combination of SQL and Power BI made it possible to both understand and present the story behind the numbers in a compelling and intuitive format.<br>

To bring the numbers to life, I designed an interactive dashboard featuring:<br>
### Key Visuals:
•	KPI Card showing % of patients seen within 4 hours<br>
•	Line Chart for trend analysis of percentage of attendance within 4 hours  over time<br>
•	 Stacked Column Charts comparing:<br>
         * Total attendances<br>
         * Patients seen in under vs. over 4 hours<br>
•	Bar Chart of Top 5 hospitals with the most A&E visits<br>
•	Slicers for filtering by month and provider<br>

### Power BI Dashboard

![NHS A&E Data Aanalysis Dashboard](NHS_Healthcare_dashboard.png)

## Insights & Observations<br>
   • The 4-hour target has been consistently missed by many providers since 2019.<br>
   • There is a steady increase in the number of patients waiting more than 4 and 12 hours, particularly noticeable during 2019–2020.<br>
    The performance dips correlate closely with COVID-19 peaks and peak demand periods.<br>
   • At the national level, the 95% standard has not been met on an annual basis since 2018, although it has been achieved in certain individual months by certain providers.<br>
   • Although the number of patients facing long waits has recently decreased, the overall average still remains below the 95% target, highlighting continued challenges in consistently <br>
     meeting the standard.<br>
   • There has been an increase in A&E attendance, reflecting growing demand on emergency services. <br>


