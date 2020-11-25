
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <div class="search">
            <form action="<%=path%>/getStudentListToAddScore" method = "post">
                按：课程<select name="course" id="course">
                    <c:forEach var="course" items="${list2}">
				<option value=${course}>${course}</option>
                        </c:forEach>
<!--                    <option value="数据结构与算法">数据结构与算法</option>
                    <option value="微积分">微积分</option>	-->
                </select>
                班级<select name="batch" id="batch">
                    	<c:forEach var="batch" items="${list1}">
				<option value=${batch}>${batch}</option>
                        </c:forEach>
<!--                    <option value="17软件J01">17软件J01</option>
                    <option value="17软件J02">17软件J02</option>	-->
                </select>
                查看学生:
                <input type="submit" class="btn_grey" value="搜索">
            </form>
        </div>
             <a href="exporExcel">导出Excel成绩单</a>   
        <h3 class="subTitle">
            学生成绩信息
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>

        <br />
        <table width="90%" border="0" align="center" cellpadding="0"
               cellspacing="0" class="table3">
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
                    <td>${score[1]}</td>
                    <td>${score[2]}</td>
                    <td>${score[3]}</td>
                    <td>${score[4]}</td>
                    <td>${score[5]}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
