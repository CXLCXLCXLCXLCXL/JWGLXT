<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无标题文档</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/default.css" rel="stylesheet" type="text/css" />
        <style>
            body{
                background-image:url(../img/bian.png);
                background-repeat:repeat-y;
                background-position:right;
            }
            li{
                height: 50px;
            }
        </style>
    </head>

    <body>

        <div id="nav_container">
            <table border="0" width="160" height="638" bordercolor="#FFF" bgcolor="#FFFFFF" cellspacing="0">
                <tr>
                    <td valign="top">
                        <ul>
                            <li style="height:30px"><a href="mmain.jsp" target="mainFrame">欢迎页面</a></li>
                            <li><a href="<%=path%>/studentManage?page=1" target="mainFrame">学生管理</a></li>
                            <li><a href="<%=path%>/teacherManage?page=1" target="mainFrame">教师管理</a></li>
                            <li><a href="<%=path%>/batchManage" target="mainFrame">班级管理</a></li>
                            <li><a href="<%=path%>/professionalManage" target="mainFrame">专业管理</a></li>
                            <li><a href="<%=path%>/facultyManage" target="mainFrame">学院管理</a></li>
                            <li><a href="<%=path%>/professionalPlanManage?page=1" target="mainFrame">专业计划管理</a></li>
                            <li><a href="<%=path%>/courseManage?page=1" target="mainFrame">课程管理</a></li>
                            <li><a href="<%=path%>/scoreManage?page=1" target="mainFrame">学生成绩管理</a></li>
                            <li><a href="<%=path%>/exit" target="_parent" onclick="javascript: return confirm('确认退出用户吗？');">退出用户</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
