# E-Commerce Analysis
### A data driven market expansion strategy

About the Dataset: The E-commerce analysis dataset captures all transactions for a UK-based, non-store online retailer from December 1, 2009, to December 9, 2011. Specializing in unique, all-occasion giftware, with many of its customers being wholesalers
Data source: UCI ML Repository
Business Problem: The company wants to increase the sales in the targeted region (USA and Australia)
Hypotheses: Considering the cultural similarities between the UK, USA, and Australia, we are confident that the top-performing products in the UK will also succeed in these target markets

## Project Overview
**Business Problem:** The company wants to increase the sales in the targeted region (USA and Australia)\
**Hypotheses:** Considering the cultural similarities between the UK, USA, and Australia, we are confident that the top-performing products in the UK will also succeed in these target markets

## Installation and Setup
### Codes and Resources Used
- Jupyter Notebook 7.2.0
- Python 3.11.7
### Python Packages Used
- General Purpose: `re`, `collections`
- Data Manipulation: `pandas` and `numpy`
- Data Visualization: `plotly`
- Other: `kaleido`

To install external libraries, first navigate to the `./project/` directory and activate `venv`
1. <pre>cd ./project</pre>
2. <pre>source venv/bin/activate</pre>
Use `pip` to install external libraries:
1. <pre>pip install notebook</pre>
2. <pre>pip install pandas</pre>
3. <pre>pip install plotly==5.22.0</pre>
5. <pre>pip install -U kaleido</pre>

## Data
### Source Data
The data for this project was sourced from the UCI Machine Learning Repository: [ics.uci.edu/dataset](https://archive.ics.uci.edu/dataset/502/online+retail+ii)\
By downloading the .zip file available from the above url you will receive 1 unique dataset in .xlsx format: `online_retail_II.xlsx`
### Data Preprocessing
**Step 1.** Create a notebook for cleaning the dataset.\
**Step 2.** Use `pd.read_csv` to create the dataframes.\
**Step 3.** Apply custom functions to trim all whitespace from column names and values, replace " " with "_" in column names and change all column names and string values to lowercase for ease of use.\
**Step 4.** Clean and format the data so it can be used for analysis. This involved handling missing values and modifying data types, adding new columns for calculated data and dropping unused columns to reduce the size of the dataset. Additionally, the thousands of unique products needed to be categorised for simplicity.\
**Step 4.** Exporting the clean data to the `data/clean` directory for analysis in MySQL.

## Code Structure
|---project\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---data\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---clean\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---customers.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---invoices.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---products.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---top_categories_by_avg_invoice_amount.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---top_categories_by_avg_line_price.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---top_countries_by_revenue.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---top_selling_categories_by_qty.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---top_selling_categories_by_revenue.csv\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---raw\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---online_retail_II.xlsx\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---images\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---notebooks\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---charts.ipynd\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---cleaning.py\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---pandas\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---requirements-dev.in\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---requirements-dev.txt\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---requirements.in\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---requirements.txt\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---slides\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|---venv\

## Results and Evaluation
![top_countries_by_revenue](https://github.com/aldillon88/ecommerce-analysis-with-sql/assets/169060819/a7b4dea9-9dbe-4380-8fbe-8ae98ce5edfd)
![top_categories_by_avg_line_price](https://github.com/aldillon88/ecommerce-analysis-with-sql/assets/169060819/b5572fd0-a494-4397-8b41-ceff4772f1d5)
![top_selling_categories_by_qty](https://github.com/aldillon88/ecommerce-analysis-with-sql/assets/169060819/77a04790-a2c4-47c5-a730-bd13c1069dac)
![top_selling_categories_by_revenue](https://github.com/aldillon88/ecommerce-analysis-with-sql/assets/169060819/a6758661-764d-4023-83fb-bfb5bcab7f44)


