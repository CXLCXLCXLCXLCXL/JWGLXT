<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h3 align="center" class="subTitle">学号${id}的学生的课程成绩</h3>
	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
                        <td width="100">课程</td>
                        <td width="100">分数</td>
			<td width="100">是否及格</td>
			<td width="100">学年</td>
			<td width="100">学期</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="score" items="${score}">
			<tr align="center">
				<td>${score[0]}</td>
				<td>${score[1]}</td> 
				<td>${score[2]}</td> 
				<td>${score[3]}</td> 
				<td>${score[4]}</td> 
				<td><a href="<%=path%>/scoreModify.do?stuid=${id}&&course=${score[0]}">修改</a></td>
				<td>无权限</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>