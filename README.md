# The Playground

What is it?
- java web application
- place where I implement things I'm currently learning
- Java 8
- Spring framework (xml configuration, annotations, autowiring, data validation, aop aspects) 
- MVC architectural pattern
- mySQL database
- hibernate framework (object-relational mapping, sql queries, data access objects)
- views done with html, css and bootstrap
- maven for dependencies
- aop logging made with aspectJ (@Before and @AfterReturning advices used)
- spring security used for authorization and role based content
- passwords encrypted with bcrypt and stored in database


Effects can be checked on heroku: http://vnskln-myapp-v1.herokuapp.com/ 

Implemented functions:
- database connection test (first steps in hibernate) - crud operations performed on "people" table in myApp database
- user form with custom validation rules and database table view
- employee list from database with crud features (add, update, delete), validation and search option
- aop logging for information about used methods, with parameters and results
- spring security with many users, different views based on user, passwords stored in database

Plans for future:
- more complicated database for employee list (using many tables, one-to-many and many-to-many mappings, sql join command)
- adding REST API
