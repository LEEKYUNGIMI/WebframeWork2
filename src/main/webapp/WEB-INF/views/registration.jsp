<%--
  Created by IntelliJ IDEA.
  User: hansung
  Date: 2024-04-13
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>제안 등록</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
    <style>
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .formtable {
            width: 400px; /* 폼의 너비 조정 */
        }
        /* 나머지 CSS 스타일링은 main.css 파일을 참조합니다. */
    </style>
</head>
<body>
<div class="form-container">
    <sf:form method="post" action="${pageContext.request.contextPath}/registration" modelAttribute="credit">
        <table class="formtable">
            <tr>
                <td class="label"> 교과코드:</td>
                <td><sf:input class="control" type="text" path="course_code"/>  <br/>
                    <sf:errors path="course_code" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label"> 년도:</td>
                <td><sf:input class="control" type="text" path="year"/>  <br/>
                    <sf:errors path="year" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label"> 학기:</td>
                <td><sf:input class="control" type="text" path="semester"/> <br/>
                    <sf:errors path="semester" class="error" />
                </td>
            </tr>
            <tr>
                <td class="label"> 교과목명:</td>
                <td><sf:input class="control" type="text" path="course_name"/> <br/>
                    <sf:errors path="course_name" class="error" />
                </td>
            </tr>
            <tr>
                <td class="label"> 교과구분:</td>
                <td><sf:input class="control" type="text" path="course_type"/> <br/>
                    <sf:errors path="course_type" class="error" />
                </td>
            </tr>
            <tr>
                <td class="label"> 담당교수:</td>
                <td><sf:input class="control" type="text" path="instructor"/> <br/>
                    <sf:errors path="instructor" class="error" />
                </td>
            </tr>
            <tr>
                <td class="label"> 학점:</td>
                <td><sf:input class="control" type="text" path="credit"/> <br/>
                    <sf:errors path="credit" class="error" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="신청"/> </td>
            </tr>
        </table>
    </sf:form>
</div>
</body>
</html>

