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
<title>修改</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/default.css" rel="stylesheet" type="text/css" />
<style>
p{
	text-indent:2em;}
.text2{
	width:700px;
	line-height:40px;
	font-size:16px;
	font-family: Arial, "宋体";
	margin:0 auto;
	margin-top:20px;}

</style>
</head>

<body>
<h3 class="subTitle">
	修改专业信息 &nbsp;&nbsp;&nbsp;&nbsp;
</h3>
<div class="text2">
    <form action="<%=path %>/professionalModify" method="post" name="form1" id="form1">
        <table width="900" border="0" align="center" class="word_darkGrey">
                    <tr>
                        <td>专业名称：</td>
                        <td><label>
                                <input type="text" name="name" id="name" value="${professional.name}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">所属学院：</td>
                        <td width="195"><label>
                                <input type="text" name="faculty" id="faculty" value="${professional.faculty}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">描述：</td>
                        <td width="195"><label>
                                <input type="text" name="remark" id="remark" value="${professional.remark}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="button" id="button" class="btn_grey" value="提交" />
                        </td>
                    </tr>
        </table>
    </form>
</div>
</body>
</html>