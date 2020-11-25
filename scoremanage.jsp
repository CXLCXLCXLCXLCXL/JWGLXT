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
<style type="text/css">
table input{
    font-size: 20px;
     width: 80px;
    color:  #4E4E4E
}
</style>
</head>
<body>
     <div style=" height:600px;width: 100%">
	<h3 class="subTitle">
		学生成绩管理
		<div class="search">
			<form action="<%=path%>/scoreQuery" method = "post">
                            
				学生学号 :	<input type="text" name= "id" value="${id}"> 
                                <select name="asc" id="asc">
                                   <option value="${true}">升序</option>
                                    <option value="${false}">降序</option>	
				</select>
				<input type="submit" class="btn_grey" value="搜索">
			</form>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path%>/addScore.do">增加成绩项</a>
	</h3>
	<br />
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table3">
		<tr align="center">
                        <td width="100">学生编号</td>
                        <td width="100">课程</td>
                        <td width="100">分数</td>
			<td width="100">是否及格</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="score" items="${scoreList}">
			<tr align="center">
				<td>${score.id.stuid}</td>
				<td>${score.id.course}</td>
				<td>${score.score}</td> 
				<td>${score.pass}</td> 
				<td><a href="<%=path%>/scoreModify.do?stuid=${score.id.stuid}&&course=${score.id.course}">修改</a></td>
				<td><a href="<%=path%>/scoreDelete?stuid=${score.id.stuid}&&course=${score.id.course}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
     </div>
<div style=" height: 20%;width: 100%;font-size: 16px;" align="center"><br/>
    <table style="">
        <tr items="${page}">
            <form method="GET" action="<%=path %>/scoreManage">
                <td><input type="hidden" name="page" value="1"></td>
                <td><input type="submit" value="首页"></td>
            </form>
            <form method="GET" action="<%=path %>/scoreManage">
                <td><input type="hidden" name="page" value="${page.prefPage}"></td>
                <td><input type="submit" value="上一页"></td>
            </form>
                <td >当前：第<font style="color: #20A8F0; font-size: 20px">${page.currentPage}</font>页<--></td>
                <td>共${page.totalPages}页</td>
            <form method="GET" action="<%=path %>/scoreManage">
                <td><input type="hidden" name="page" value="${page.nextPage}"></td>
                <td><input type="submit" value="下一页"></td>
            </form>
            <form method="GET" action="<%=path %>/scoreManage">
                <td><input type="hidden" name="page" value="${page.totalPages}"></td>
                <td><input type="submit" value="尾页"></td>
            </form>
        </tr>
    </table>
    <form method="post" action="<%=path %>/scoreManage" >
        <table  style="">
            <tr>
                <td>跳转到第:<input type="text" name="page" size="5"/>页</td>
                <td><input type="submit" value="确定"></td>
            </tr>
        </table>
    </form>
    共搜索到${page.totalUsers}条信息
</div>
</body>
</html>