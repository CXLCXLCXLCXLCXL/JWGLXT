<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<style>
p {
	text-indent: 2em;
}

textarea {
	　　resize: none;
}

.text2 {
	width: 700px;
	line-height: 40px;
	font-size: 16px;
	font-family: Arial, "宋体";
	margin: 0 auto;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="text2">
		<form action="<%=path%>/courseModify" method="post">
			<table width="900" border="0" align="center" class="word_darkGrey">
                    <tr>
                        <td width="132">编号：</td>
                        <td width="195"><label>
                                <input type="text" name="id" id="id" value="${course.id}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">名称：</td>
                        <td width="195"><label>
                                <input type="text" name="name" id="name"  value="${course.name}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">类型：</td>
                        <td width="195"><label>
                                <input type="text" name="type" id="type"  value="${course.type}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td>所属院系：</td>
                        <td><label>
                                <input type="text" name="faculty" id="faculty" value="${course.faculty}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td>学分：</td>
                        <td><label>
                                <input type="number" name="weight" id="weight" value="${course.weight}" />
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">描述：</td>
                        <td width="195"><label>
                                <input type="text" name="remark" id="remark"  value="${course.remark}"/>
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