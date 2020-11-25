·
<%@page contentType="text/html" pageEncoding="UTF-8"%>·

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩维护</title>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h3 class="subTitle">
            录入成绩
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <br />
        <c:if test="${not empty scoreList}">
            <h1 style="margin-left: 400px">该班级此门课程成绩已录入</h1>
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
            <tr align="center">
                <td width="100">班级</td>
                <td width="100">学号</td>
                <td width="100">姓名</td>
                <td width="100">课程</td>
                <td width="100">分数</td>
                <td width="100">是否通过</td>
            </tr>
            <c:forEach var="score" items="${scoreList}">
                <tr align="center">
                    <td>${score[0]}</td>
                    <td>${score[1]}</td>
                    <td>${score[2]}</td>
                    <td>${score[3]}</td>
                    <td>${score[4]}</td>
                    <td>${score[5]}</td>
                </tr>
            </c:forEach>
        </table>
        </c:if>
        <c:if test="${not empty list}">    
        <form action="<%=path %>/AddScore" method="post" name="form1" id="form1">
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
            <tr align="center">
                <td width="100">班级</td>
                <td width="100">学号</td>
                <td width="100">姓名</td>
                <td width="100">课程</td>
                <td width="100">分数</td>
                <td width="100">是否通过</td>
            </tr>
            <c:forEach var="score" items="${list}">
                <tr align="center">
                    <td>${score[0]}</td>
                    <td><input type="text" readonly="true" name="stuid" value="${score[1]}"/></td>
                    <td>${score[2]}</td>
                    <td><input type="text" readonly="true" name="course" value="${score[3]}"/></td>
                    <td><input type="text" name="score" /></td>
                    <td><input type="text" name="pass" /></td>
                </tr>
            </c:forEach>
            <tr>
        <td colspan="2" align="center">
          <input type="submit" name="button" id="button" class="btn_grey" value="提交" />
        </td>
            </tr> 
        </table>
        </form>
        </c:if>
    </body>
</html>
