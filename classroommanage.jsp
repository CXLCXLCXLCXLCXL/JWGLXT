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
	<h3 class="subTitle">
		教室信息管理
		<div class="search">
			<form action="<%=path%>/courseQueryServlet" method = "post">
				教室名称 :	<input type="text" name= "courseSearch" value="${courseSearch }"> 
				<input type="submit" class="btn_grey" value="搜索">
			</form>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path%>/classroomAdd.do">增加教室</a>
	</h3>
	<br />
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table3">
		<tr align="center">
			<td width="130" height="51">序号</td>
                        <td width="100">所在建筑</td>
			<td width="100">房间号</td>
			<td width="100">教室类型</td>
			<td width="150">教室描述</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="room" items="${classroomList}">
			<tr align="center">
				<td>${room.id}</td>
                                <td>${room.building}</td>
				<td>${room.number}</td>
				<td>${room.type}</td>
				<td>${room.remark}</td>
				<td><a href="<%=path%>/classroomModify?id=${room.id}">修改</a></td>
				<td><a href="<%=path%>/classroomDelete?id=${room.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>