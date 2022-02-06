# Car rental database

Databases - winter semester 2021/2022

## Business assumptions

Creation of a relational database for a rental company passenger cars

- Allowing statistics on cars, branches and customers to be kept
- Possibility of developing the database in the future (along with the company's development) without the need for it
remodeling

## Logical Model

![image](https://user-images.githubusercontent.com/67923777/152677316-ad3725e0-e183-42ae-8994-6dc40054fd74.png)

## Relational Model

![image](https://user-images.githubusercontent.com/67923777/152677327-ccfd0570-157e-4eb7-985d-bc9476db8598.png)

## Database installation

The database is created in the file in steps:

1) We execute the query "init.sql" attached to the report to create the structure tables
2) We execute the "data.sql" query attached to the report in order to fill in the database test lines
3) We execute "view.sql" query to create perspectives
4) We make the query contained in the "check.sql" file and check if it coincides with:
![image](https://user-images.githubusercontent.com/67923777/152677332-3df74539-9c92-45ef-b448-00732198b4ab.png)
5) In order to remove the database, we can use the query contained in the file "cleanup.sql"
6) Examples of queries can be found in the file "queries.sql"
