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
            专业管理
            <div class="search">
                <!-- <form id="form1" method="post"
                        action="sys_Find_findClassesManagement.action?currentPage=0">
                        <select name="selectk">
                                <option selected="selected" value="2">开发方向</option>
                                <option value="1">测试方向</option>
                        </select> <input type="submit" name="Submit" class="btn_grey" value="搜索" />
                </form> -->
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path%>/addProfessional.do">增加专业</a>
        </h3>
        <br />
        <table width="90%" border="0" align="center" cellpadding="0"
               cellspacing="0" class="table3">
            <tr align="center">
                <td width="138" height="51">专业名称</td>
                <td width="162">所属学院</td>
                <td width="100">描述</td>
                <td width="94">修改操作</td>
                <td width="116">删除操作</td>
            </tr>
            <c:forEach var="sc" items="${professionalList}" varStatus="id">
                <tr align="center">
                    <td>${sc.name}</td>
                    <td>${sc.faculty}</td>
                    <td>${sc.remark}</td>
                    <td><a href="<%=path%>/professionalModify.do?name=${sc.name}">修改</a></td>
                    <td><a href="<%=path%>/professionalDelete?name=${sc.name}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
        <br />
    </body>
</html>