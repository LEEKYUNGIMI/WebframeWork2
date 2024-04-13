<%--
  Created by IntelliJ IDEA.
  User: hansung
  Date: 2024-04-12
  Time: 오후 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Credit List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: blue;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h1>Credit List</h1>

<table>
    <tr>
        <th>년도</th>
        <th>학기</th>
        <th>취득학점</th>
        <th>상세보기</th>
    </tr>
    <c:forEach var="credit" items="${credits}">
        <tr>
            <td>${credit.year}</td>
            <td>${credit.semester}</td>
            <td>${credit.credit}</td>
            <td><a href="${pageContext.request.contextPath}/credit/details/${credit.year}/${credit.semester}">Details</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td><strong>총계</strong></td>
        <td></td>
        <td><strong>${totalCredit}</strong></td>
        <td></td>
    </tr>
</table>

</body>
</html>
