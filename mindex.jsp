<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        <base href="${pageContext.request.contextPath}/">
        <title>教务管理系统</title>
    </head>
    <frameset rows="130,*" cols="*" frameborder="no" border="0"
              framespacing="0">
        <frame src="student/mtop.jsp" name="topFrame" scrolling="no"
               noresize="noresize" id="topFrame" title="topFrame" />
        <frameset cols="200,*" frameborder="no" border="0" framespacing="0">
            <frame src="student/mleft.jsp" name="leftFrame"
                   scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
            <frame src="student/mmain.jsp" name="mainFrame"
                   id="mainFrame" title="mainFrame" />
        </frameset>
    </frameset>
    <!--<body>
    在不支持框架的浏览器中需要将frameset内容添加到body中
    </body>-->
</html>