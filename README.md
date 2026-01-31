 Project: Mobile Price Analysis using MySQL & Python

1. Project Overview
This project demonstrates how SQL queries can be automated and executed using Python for data analysis.  
The dataset used is the Mobile Price Classification dataset, where mobile specifications are analyzed to understand their impact on different price ranges.
The focus of this project is **data extraction, automation, and analysis**, not machine learning.

2. Tools & Technologies
- MySQL
- Python
- Pandas
- Jupyter Notebook
- SQL

3. Dataset
- a) Train Dataset: 2000 records (includes price_range)
- b) Test Dataset: 1000 records (without price_range)

4. Dataset Source
Kaggle – Mobile Price Classification



5. Key SQL Analyses Performed
1. Total mobile records in train and test datasets  
2. Distribution of mobiles by price range  
3. Average RAM by price range  
4. Average battery power by price range  
5. Top 5 mobiles with highest RAM  
6. Average internal memory by price range  
7. Average screen resolution by price range  
8. High-RAM mobile count above overall average  
9. Long battery mobiles (battery power > 4000)  
10. Average mobile weight by price range  
11. Train vs Test dataset RAM comparison  

6. Automation with Python
-Established MySQL connection using `mysql. connector`
- Executed multiple SQL queries programmatically
- Stored query outputs into Pandas DataFrames
- Exported results automatically to: CSV files
- Excel file with multiple sheets
-- Visualized key insights using Python (matplotlib), including comparisons of RAM and battery power across price ranges

7. Key Insights
- Higher-priced mobiles generally have significantly higher RAM
- Battery power and screen resolution increase with price range
- Train and test datasets show consistent feature distributions

8. Project Structure
mobile-price-sql-python/
│
├── data/
│   ├── train.csv                # Training dataset with price_range
│   └── test.csv                 # Test dataset without price_range
│
├── sql/
│   └── analysis_queries.sql     # All analytical SQL queries
│
├── python/
│   └── run_sql_queries.ipynb    # Python notebook to execute SQL & export results
│
├── outputs/
│   ├── csv/                     # Query results exported as CSV files
│   └── excel/
│       └── mobile_sql_analysis.xlsx  # Excel file with multiple sheets
│
└── README.md                    # Project documentation
