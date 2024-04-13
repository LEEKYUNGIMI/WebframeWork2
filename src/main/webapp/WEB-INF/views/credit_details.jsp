<%--
  Created by IntelliJ IDEA.
  User: hansung
  Date: 2024-04-13
  Time: 오전 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>학점 세부 정보</title>
    <style>
        h1 {
            text-align: center;
        }

        .table-container {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 800px;
            margin-top: 20px;
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
<h1>학점 세부 정보</h1>
<div class="table-container">
    <table border="1">
        <tr>
            <th>년도</th>
            <th>학기</th>
            <th>교과목명</th>
            <th>교과구분</th>
            <th>담당교수</th>
            <th>학점</th>
        </tr>
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
    </table>
</div>
</body>
</html>
