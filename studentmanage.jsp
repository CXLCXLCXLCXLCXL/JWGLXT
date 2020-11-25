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
<h3 class="subTitle">学生管理
  <div class="search">
      <form id="form1" method="post" action="<%=path %>/studentQueryByBatch" style=" display: inline-block">
           	 班级：<input type="text" name="batch" value="${student.batch}" />
            <input type="submit" name="Submit" class="btn" value="搜索" />
        </form>
        <form id="form1" method="post" action="<%=path %>/studentQuery" style=" display: inline-block">
           	 学生学号：<input type="text" name="id" value="${student.id}"  />
            <input type="submit" name="Submit" class="btn" value="搜索" />
        </form>
  </div>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="addStudent.do">增加学生</a>
</h3>
<br />
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
  <tr align="center">
    <td width="127" height="51">学生学号</td>
    <td width="100">姓名</td>
    <td width="50">性别</td>
    <td width="100" >所在班级</td>  
    <td width="87">查看详细信息</td>
    <td width="87">修改操作</td>
    <td width="87">删除操作</td>
  </tr>
  <c:choose>
  	<c:when test="${studentList==null}">
  	<td colspan="10" ><p class="nodate">暂无数据</p></td>
  	</c:when>
  	<c:otherwise>
  		<c:forEach items="${studentList }" var="s">
	  <tr align="center">
	    <td >${s.id }</td>
	    <td >${s.name }</td>
	    <td >${s.gender }</td>
	    <td >${s.batch}</td>
            <td><a href="<%=path %>/studentQuery.do?id=${s.id }" target="_self">查看</a></td>
	    <td><a href="<%=path %>/studentModify.do?id=${s.id }" target="_self">修改</a></td>
	    <td><a href="<%=path %>/studentDelete?id=${s.id }" target="_self">删除</a></td>
	  </tr>
  </c:forEach>
  	</c:otherwise>
  </c:choose>
</table>
    </div>
<div style=" height: 20%;width: 100%;font-size: 16px;" align="center"><br/>
    <table style="">
        <tr items="${page}">
            <form method="GET" action="<%=path %>/studentManage">
                <td><input type="hidden" name="page" value="1"></td>
                <td><input type="submit" value="首页"></td>
            </form>
            <form method="GET" action="<%=path %>/studentManage">
                <td><input type="hidden" name="page" value="${page.prefPage}"></td>
                <td><input type="submit" value="上一页"></td>
            </form>
                <td >当前：第<font style="color: #20A8F0; font-size: 20px">${page.currentPage}</font>页<--></td>
                <td>共${page.totalPages}页</td>
            <form method="GET" action="<%=path %>/studentManage">
                <td><input type="hidden" name="page" value="${page.nextPage}"></td>
                <td><input type="submit" value="下一页"></td>
            </form>
            <form method="GET" action="<%=path %>/studentManage">
                <td><input type="hidden" name="page" value="${page.totalPages}"></td>
                <td><input type="submit" value="尾页"></td>
            </form>
        </tr>
    </table>
    <form method="post" action="<%=path %>/studentManage" >
        <table  style="">
            <tr>
                <td>跳转到第:<input type="text" name="page" size="5"/>页</td>
                <td><input type="submit" value="确定"></td>
            </tr>
        </table>
    </form>
    共搜索到${page.totalUsers}条信息
</div>
<!--el表达式直接写变量名的话只能取内置对象的setAttribute里的值。-->
</body>
</html>