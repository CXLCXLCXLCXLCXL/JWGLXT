
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改密码</title>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h3 class="subTitle">
            修改密码
        </h3>
        <br />
        <form action="<%=path%>/modifyStudentPwd" method="post">
            <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3" rules="rows" rules="cols">
                <tr align="center">
                    <th>新密码</th>
                    <td><input type="text" name="password" id="password" autofocus="true"/></th>
                </tr>
                       <tr>
                        <td colspan="2" align="center">
                            <input type="submit" class="btn_grey" value="提交" />
                        </td>
                    </tr>

            </table>
        </form>
        <br />
    </body>
</html>
