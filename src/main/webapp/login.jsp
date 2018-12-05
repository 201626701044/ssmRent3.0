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
    <meta content="text/css " charset="utf-8">
    <link href="css/login.css" type="text/css" rel="stylesheet"/>
    <script src="js/jquery-1.10.1.js" type="text/javascript"></script>
    <script src="js/login.js"></script>
    <title>登录页面</title>
</head>
<body>

<div class="header">
    <a  href="#">
        <img src="img/index.img/logo.png" alt="logo">
    </a>
    <a class="word">欢迎登录</a>
</div>

<main>

    <div class="pho">
        <img src="img/login/hezu.jpg" alt="">
    </div>

    <div class="tab">
        <span>用户登录</span>

        <form action="${pageContext.request.contextPath }/member/login.controller" method="post" >

            <div class="tab_1">
                <img src="img/login/account_login.png">
                <input id="mobile" class="login_tab"  type="text" name="member_name" placeholder="请输入您的手机号">
            </div>
            <span id="usernametip" class="wrong">账号格式错误</span>


            <div class="tab_1">
                <img src="img/login/password_login.png">
                <input id="pass" class="login_tab" type="password" name="member_passsword" placeholder="请输入您的密码">
            </div>

            <input id="login_submit_button" type="submit" value="登录" >

        </form>

        <div class="tab_2">
            <a href="#" class="login_tab_0">忘记密码</a>
            <a href="register.html">新用户,去注册</a>
        </div>

        <div class="tab_3">
            <a href="#"><img  src="img/login/qqlogo.png" alt="qq's logo"></a>
        </div>

    </div>
</main>

</body>
</html>
