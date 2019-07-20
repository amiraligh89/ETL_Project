
DROP TABLE IF EXISTS NAICS_Info;
CREATE TABLE NAICS_Info (
  NAICS_Code VARCHAR(15) NOT NULL,
  Industry_Title VARCHAR(150) NOT NULL,
  Num_Businesses BIGINT  NOT NULL
);
COPY NAICS_Info(NAICS_Code,Industry_Title,Num_Businesses)
FROM 'C:\Users\laslo\OneDrive\Documents\Maria\ETL_Project\Load\naics.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM NAICS_Info lIMIT 30;

DROP TABLE IF EXISTS Employement;
CREATE TABLE Employement (
  NAICS_Code VARCHAR(15) NOT NULL,
  Year INT,
  Month VARCHAR(3),
  Num_Employees FLOAT
);
COPY Employement(NAICS_Code,Year,Month,Num_Employees)
FROM 'C:\Users\laslo\OneDrive\Documents\Maria\ETL_Project\Load\final_emp_data.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM Employement lIMIT 30;

DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales (
  NAICS_Code VARCHAR(15) NOT NULL,
  Year INT,
  Month VARCHAR(3),
  Total_Sales FLOAT
);
COPY Sales(NAICS_Code,Year,Month,Total_Sales)
FROM 'C:\Users\laslo\OneDrive\Documents\Maria\ETL_Project\Load\sales_data.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM Sales lIMIT 30;