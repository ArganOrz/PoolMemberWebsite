<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="${pageContext.request.contextPath}${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
    <link type="text/css" rel="styleSheet"  href="${pageContext.request.contextPath}/static/css/login_regist.css" />
    <title>欢迎加入</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }

        html,
        body {
            height: 100%;
        }

        @font-face {
            font-family: 'neo';
            src: url("${pageContext.request.contextPath}/static/font/zwzt.ttf");
        }
        input:focus{
            outline: none;
        }
        .form input{
            width: 300px;
            height: 30px;
            font-size: 18px;
            background: none;
            border: none;
            border-bottom: 1px solid #fff;
            color: #fff;
            margin-bottom: 20px;
        }
        .form input::placeholder{
            color: rgba(255,255,255,0.8);
            font-size: 18px;
            font-family: "neo";
        }
        .confirm{
            height: 0;
            overflow: hidden;
            transition: .25s;
        }
        .btn{
            width:140px;
            height: 40px;
            border: 1px solid #fff;
            background: none;
            font-size:20px;
            color: #fff;
            cursor: pointer;
            margin-top: 25px;
            font-family: "neo";
            transition: .25s;
        }
        .btn:hover{
            background: rgba(255,255,255,.25);
        }
        #login_wrap{
            width: 980px;
            min-height: 680px;
            border-radius: 10px;
            font-family: "neo", serif;
            overflow: hidden;
            box-shadow: 0px 0px 120px rgba(0, 0, 0, 0.25);
            position: fixed;
            top: 40%;
            right: 50%;
            margin-top: -250px;
            margin-right: -490px;
        }
        #login{
            width: 50%;
            height: 680px;
            background: linear-gradient(70deg, #41D8DD, #5583EE);
            position: relative;
            float: right;
        }
        #login #status{
            width: 90px;
            height: 35px;
            margin: 40px auto;
            color: #fff;
            font-size: 30px;
            font-weight: 600;
            position: relative;
            overflow: hidden;
        }
        #login #status i{
            font-style: normal;
            position: absolute;
            transition: .5s
        }
        #login span{
            text-align: center;
            position: absolute;
            left: 50%;
            margin-left: -150px;
            top: 52%;
            margin-top: -140px;
        }
        #login span a{
            text-decoration: none;
            color: #fff;
            display: block;
            margin-top: 40px;
            font-size: 18px;
        }
        #bg{
            background: linear-gradient(60deg, #C1E3FF, #ABC7FF);
            height: 100%;
        }
        /*绘图*/
        #login_img{
            width: 50%;
            min-height: 680px;
            background: linear-gradient(60deg, #8DEBFF, #6CACFF);
            float: left;
            position: relative;
        }
        #login_img span{
            position: absolute;
            display: block;
        }
        #login_img .circle{
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background: linear-gradient(45deg, #a7cfdf, #6583ef);
            top: 70px;
            left: 50%;
            margin-left: -100px;
            overflow: hidden;
        }
        #login_img .circle span{
            width: 150px;
            height: 40px;
            border-radius: 50px;
            position: absolute;
        }
        #login_img .circle span:nth-child(1){
            top: 30px;
            left: -38px;
            background: #ffe5d5;
        }
        #login_img .circle span:nth-child(2){
            bottom: 20px;
            right: -35px;
            background: #ffe5d5;
        }
        #login_img .star span{
            background: radial-gradient(#fff 10%, #fff2cb 20%,rgba(72, 34, 64, 0));
            border-radius: 50%;
            box-shadow: 0 0 7px #fff;
        }
        #login_img .star span:nth-child(1){
            width: 15px;
            height: 15px;
            top: 50px;
            left: 30px;
        }
        #login_img .star span:nth-child(2){
            width: 10px;
            height: 10px;
            left: 360px;
            top: 80px;
        }
        #login_img .star span:nth-child(3){
            width: 5px;
            height: 5px;
            top: 400px;
            left: 80px;
        }
        #login_img .star span:nth-child(4){
            width: 8px;
            height: 8px;
            top: 240px;
            left: 60px;
        }
        #login_img .star span:nth-child(5){
            width: 4px;
            height: 4px;
            top: 20px;
            left: 200px;
        }
        #login_img .star span:nth-child(6){
            width: 4px;
            height: 4px;
            top: 460px;
            left: 410px;
        }
        #login_img .star span:nth-child(7){
            width: 6px;
            height: 6px;
            top: 250px;
            left: 350px;
        }
        #login_img .fly_star span{
            width: 90px;
            height: 3px;
            background: -webkit-linear-gradient(left, rgba(255, 255, 255, 0.67), rgba(255,255,255,0));
            background: -o-linear-gradient(left, rgba(255, 255, 255, 0.67), rgba(255,255,255,0));
            background: linear-gradient(to right, rgba(255, 255, 255, 0.67), rgba(255,255,255,0));
            transform: rotate(-45deg);
        }
        #login_img .fly_star span:nth-child(1){
            top:60px;
            left: 80px;
        }
        #login_img .fly_star span:nth-child(2){
            top: 210px;
            left: 332px;
            opacity: 0.6;
        }
        #login_img p{
            text-align: center;
            color: #af4b55;
            font-weight: 600;
            margin-top: 365px;
            font-size: 25px;
        }
        #login_img p i{
            font-style: normal;
            margin-right: 45px;
        }
        #login_img p i:nth-last-child(1){
            margin-right: 0;
        }
        /*提示*/
        #hint{
            width: 100%;
            line-height: 70px;
            background: linear-gradient(-90deg, #9b494d, #bf5853);
            text-align: center;
            font-size: 25px;
            color: #fff;
            box-shadow: 0 0 20px #733544;
            display: none;
            opacity: 0;
            transition: .5s;
            position: absolute;
            top: 0;
            z-index: 999;
        }
        /* 响应式 */
        @media screen and (max-width:1000px ) {
            #login_img{
                display: none;
            }
            #login_wrap{
                width: 490px;
                margin-right: -245px;
            }
            #login{
                width: 100%;

            }
        }
        @media screen and (max-width:560px ) {
            #login_wrap{
                width: 330px;
                margin-right: -165px;
            }
            #login span{
                margin-left: -125px;
            }
            .form input{
                width: 250px;
            }
            .btn{
                width: 113px;
            }
        }
        @media screen and (max-width:345px ) {
            #login_wrap {
                width: 290px;
                margin-right: -145px;
            }
        }
    </style>


