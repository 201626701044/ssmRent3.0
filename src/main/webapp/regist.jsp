<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>

<head>

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
        <div class="tab-pane" id="owner">
            <form action="${pageContext.request.contextPath }/member/regist.controller" method="post">

                <div class="blank">
                    <label>用户名&nbsp;&nbsp;</label>
                    <input id="phonenum"  class="register_in" type="text" name="member_name" placeholder="请输入电话号码">
                </div>
                <div class="wrong" id="cuo1">手机号格式不对</div>

                <div class="blank">
                    <label>密码&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input id="mima" class="register_in"  type="text" name="member_password" placeholder="请输入密码">
                </div>
                <div class="wrong" id="cuo2">密码由6-12个字母、数字、下划线组成</div>

                <div class="blank">
                    <label>密码确认</label>
                    <input id="remima" class="register_in" type="text" name="passward01" placeholder="请确认密码">
                </div>
                <div class="wrong" id="cuo3">两次密码不一致</div>

                <div  class="yanzheng">

                    <div class="register_in00">
                        <label class="lable">验证码</label>
                        <input class="register_in01" type="text" id="code"  name="code" placeholder="请输入验证码">
                    </div>
                    <div class="ma" id="yanzheng2"></div>
                    <span  class="register_yan" id="yanzheng3">重置验证码</span>
                </div>
                <div class="wrong" id="cuo4">验证码输入错误</div>
                <input type="submit" class="last" value="注    册">
            </form>
        </div>

        <div class="tab-pane" id="tenement">
            <form action="${pageContext.request.contextPath }/member/regist.controller" method="post">
                <div class="blank">
                    <label>用户名&nbsp;&nbsp;</label>
                    <input id="re-phonenum"  class="register_in" type="text" name="member_name" placeholder="请输入电话号码">
                </div>
                <div class="wrong" id="re-cuo1">手机号格式不对</div>

                <div class="blank">
                    <label>密码&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input id="re-mima" class="register_in"  type="text" name="member_password" placeholder="请输入密码">
                </div>
                <div class="wrong" id="re-cuo2">密码由6-12个字母、数字、下划线组成</div>

                <div class="blank">
                    <label>密码确认</label>
                    <input id="re-remima" class="register_in" type="text" name="passward01" placeholder="请确认密码">
                </div>
                <div class="wrong" id="re-cuo3">两次密码不一致</div>

                <div  class="yanzheng">

                    <div class="register_in00">
                        <label class="lable">验证码</label>
                        <input class="register_in01" type="text" id="re-code"  name="code" placeholder="请输入验证码">
                    </div>
                    <div class="ma" id="re-yanzheng2"></div>
                    <span  class="register_yan" id="re-yanzheng3">重置验证码</span>
                </div>
                <div class="wrong" id="re-cuo4">验证码输入错误</div>
                <input type="submit" class="last" value="注    册">
            </form>
        </div>
    </div>

</div>
</body>
</html>

