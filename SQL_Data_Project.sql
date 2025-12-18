Create Database Mock_Test_Assignmnets

Create Table Users(
user_id INT,
username VARCHAR(50),
role VARCHAR(20),     -- admin, analyst, viewer
status VARCHAR(20),  -- active, inactive
)

Select * from Users

Create Table Datasets(
dataset_id INT,
dataset_name VARCHAR(100),
data_type VARCHAR(30),     -- confidential, public
status VARCHAR(20),        -- active, archived
created_date DATE
)

Select * from Datasets


Create Table user_accesss(
user_id INT,
dataset_id INT,
access_level VARCHAR(20)      -- read, write, admin
)

Select * from user_access

Create Table data_imports(
import_id INT,
dataset_id INT,
records_imported INT,
error_count INT,
import_date DATE
)

Select * from data_imports

Create Table Dataset_usage(
dataset_id INT,
last_accessed DATE
)

Select* from Dataset_usage


INSERT INTO users (user_id, username, role, status) VALUES
(1, 'junaid', 'admin', 'active'),
(2, 'ahmed', 'analyst', 'active'),
(3, 'sara', 'viewer', 'inactive'),
(4, 'fatima', 'analyst', 'active'),
(5, 'ali', 'viewer', 'inactive');


INSERT INTO datasets (dataset_id, dataset_name, data_type, status, created_date) VALUES
(101, 'Employee_Salary', 'confidential', 'active', '2023-01-10'),
(102, 'Customer_Data', 'confidential', 'active', '2021-05-15'),
(103, 'Sales_Report', 'public', 'active', '2024-03-20'),
(104, 'Marketing_Leads', 'public', 'archived', '2020-08-01'),
(105, 'HR_Records', 'confidential', 'active', '2022-11-05');


INSERT INTO user_access (user_id, dataset_id, access_level) VALUES
(1, 101, 'admin'),
(1, 102, 'admin'),
(2, 101, 'read'),
(2, 103, 'write'),
(3, 102, 'read'),
(4, 105, 'write'),
(5, 103, 'read');

Exec sp_rename 'user_accesss' , 'user_access';


INSERT INTO data_imports (import_id, dataset_id, records_imported, error_count, import_date) VALUES
(1001, 101, 1000, 20, '2024-01-05'),
(1002, 101, 1200, 80, '2024-06-10'),
(1003, 102, 800, 10, '2023-12-01'),
(1004, 103, 2000, 5, '2024-04-15'),
(1005, 105, 500, 40, '2023-09-20');


INSERT INTO dataset_usage (dataset_id, last_accessed) VALUES
(101, '2024-11-01'),
(102, '2022-10-15'),
(103, '2024-10-20'),
(104, '2021-01-01'),
(105, '2023-02-10');

--   Task 1: User & Role Risk Check 

--      a. List all inactive users who still have dataset access. 

Select u.user_id,u.username,u.status, ua.user_id,ua.access_level from users as u
join user_access as ua 
on u.user_id = ua.user_id
where u.status = 'Inactive';

--      b. Identify users with admin access to confidential datasets

Select d.dataset_id, d.data_type, d.dataset_name, ua.dataset_id, ua.access_level from Datasets as d
join user_access as ua
on d.dataset_id = ua.dataset_id
where d.data_type = 'confidential' 
and
ua.access_level = 'Admin';


