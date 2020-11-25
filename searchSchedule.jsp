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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="search" style="margin-right: 100px">
			<form action="<%=path%>/scheduleQuery" method = "post">
				按
                                <select name="type" id="type">
                                   <option value="batch">班级</option>
                                    <option value="classroom">教室编号</option>	
				</select>
                                查看教室课表:
				<input type="text" name= "id" value="${classroomId}">
				<input type="submit" class="btn_grey" value="搜索">
			</form>
	</div>
        <h3 align="center" class="subTitle">您的本学期课表是：</h3>
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3" style="clear: both">
		<tr align="center" height="40">
			<td width="138" >节\周</td>
			<td width="100">周一</td>
			<td width="100">周二</td>
			<td width="100">周三</td>
			<td width="100">周四</td>
			<td width="100">周五</td>
			<td width="100">周六</td>
			<td width="100">周七</td>
		</tr>
		<c:forEach begin="1" end="10" var="x">
			<tr align="center" height="70">
                            <td>${x}</td>
                            <c:forEach begin="0" end="6" var="y">
                                <c:if test="${schedule[x+y*10] != null}">
                                 <td>${schedule[x+y*10][0]}<br>${schedule[x+y*10][1]}<br>${schedule[x+y*10][2]}${schedule[x+y*10][3]} </td>
                                </c:if>
                                <c:if test="${schedule[x+y*10] == null}">
                                    <td></td>
                                </c:if>
                            </c:forEach>
			</tr>
		</c:forEach>
	</table>
    </body>
</html>
