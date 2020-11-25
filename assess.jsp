<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>评教</title>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h3 class="subTitle">
            评教信息
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <br />
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
            <tr align="center">
                <td width="100">课程</td>
                <td width="100">班级</td>
                <td width="100">评教</td>
                
            </tr>
            <c:forEach var="assess" items="${list}">
                <tr align="center">
                    <td>${assess[0]}</td>
                    <td>${assess[1]}</td>
                    <td>${assess[2]}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
