<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding Employee</title>
</head>
<body style="background-color:#E0FFFF;">
 <form:form action="/Api/addEmployee">
Empid<input type="text"  name="empid"/><br>
Empname<input type="text"  name="empname"/><br>
Designation<input type="text"  name="designation"/><br>
Project<input type="text"  name="project"/><br>
<input type="submit" value="add"/><br>
</form:form>
 </body>
</html> 