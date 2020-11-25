<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
            <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h3 class="subTitle">个人信息</h3>
        <br />
        <c:choose>
  	<c:when test="${student==null}">
  	<p class="nodate">暂无数据</p>
  	</c:when>
  	<c:otherwise>
            <table style="width: 30%; font-size: 20px" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
                <tr height="50">
                    <td width="100">学号：</td>
                    <td >${student.id }</td>
                    <td  width="150" rowspan="3"><img  src="<%=path %>/photo/${student.photo}" style="width:100%; height:150" /></td>
		</tr >
                <tr height="50">
                    <td width="80">姓名：</td>
                    <td >${student.name }</td>
                 </tr >   
                <tr height="50">
                    <td width="80">性别：</td>
                    <td >${student.gender }</td>
		</tr>
                <tr height="50">
                    <td width="80">班级：</td>
                    <td  colspan="2">${student.batch}</td>
		</tr>
                <tr height="50">
                    <td width="80">籍贯：</td>
                    <td  colspan="2">${student.nativePlace}</td>
		</tr>
                <tr height="50">
                    <td width="80">政治面貌：</td>
                    <td colspan="2">${student.politics}</td>
		</tr>
            </table>
        </c:otherwise>
  </c:choose>
<!--        <table width="90%" border="1" align="center" cellpadding="0" cellspacing="0" class="table3" rules="rows" rules="cols">
            <tr align="center">
                <td>学号</td>
                <td>${student.id}</td>
            </tr>
            <tr align="center">
                <td>姓名</td>
                <td>${student.name}</td>
            </tr>
            <tr align="center">
                <td>密码</td>
                <td><a href="<%=path%>/modifyStudentPwdByStu.do?id=${student.id}">${student.password}</a></td>
            </tr>
            <tr align="center">
                <td>性别</td>
                <td>${student.gender}</td>
            </tr>
            <tr align="center">
                <td>班级</td>
                <td>${student.batch}</td>
            </tr>
            <tr align="center">
                <td>籍贯</td>
                <td>${student.nativePlace}</td>
            </tr>
            <tr align="center">
                <td>政治面貌</td>
                <td>${student.politics}</td>
            </tr>
        </table>-->
        <br />
    </body>
</html>
