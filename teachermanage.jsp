<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
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
<h3 class="subTitle">教师管理
    <div class="search">
        <form id="form1" method="post" action="<%=path %>/teacherQuery">
           	教师姓名：<input type="text" name="name" placeholder="${name}" />
            <input type="submit" class="btn" value="搜索"  />
        </form>
    </div>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path %>/addTeacher.do">增加教师</a>
</h3>
<br />
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
  <tr align="center">
    <td width="100">教师工号</td>
    <td width="100">教师姓名</td>
    <td width="100" >密码</td>
    <td width="100">性别</td>
    <td width="100" >专业</td>
    <td width="100" >生日</td>
    <td width="100" >邮箱</td>
    <td width="300" >简介</td>
    <td width="91">修改操作</td>
    <td width="92">删除操作</td>
  </tr>
  <c:forEach items="${teacherList }" var="teacher" varStatus="id">
	  <tr align="center">
	    <td >${teacher.id}</td>
	    <td >${teacher.name }</td>
	    <td >${teacher.password }</td>
	    <td>${teacher.gender }</td>
	    <td >${teacher.professional }</td>
	    <td>${teacher.birthday }</td>
            <td >${teacher.email }</td>
            <td >${teacher.remark }</td>
	    <td><a href="<%=path %>/teacherModify.do?id=${teacher.id }" target="_self">修改</a></td>
	    <td><a href="<%=path %>/teacherDelete?id=${teacher.id }" target="_self">删除</a></td>
	  </tr>
  </c:forEach>
</table>
    </div>
<div style=" height: 20%;width: 100%;font-size: 16px;" align="center"><br/>
    <table style="">
        <tr items="${page}">
            <form method="GET" action="<%=path %>/teacherManage">
                <td><input type="hidden" name="page" value="1"></td>
                <td><input type="submit" value="首页"></td>
            </form>
            <form method="GET" action="<%=path %>/teacherManage">
                <td><input type="hidden" name="page" value="${page.prefPage}"></td>
                <td><input type="submit" value="上一页"></td>
            </form>
                <td >当前：第<font style="color: #20A8F0; font-size: 20px">${page.currentPage}</font>页<--></td>
                <td>共${page.totalPages}页</td>
            <form method="GET" action="<%=path %>/teacherManage">
                <td><input type="hidden" name="page" value="${page.nextPage}"></td>
                <td><input type="submit" value="下一页"></td>
            </form>
            <form method="GET" action="<%=path %>/teacherManage">
                <td><input type="hidden" name="page" value="${page.totalPages}"></td>
                <td><input type="submit" value="尾页"></td>
            </form>
        </tr>
    </table>
    <form method="post" action="<%=path %>/teacherManage" >
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