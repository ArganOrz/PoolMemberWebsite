<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>等你回家</title>
    <style type="text/css">
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
            padding: 0;
            font: 16px/20px microsft yahei;
        }
        .wrap {
            width: 100%;
            height: 100%;
            padding: 10% 0;
            position: fixed;
            opacity: 0.8;
            background: linear-gradient(to bottom right,#000000, #656565);
            background: -webkit-linear-gradient(to bottom right,#50a3a2,#53e3a6);
        }
        .btnn{
            position: relative;
            margin-top: -4px;
            top:-58px;
            left: 70%;
            width:82px;
            height: 36px;
            border: 1px solid #fff;
            background-color: #FFFFFF;
            font-size:26px;
            color: #a3c6c2;
            cursor: pointer;
            font-family: "neo";
            transition: .25s;
        }
        .btnn:hover{
            background: rgba(255,255,255,.25);
        }
        .container {
            width: 50%;
            margin: 0 auto;
        }
        .container h1 {
            text-align: center;
            color: #FFFFFF;
            font-weight: 500;
        }
        .container input {
            width: 320px;
            display: block;
            height: 36px;
            border: 0;
            outline: 0;
            padding: 6px 10px;
            line-height: 24px;
            margin: 26px auto;
            -webkit-transition: all 0s ease-in 0.1ms;
            -moz-transition: all 0s ease-in 0.1ms;
            transition: all 0s ease-in 0.1ms;
        }
        .container input[type="text"]{
            background-color: #FFFFFF;
            font-size: 16px;
            color: #50a3a2;
        }
        .container input[type="submit"] {
            font-size: 16px;
            letter-spacing: 2px;
            background-color: #FFFFFF;
        }
        .container input:focus {
            width: 400px;
        }
        .container input[type='submit']:hover {
            cursor: pointer;
            width: 400px;
        }
        .to_login{
            color: #a7c4c9;
        }
        .text{
            color: #e2dfe4;
        }
        .wrap ul {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -20;
        }
        .wrap ul li {
            list-style-type: none;
            display: block;
            position: absolute;
            bottom: -120px;
            width: 15px;
            height: 15px;
            z-index: -8;
            border-radius: 50%;
            box-shadow: inset -30px -30px 75px rgba(0, 0, 0, .2),
            inset 0px 0px 5px rgba(0, 0, 0, .5),
            inset -3px -3px 5px rgba(0, 0, 0, .5),
            0 0 20px rgba(255, 255, 255, .75);
            background-color:rgba(255, 255, 255, 0.15);
            animotion: square 25s infinite;
            -webkit-animation: square 25s infinite;
            -o-animation: square 25s infinite;
            -moz-animation: square 25s infinite;
            -ms-animation: square 25s infinite;
        }
        .wrap ul li:nth-child(1) {
            left: 0;
            animation-duration: 10s;
            -moz-animation-duration: 10s;
            -o-animation-duration: 10s;
            -ms-animation-duration: 10s;
            -webkit-animation-duration: 10s;
        }
        .wrap ul li:nth-child(2) {
            width: 40px;
            height: 40px;
            left: 10%;
            animation-duration: 15s;
            -moz-animation-duration: 15s;
            -o-animation-duration: 15s;
            -ms-animation-duration: 15s;
            -webkit-animation-duration: 11s;
        }
        .wrap ul li:nth-child(3) {
            left: 20%;
            width: 25px;
            height: 25px;
            animation-duration: 12s;
            -moz-animation-duration: 12s;
            -o-animation-duration: 12s;
            -ms-animation-duration: 12s;
            -webkit-animation-duration: 12s;
        }
        .wrap ul li:nth-child(4) {
            width: 50px;
            height: 50px;
            left: 30%;
            -webkit-animation-delay: 3s;
            -moz-animation-delay: 3s;
            -o-animation-delay: 3s;
            animation-delay: 3s;
            animation-duration: 12s;
            -moz-animation-duration: 12s;
            -o-animation-duration: 12s;
            -ms-animation-duration: 12s;
            -webkit-animation-duration: 12s;
        }
        .wrap ul li:nth-child(5) {
            width: 60px;
            height: 60px;
            left: 40%;
            animation-duration: 10s;
            -moz-animation-duration: 10s;
            -o-animation-duration: 10s;
            -ms-animation-duration: 10s;
            -webkit-animation-duration: 10s;
        }
        .wrap ul li:nth-child(6) {
            width: 75px;
            height: 75px;
            left: 50%;
            -webkit-animation-delay: 7s;
            -moz-animation-delay: 7s;
            -o-animation-delay: 7s;
            -ms-animation-delay: 7s;
            animation-delay: 7s;
        }
        .wrap ul li:nth-child(7) {
            left: 60%;
            width: 30px;
            height: 30px;
            animation-duration: 8s;
            -moz-animation-duration: 8s;
            -o-animation-duration: 8s;
            -webkit-animation-duration: 8s;
            -ms-animation-duration: 8s;
        }
        .wrap ul li:nth-child(8) {
            width: 90px;
            height: 90px;
            left: 70%;
            -webkit-animation-delay: 4s;
            -moz-animation-delay: 4s;
            -o-animation-delay: 4s;
            -ms-animation-delay: 4s;
            animation-delay: 4s;
        }
        .wrap ul li:nth-child(9) {
            width: 50px;
            height: 50px;
            left: 80%;
            animation-duration: 20s;
            -moz-animation-duration: 20s;
            -o-animation-duration: 20s;
            -webkit-animation-duration: 20s;
            -ms-animation-duration: 20s;
        }
        .wrap ul li:nth-child(10) {
            width: 75px;
            height: 75px;
            left: 90%;
            -webkit-animation-delay: 6s;
            -moz-animation-delay: 6s;
            -o-animation-delay: 6s;
            -ms-animation-delay: 6s;
            animation-delay: 6s;
            animation-duration: 30s;
            -moz-animation-duration: 30s;
            -o-animation-duration: 30s;
            -webkit-animation-duration: 30s;
            -ms-animation-delay: 30s;
        }
        @keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0)
            }
            100% {
                bottom: 800px;
                -webkit-transform: translateY(-500);
                transform: translateY(-500)
            }
        }
        @-webkit-keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0)
            }
            100% {
                bottom: 400px;
                -webkit-transform: translateY(-500);
                transform: translateY(-500)
            }
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="wrap">
        <div id="container1" class="container" >
            <h1 style="color: white; margin: 0; text-align: center">找回密码</h1>
            <input id="email" type="text" placeholder="你的邮箱"/>
                <input id="a" type="text" placeholder="验证码"/>

                <button class="btnn" id="checkCode" onclick="get_check()" type="button" style="font-size: 13px;">获取验证码</button>

                       <input id="submit" type="submit" value="提交"/>

        </div>

        <div id="container2"   class="container" style="display: none">
                    <h1 style="color: white; margin: 0; text-align: center">重置密码</h1>
            <input id="newPassword" type="password" placeholder="新密码"/>
            <input id="confirmNewPassword" type="password" placeholder="确认密码"/>
             <input id="submitNewPassword" type="submit" value="确认修改"/>

        </div>

               <p class="change_link" style="text-align: center">
               <span class="text">已有账号？</span>
               <a href="${pageContext.request.contextPath}/account/login" class="to_login"> 去登陆！</a>
              </p>

        <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
</div>

</body>

<script>



   /* $("#submit").click(function () {
        $.get("/account/confirmFindPasswordCheckCode?findPasswordCheckCode="+$("#a").val(),function (date) {
            if(date === 'correct'){
                $("#container1").css({'display':"none"});
                $("#container2").css({'display':"block"});
            }
        })
    });*/
    $(function () {
        //表单提交时，调用校验方法
        $("#submit").click(function () {
            $.get("${pageContext.request.contextPath}/account/confirmFindPasswordCheckCode?findPasswordCheckCode="+$("#a").val(),function (date) {
                if(date === 'correct'){
                    $("#container1").css({'display':"none"});
                    $("#container2").css({'display':"block"});
                }
                else {
                    alert('验证码错误');
                }
            })
        });
    });



    $("#submitNewPassword").click(function () {
        $.post("${pageContext.request.contextPath}/account/alterPassword",{
            "newPassword":$("#newPassword").val(),
            "phone":$("#email").val()
        },function (date) {
            alert(date);
            window.location= "/account/login";
        })
    });

    $("#checkCode").click(function () {
        $.get("${pageContext.request.contextPath}/account/getFindPasswordCheckCode?phone="+$("#email").val(),function (date) {
            alert(date);

        })
    })

</script>
</html>