</head>
<body>


<div id="hint"><!-- 提示框 -->

</div>

<div id="bg">

    <div id="login_wrap">

        <div id="login">

            <div id="status">
                <i style="top: 0">Regist</i>
            </div>
            <span style="margin-top: -250px">
                    <form action="post">
                        <p class="form"><input type="text" id="username" placeholder="昵称"></p>
                        <p class="form"><input type="text" id="email" placeholder="手机号"></p>
                        <p class="form"><input type="text" id="check" style="width: 220px; "   placeholder="手机验证码"><button class="btn" id="checkCode" onclick="get_check()" type="button" style="margin-left: 10px;width: 70px; font-size: small">获取验证码</button></p>
                        <p class="form"><input type="password" id="password" placeholder="密码"></p>
                        <p class="form"><input type="password" id="confirm-password" placeholder="确认密码"></p>
                        <input type="button" id="regist" value="注册" onclick="register()" class="btn" style="margin-right: 20px;">
                    </form>
                    <a href="${pageContext.request.contextPath}/account/login">已有帐号,立即登录</a>
                    <p>
                        <a>注册即代表同意冷凉淡忘</a>
                        <a style="margin-top: 1px" href="${pageContext.request.contextPath}/account/useragreement" class="" target="_blank">《用户协议》</a>
                        <a style="margin-top: 1px" href="${pageContext.request.contextPath}/account/privacypolicy" class="" target="_blank">《隐私政策》</a>
                    </p>

            </span>
        </div>

        <div id="login_img"><!-- 图片绘制框 -->
            <span class="circle">
                    <span></span>
                    <span></span>
                </span>
            <span class="star">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
            <span class="fly_star">
                    <span></span>
                    <span></span>
                </span>
            <p id="title" style="color: #6d60c5">TRAVEL<br> START FROM HERE</p>

        </div>
    </div>
</div>
</body>

<script>

    var flag = true;

    var confirm = document.getElementsByClassName("confirm")[0];
    var email = document.getElementById("email");
    var username = $("#username");
    var password = document.getElementById("password");
    var confirm_password = document.getElementById("confirm-password");
    var hit = document.getElementById("hint");
    var check = $("#check");

    var getCheck = $("#checkCode");

    var getCheckTime = 120;
    var haveGetCheck = false;
    var checkTimer;


    function register() {

        if(email.value < 1){
            hit.innerHTML = "请输入手机号";

        }
        else if(check.val().length < 1 ){
            hit.innerText = "请输入短信验证码";
        }
        else if (password.value.length < 6)
            hit.innerHTML = "密码长度必须大于6位";
        else if (password.value !== confirm_password.value)
            hit.innerHTML = "两次密码不一致";
        else{
            $.post("${pageContext.request.contextPath}/account/regist", {'checkCode':check.val(), 'phone':email.value, 'password':password.value, 'name':username.val() },function (data) {
                hit.innerHTML = data;
                setInterval(function () {
                    window.location= "${pageContext.request.contextPath}/account/login";
                },1500);
            })
        }
        hint()
    }


    function get_check() {
        if (email.value < 1) {
            hit.innerHTML = "请输入电话号码";
            hint();
        }
        else {
            getCheck.attr("disable", "disable");

            if(!haveGetCheck){

                $.get("${pageContext.request.contextPath}/account/getCheck?phone="+$("#email").val(), function (data) {
                    hit.innerHTML = data;
                    hint();
                });

                getCheck.text(getCheckTime + "后可重新发送");
                checkTimer = setInterval("checkCodeRST()",1000);
                haveGetCheck = true;
            }
        }
    };

    function checkCodeRST() {
        getCheckTime--;
        getCheck.text(getCheckTime + "后可重新发送");
        if(getCheckTime === 0){
            window.clearInterval(checkTimer);
            haveGetCheck = false;
            getCheck.text("获取短信验证码");
            getCheckTime = 120;
            getCheck.removeAttr("disable");
        }
    }


    function hint() {
        if(flag){
            flag = false;
            hit.style.display = "block";
            setTimeout("hit.style.opacity = 1", 0);
            setTimeout("hit.style.opacity = 0", 2000);
            setTimeout('hit.style.display = "none"', 3000);
            setTimeout('hit.innerText=" "', 3100);
        }
        setTimeout('flag = true', 3000);

    }


</script>


</html>
