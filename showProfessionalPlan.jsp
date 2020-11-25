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
    	<h2 align="center" class="subTitle">该专业的专业计划</h2>
        <h3 align="center" class="subTitle">第1学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==1&&sc.term=='秋'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第1学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==1&&sc.term=='春'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第2学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==2&&sc.term=='秋'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第2学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==2&&sc.term=='春'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第3学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==3&&sc.term=='秋'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第3学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==3&&sc.term=='春'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第4学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==4&&sc.term=='秋'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第4学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc.year==4&&sc.term=='春'}">
			<tr align="center">
				<td>${sc.course}</td>
				<td><a href="<%=path%>/professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="<%=path%>/professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
</body>
</html>
