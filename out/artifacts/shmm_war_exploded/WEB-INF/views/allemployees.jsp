<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/4 0004
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>University Enrollments</title>

    <style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>

</head>


<body>
<h2>List of Employees</h2>
<table>
    <tr>
        <td>NAME</td><td>Joining Date</td><td>Salary</td><td>SSN</td><td></td>
    </tr>
    <c:forEach items="${employees }" var="employee">
        <tr>
            <td>${employee.name }</td>
            <td>${employee.joiningDate }</td>
            <td>${employee.salary }</td>
            <td><a href="<c:url value='/edit-${employee.ssn }-employee' />">${employee.ssn }</a></td>
            <td><a href="<c:url value='/delete-${employee.ssn }-employee' />">delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a href="<c:url value='/new' />">Add New Employee</a>
</body>
</html>