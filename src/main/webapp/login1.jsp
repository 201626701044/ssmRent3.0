<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/member/login.controller">
    <table border="1">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="member_name"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" name="member_password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
</body>
</html>
