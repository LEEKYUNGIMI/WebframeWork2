<%--
  Created by IntelliJ IDEA.
  User: hansung
  Date: 2024-04-13
  Time: 오후 5:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Show Registration</title>
    <style>
        h1 {
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2>2024년도 2학기 수강 신청 목록</h2>
<table border="1">
    <thead>
    <tr>
        <th>년도</th>
        <th>학기</th>
        <th>교과목명</th>
        <th>교과구분</th>
        <th>담당교수</th>
        <th>학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses}">
        <tr>
            <td>${course.year}</td>
            <td>${course.semester}</td>
            <td>${course.course_name}</td>
            <td>${course.course_type}</td>
            <td>${course.instructor}</td>
            <td>${course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

