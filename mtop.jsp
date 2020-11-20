<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<style>
#welcome{
	background-color: white;
	color:#5084BB;
	font-size:16px;
	line-height:19px;
	text-indent:11em;
}
</style>
</head>
<body>
    <div id="welcome"  style="width: 100%; height:120px">
        <img src="../img/logo.jpg" style=" width: 12%; height: 100%; float: left"/>
        <img src="../img/3.png" style=" width: 70%; height: 100%; float: left"/>
    </div>
    <hr size="7px" noshade=true/>
</body>
</html>