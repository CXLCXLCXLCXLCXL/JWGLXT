<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<title>login.jsp</title>
<link rel="stylesheet" type="text/css" href="css/log.css"/>
<script src="js/jquery-3.4.1.min.js"></script>
</head>

<body>
<a href="#"><img id="I_1" src="img/logo.jpg"></a>
<a href="#"><img id="I_2" src="img/QDDX.PNG"></a><br><br />
<a href="#"><img id="I_3" src="img/登录.jpeg"></a>
<div id="div1">
    <center>
    	<h1>用户登录</h1>
        <form  action="Login.do" method="post">
            <label>
                用户名:&nbsp;<input type="text"  name="id" maxlength="10" placeholder="请输入用户名" required="required" id="YH1" style="width: 200px; height: 30px;"/><br/><br/>
                        密&nbsp;&nbsp;&nbsp;码:&nbsp;<input type="password" name="password"  maxlength="20" placeholder="请输入密码"  required="required" id="PW1"style="width: 200px; height: 30px;"/><br/><br/>
            </label>
            <label> 
                <select name="role" id="role" style="width: 65px; height: 23px;">
                    <option value="admin">管理员</option>
                    <option value="teacher">教师</option>
                    <option value="student" selected="selected">学生</option>
		</select><br/><br/>
	    </label>
        <input id="submitBtn" type="image" src="img/登录.png" style="height: 30px; width: 170px; margin-left: 60px"/>
        </form>
    </center>
</div>
<br><br><br><br><br><br>
<div id="DIV-BQ">
    <center>
    	版权所有 © 江宁大学
    </center>
</div>
</body>
</html>
