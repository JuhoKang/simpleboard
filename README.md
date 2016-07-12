<h1>Simple Seed Project For Spring MVC<h1>

You should add a properties file to config db connection. This project is configured with MySQL
create a file under src/main/resources/application.properties
ex)
jdbc.driverClassName = com.mysql.jdbc.Driver
jdbc.url = jdbc:mysql://localhost:3306/exerciseboard?userUnicode=yes&characterEncoding=UTF-8
jdbc.username = username
jdbc.password = password
hibernate.dialect = org.hibernate.dialect.MySQLDialect
hibernate.show_sql = true
hibernate.format_sql = true
hibernate.hmb2ddl.auto = create

Used Joda-Time not java 8 time because of some issues.
