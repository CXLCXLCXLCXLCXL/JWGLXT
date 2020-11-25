<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<script src="resources/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
<!--
.text2 {
	width: 700px;
	line-height: 40px;
	font-size: 16px;
	font-family: Arial, "宋体";
	margin: 0 auto;
	margin-top: 20px;
}
-->
</style>
</head>

<body>
	<h3 class="subTitle">
		班级管理
		<div class="search">
			<!-- <form id="form1" method="post"
				action="sys_Find_findClassesManagement.action?currentPage=0">
				<select name="selectk">
					<option selected="selected" value="2">开发方向</option>
					<option value="1">测试方向</option>
				</select> <input type="submit" name="Submit" class="btn_grey" value="搜索" />
			</form> -->
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path%>/addBatch.do">增加班级</a>
	</h3>
	<br />
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table3">
		<tr align="center">
			<td width="138" height="51">班级名称</td>
			<td width="162">班级人数</td>
			<td width="90">所属专业</td>
			<td width="94">修改操作</td>
			<td width="116">删除操作</td>
		</tr>
		<c:forEach var="sc" items="${batchList}" varStatus="id">
			<tr align="center">
				<td>${sc.name}</td>
				<td>${sc.studentCount}</td>
				<td>${sc.professional}</td>
				<td><a href="<%=path%>/batchModify.do?name=${sc.name}" target="_self">修改</a></td>
                                <td><a href="<%=path%>/batchDelete?name=${sc.name}" target="_self">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
          <script>
//            //编写jquery代码，一般要编写到document的ready事件中
//            $(document).ready(function(){
//                //处理id=“submitBtn”按钮的点击事件
//                $("#submitBtn").click(function(){
//                    //处理点击按钮的操作之后要执行的操作
//                    //调用JQuery中的ajax函数，发送异步请求
//                    //JQuery中的ajax函数有以下参数：
//                    //1、url：指定请求的路径；
//                    //2、type:指定提交的方式；
//                    //3、data:指定发送给服务器的参数，要执行的操作
//                    //4、success:指定如果ajax请求成功，要执行的操作；
//                    //5、error：指定如果ajax请求失败，要执行的操作；
//                    $.ajax({
//                        url:"<%=path%>/batchDelete",
//                        type:"POST",
//                        data:{"name":${sc.name}},
//                        success:function(){
//                            $("#sid").html(student.stuId);
//                        },
//                        error:function(){
//                            alert("Ajax请求失败！！！！");
//                        } 
//                    });
//                    
//                });  
//            });
            //            $("#addBtn").click(function(){
//                    $("body").append("<form><table class='table3'><tr><td><input type='text' name='name'/></td><td><input type='text' name='studentCount' /></td>\n\
//            <td width='195'><input type='text' name='professional' /></td><td align='center'>\n\
//<input type='button' name='button' class='btn_grey' id='submitBtn' value='提交' /></td>\n\
//<td align='center'><input type='button' name='button' class='btn_grey' id='backBtn' value='撤销' /></td></tr></table></form>");
//                });    
        </script>
</body>
</html>