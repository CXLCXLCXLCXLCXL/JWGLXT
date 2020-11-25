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
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc[3]==1&&sc[4]=='秋'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                    </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第1学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                     <c:if test="${sc[3]==1&&sc[4]=='春'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                    </c:if>     
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第2学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                    <c:if test="${sc[3]==2&&sc[4]=='秋'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                    </c:if>     
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第2学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
                <c:forEach var="sc" items="${professionalPlan}" varStatus="id">
		<c:if test="${sc[3]==2&&sc[4]=='春'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                </c:if> 
                </c:forEach>
	</table>
        <h3 align="center" class="subTitle">第3学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
		<c:if test="${sc[3]==3&&sc[4]=='秋'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                </c:if>    
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第3学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                <c:if test="${sc[3]==3&&sc[4]=='春'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                </c:if>     
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第4学年 秋</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
			<td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                <c:if test="${sc[3]==4&&sc[4]=='秋'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                </c:if>     
		</c:forEach>
	</table>
        <h3 align="center" class="subTitle">第4学年 春</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
			<td width="100">课程</td>
                        <td width="116">考查方式</td>
			<td width="94">学分</td>
		</tr>
		<c:forEach var="sc" items="${professionalPlan}" varStatus="id">
                <c:if test="${sc[3]==4&&sc[4]=='春'}"> 
			<tr align="center">
				<td>${sc[0]}</td>
				<td>${sc[1]}</td>
				<td>${sc[2]}</td>
			</tr>
                </c:if>     
		</c:forEach>
	</table>
</body> 
</html>
