<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            添加专业计划 &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <div class="text2">
            <form action="<%=path%>/addProfessionalPlan" method="post" name="form1" id="form1">
                <table width="900" border="0" align="center" class="word_darkGrey">
                    <tr>
                        <td>编号：</td>
                        <td><label>
                                <input type="number" min="0" name="id" id="id"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">专业名称：</td>
                        <td width="195"><label>
                                <input type="text" name="professional" id="professional" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>课程编号：</td>
                        <td><label>
                                <input type="text" name="courseid" id="courseid"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td>学年：</td>
                        <td><label>
                                <input type="number" name="year" id="year" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>学期：</td>
                        <td><label>
                                <input type="text" name="term" id="term"/>
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