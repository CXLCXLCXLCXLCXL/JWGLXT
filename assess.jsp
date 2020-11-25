<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>评教</title>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h3 class="subTitle">
            评教
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <br />
        <form action="<%=path %>/assess" method="post" name="form1" id="form1">
        <table style="width: 400px" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
            <tr align="center">
                <td width="50">教师名称</td>
                <td style="width:50px">分数</td>
            </tr>
            <c:forEach var="info" items="${teacherNameList}">
                <tr align="center">
                    <input type="hidden" name="coursePlanId" value="${info[0]}"/>
                    <td width="50">${info[1]}</td>
                    <input type="hidden" name="studentid" value="2017204426"/>
                    <td><input type="text" name="assess" style="width:50px"/></td>
                </tr>
   
            </c:forEach>
         <tr>
        <td colspan="2" align="center">
          <input type="submit" name="button" id="button" class="btn_grey" value="提交" style="width:80px;height:30px;font-size: 20px;font-weight: bold;background-color: lightskyblue;color: #000"/>   
        </td>
                </tr> 
        </table>
          </form>
    </body>
</html>
