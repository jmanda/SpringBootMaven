<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style="background-color:#E0FFFF;">
<form:form method="POST" action="/Api/addPage">
<table>
             <tr>                         
        <th width="50">Empid</th>
        <th width="50">Empname</th>
        <th width="50">Designation</th>        
        <th width="50">Project</th>
     
             </tr>
             
              <c:forEach items="${EmpList}" var="Emplo">
              <tr>
               <td><c:out value="${Emplo.empid}"/></td>
                <td><c:out value="${Emplo.empname}"/></td>
                 <td><c:out value="${Emplo.designation}"/></td>
                <td><c:out value="${Emplo.project}"/></td>
               </tr>
                </c:forEach>
           
</table>

     <input type="submit" value="Add Employee"/>
</form:form> 

</body>
</html>