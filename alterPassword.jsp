<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="resources/js/jquery-3.4.1.min.js"></script>
        <base href="${pageContext.request.contextPath}/">
        <title>JSP Page</title>
    </head>
    <script>
	function addCheck() {
                var oldpassword = document.getElementById("oldPassword").value;
		var password = document.getElementById("password").value;
		var newword = document.getElementById("newword").value;
                var psw=document.getElementById("pwd").value;
//                alert(""+psw);
		if (password != newword) {
			alert("两次输入密码不相同!");
			document.getElementById("newword").focus();
			return false;
		}
                if (oldpassword != psw) {
			alert("原密码错误!");
			document.getElementById("newword").focus();
			return false;
		}
	}
	function validate() {
		var flag = addCheck();
		if (flag == false)
			return false;
		return true;
	}
</script>
<body>
    <center>
    <div style="width:27%;height:250px; background-color: lightsteelblue;">
        <h2 style="background-color:  #ffffff">更改密码</h2>
        <form action="modifyTeacherPwd" method="post" onsubmit="return validate()">
            <table width="310" height="200" >
		<tr>
                    <th>旧密码：</th>
                    <td><input type="password" id="oldPassword" name="oldPassword" required="required" style="font-size: 23px;width: 200px">
                        <input type="hidden" id="pwd" name="pwd" value="${sessionScope.teacher.password}"></td>
		</tr>
		<tr>
                    <th>输入密码：</th>
                    <td><input type="password" name="password" id="password" required="required" style="font-size: 23px;width: 200px"></td>
		</tr>
		<tr>
                    <th>确认密码：</th>
                    <td><input type="password" name="newword" id="newword" required="required" style="font-size: 23px;width: 200px"></td>
		</tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submitBtn" id="submitBtn" value="提交" style="font-size: 25px;width: 120px;height: 40px"> </td>
		</tr>
            </table>
	</form>
    </div>
    </center>            
</body>
</html>
