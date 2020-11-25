
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩与课程</title>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />

    </head>
    <body>
        <h3 class="subTitle">
            课程与成绩
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <br />
        <table width="90%" border="0" align="center" cellpadding="0"
               cellspacing="0" class="table3">
            <tr align="center">

                <td width="100">课程编号</td>
                <td width="100">分数</td>
                <td width="100">是否及格</td>
            </tr>
            <c:forEach var="score" items="${list}">
                <tr align="center">

                    <td>${score.courseid}</td>
                    <td>${score.score}</td> 
                    <td>${score.pass}</td> 
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
