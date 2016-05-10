<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>main page</title>
</head>

<body  style="background-color:#E0FFFF;">
<form:form action="/Api/getDetails" method="post">
<table align="center">
<tr>
<td><h1> WELCOME</h1></td></tr>
<tr>
<td>Project Name</td>
<td><select name="projectName">
	<option>EMS</option>
	<option>JLO</option>
	<option>CCLO-2016</option>
	</select>
	</td>
	</tr>
	<tr>
<td> <input type="submit" value="get"> </td></tr>
	</table>
<br>
</form:form>
</body>
</html>