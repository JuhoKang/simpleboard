Simple Seed Project For Spring MVC
==================================

You should add a properties file to config db connection.  
This project is configured to work with MySQL.  
Create a file under src/main/resources/application.properties

ex)  

    jdbc.driverClassName = com.mysql.jdbc.Driver
    jdbc.url = jdbc:mysql://localhost:3306/exerciseboard?userUnicode=yes&characterEncoding=UTF-8
    jdbc.username = username
    jdbc.password = password
    hibernate.dialect = org.hibernate.dialect.MySQLDialect
    hibernate.show_sql = true
    hibernate.format_sql = true
    hibernate.hmb2ddl.auto = create

Notice
-------
* Used Joda-Time not java8 time because of some issues.
* No license for now. I am not aware of the policies.

Technologies
----------
* Spring MVC, JPA, Security etc...
* Hibernate + MySQL
* Materialize
* JQuery
* Joda-Time, Jackson etc ...
