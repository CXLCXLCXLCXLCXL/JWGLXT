<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />

    </head>
    <body>
        <h3 class="subTitle">
            个人信息
        </h3>
        <br />
        <table width="90%" border="1" align="center" cellpadding="0" cellspacing="0" class="table3" rules="rows" rules="cols">
            <tr align="center">
                <td>教职工号</td>
                <td>${teacher.id}</td>
            </tr>
            <tr align="center">
                <td>姓名</td>
                <td>${teacher.name}</td>
            </tr>
            <tr align="center">
                <td>性别</td>
                <td>${teacher.gender}</td>
            </tr>
            <tr align="center">
                <td>专业</td>
                <td>${teacher.professional}</td>
            </tr>
            <tr align="center">
                <td>生日</td>
                <td>${teacher.birthday}</td>
            </tr>
            <tr align="center">
                <td>邮箱</td>
                <td>${teacher.email}</td>
            </tr>
            <tr align="center">
                <td>评价</td>
                <td>${teacher.remark}</td>
            </tr>
        </table>
        <br />
    </body>
</html>
