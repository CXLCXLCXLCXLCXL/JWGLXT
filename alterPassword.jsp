<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <base href="${pageContext.request.contextPath}/">-->
        
        <title>JSP Page</title>
<%
    String path = request.getContextPath();
%>
<script src="<%=path%>/js/jquery-3.4.1.min.js"></script>
    </head>
<body>
    <center>
    <div style="width:27%;height:250px; background-color: lightsteelblue;">
        <h2 style="background-color:  #ffffff">更改密码</h2>
            <table width="310" height="200" >
		<tr>
                    <th>旧密码：</th>
                    <td><input type="password" id="oldPassword" name="oldPassword" required="required" style="font-size: 23px;width: 200px">
                        <input type="hidden" id="pwd" name="pwd" value="${sessionScope.student.password}"></td>
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
                    <td colspan="2" align="center"><input type="button" name="submitBtn" id="submitBtn" value="提交" style="font-size: 25px;width: 120px;height: 40px"> </td>
		</tr>
            </table>
    </div>
    </center>            
</body>
     <script>
	function validate() {
                var oldpassword = document.getElementById("oldPassword").value;
		var password = document.getElementById("password").value;
		var newword = document.getElementById("newword").value;
                var psw=document.getElementById("pwd").value;
//                alert(""+psw);
                if(oldpassword==""||password==""||newword==""){
                    alert("请完整输入!");
                    return false;
                }
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
                return true;
	}
        
            $(document).ready(function(){//编写jquery代码，一般要编写到document的ready事件中
                $("#submitBtn").click(function(){//处理id=“submitBtn”按钮的点击事件
                    if(validate()){
                    //处理点击按钮的操作之后要执行的操作
                    //调用JQuery中的ajax函数，发送异步请求
                    //JQuery中的ajax函数有以下参数：
                    //1、url：指定请求的路径；
                    //2、type:指定提交的方式；
                    //3、data:指定发送给服务器的参数，要执行的操作
                    //4、success:指定如果ajax请求成功，要执行的操作；
                    //5、error：指定如果ajax请求失败，要执行的操作；
                    $.ajax({
                        url:"modifyStudentPwd",
                        type:"POST",
                        data:{"password":$("#password").val()},
                        success:function(){
                           alert('修改密码成功！请重新登录');
                           top.location.href='login';
                        },
                        error:function(){
                            alert("修改密码失败！！");
                        } 
                    });
                  }  
                });  
            });
        </script>
</html>
