-- Q1 Display all columns for all transactions. Expected output: All columns
SELECT * FROM `bright-learning-projects.Retail_sales.Data` LIMIT 1000;

-- Q2 Display only the Transaction ID, Date, and Customer ID for all records. Expected output: Transaction ID, Date, Customer ID 
SELECT 
      `Transaction ID`,
      Date,
      `Customer ID`
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q3 Display all the distinct product categories in the dataset. Expected output: Product Category 
SELECT 
      DISTINCT `Product Category`
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q4 Display all the distinct gender values in the dataset. Expected output: Gender 
SELECT 
      DISTINCT gender
FROM `bright-learning-projects.Retail_sales.Data`;
    
-- Q5. Display all transactions where the Age is greater than 40. Expected output: All columns 
SELECT *
FROM `bright-learning-projects.Retail_sales.Data`
WHERE Age > 40;

-- Q6. Display all transactions where the Price per Unit is between 100 and 500. Expected output: All columns 
SELECT *
FROM `bright-learning-projects.Retail_sales.Data`
WHERE `Price per Unit` BETWEEN 100 AND 500; 

-- Q7. Display all transactions where the Product Category is either 'Beauty' or 'Electronics'. Expected output: All columns 
SELECT *
FROM `bright-learning-projects.Retail_sales.Data`
WHERE `Product Category` IN ('Beauty', 'Electronics');

-- Q8. Display all transactions where the Product Category is not 'Clothing'. Expected output: All columns 
SELECT *
FROM `bright-learning-projects.Retail_sales.Data`
WHERE `Product Category` NOT IN ('Clothing');

-- Q9. Display all transactions where the Quantity is greater than or equal to 3. Expected output: All columns 
SELECT *
FROM `bright-learning-projects.Retail_sales.Data`
WHERE Quantity >= 3;

-- Q10. Count the total number of transactions. Expected output: Total_Transactions 
SELECT 
    COUNT(*) AS Total_Transactions
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q11. Find the average Age of customers. Expected output: Average_Age 
SELECT 
    AVG(Age) AS Average_Age
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q12. Find the total quantity of products sold. Expected output: Total_Quantity 
SELECT 
    SUM(Quantity) AS Total_Quantity
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q13. Find the maximum Total Amount spent in a single transaction. Expected output: Max_Total_Amount 
SELECT 
    MAX(`Total Amount`) AS Max_Total_Amount
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q14. Find the maximum Total Amount spent in a single transaction. Expected output: Max_Total_Amount  
SELECT 
    MIN(`Price per Unit`) AS Min_Price_per_Unit
FROM `bright-learning-projects.Retail_sales.Data`;

-- Q15. Find the number of transactions per Product Category. Expected output: Product Category, Transaction_Count 
SELECT 
    `Product Category`,
    COUNT(*) AS Transaction_Count
FROM `bright-learning-projects.Retail_sales.Data`
GROUP BY `Product Category`;

-- Q16. Find the total revenue (Total Amount) per gender. Expected output: Gender, Total_Revenue 
SELECT 
    Gender,
    SUM(`Total Amount`) AS Total_Revenue
FROM `bright-learning-projects.Retail_sales.Data`
GROUP BY Gender;

-- Q17. Find the average Price per Unit per product category. Expected output: Product Category, Average_Price 
SELECT 
    `Product Category`,
    AVG(`Price per Unit`) AS Average_Price
FROM `bright-learning-projects.Retail_sales.Data`
GROUP BY `Product Category`;

-- Q18. Find the total revenue per product category where total revenue is greater than 10,000. Expected output: Product Category, Total_Revenue
SELECT 
   `Product Category`,
    SUM(`Total Amount`) AS Total_Revenue
FROM `bright-learning-projects.Retail_sales.Data`
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) > 10000;

-- Q19. Find the average quantity per product category where the average is more than 2. Expected output: Product Category, Average_Quantity
SELECT 
    `Product Category`,
    AVG(Quantity) AS Average_Quantity
FROM `bright-learning-projects.Retail_sales.Data`
GROUP BY `Product Category`
HAVING AVG(Quantity) > 2;

-- Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000, otherwise 'Low'. Expected output: Transaction ID, Total Amount, Spending_Level 
SELECT 
    `Transaction ID`,
    `Total Amount`,
    CASE 
        WHEN `Total Amount` > 1000 THEN 'High'
        ELSE 'Low'
    END AS Spending_Level
FROM `bright-learning-projects.Retail_sales.Data`;


-- Q21. Display a new column called Age_Group that labels customers as: • 'Youth' if Age < 30 • 'Adult' if Age is between 30 and 59 • 'Senior' if Age >= 60 Expected output: Customer ID, Age, Age_Group 
SELECT 
    `Customer ID`,
    Age,
    CASE 
        WHEN Age < 30 THEN 'Youth'
        WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Group
FROM `bright-learning-projects.Retail_sales.Data`;

