<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="refresh" content="2;url=<%=basePath%>login.jsp"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta content="text/css " charset="utf-8">

    <link href="css/register.css" type="text/css" rel="stylesheet"/>
    <script src="js/jquery-1.10.1.js" type="text/javascript"></script>
    <script src="js/register.js"></script>

    <title>注册页面</title>
</head>
<body>

<div class="header">
    <a  href="#">
        <img src="img/index.img/logo.png" alt="logo">
    </a>
    <span class="word">用户注册</span>



</div>

<div class="pho">
    <img src="img/register.img/hezu01.png" alt="图片">
</div>

<div class="main">

    <ul class="nav nav-tabs top">
        <li id="left"><a href="#owner" data-toggle="tab">租客登录</a></li>
        <li id="right"><a href="#tenement" data-toggle="tab">房东登录</a> </li>
    </ul>

    <div class="tab-content content">
       <p>${loginName},用户注册成功！2秒后自动跳转到登录页面，</p>
       <p>如果无法跳转，请单击<a href="${pageContext.request.contextPath }/login1.jsp">去登录</a></p>
    </div>
</div>
</body>
</html>


