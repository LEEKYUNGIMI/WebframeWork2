<%--
  Created by IntelliJ IDEA.
  User: nykim
  Date: 2022/12/13
  Time: 12:55 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Main Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding-top: 200px;
    }
    nav {
      background-color: #333;
      overflow: hidden;
      text-align: center;
      height: 300px;
      display: flex; /* 수직 중앙 정렬을 위해 flexbox 사용 */
      align-items: center; /* 수직 정렬 */
      justify-content: center; /* 수평 정렬 */
    }
    nav a {
      display: block;
      color: white;
      text-align: center;
      padding: 20px 30px;
      font-size: 20px;
      text-decoration: none;

    }
    nav a:hover {
      background-color: #ddd;
      color: black;
    }
    main {
      text-align: center;
      padding: 20px;
    }

  </style>
</head>
<body>

<nav>
  <a href="${pageContext.request.contextPath}/credit">학년별 이수 학점 조회</a>
  <a href="${pageContext.request.contextPath}/registration">수강 신청 하기</a>
  <a href="${pageContext.request.contextPath}/showRegistration">수강 신청 조회</a>
</nav>

<main>
  <br>
  <h1>학사 정보 시스템 Main Page</h1>
  <p>학사 정보 시스템 Main Page 입니다. 메뉴를 클릭해 이용하세요 .</p>
  <br>
  <p>2191300 이경미</p>
</main>

</body>
</html>
