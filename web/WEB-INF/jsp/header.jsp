<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <link href="${pageContext.request.contextPath}/static/assets/index/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/static/assets/index/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Vendor CSS Files -->
    <link href="${pageContext.request.contextPath}/static/assets/index/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/index/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/index/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/index/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/index/vendor/venobox/venobox.css" rel="stylesheet">



    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/static/assets/index/css/style.css" rel="stylesheet">
    <style type="text/css">
        #head{
            position: absolute;
            padding-top: 4px;
            z-index: 999;
            transition-duration: 0.1s;
        }
        #head img{
            width:50px;
            height: 50px;
            background-size: 100% 100%;
            transition-duration: 0.2s;
            z-index: 999;
        }
        .floatWindows{
            display: none;
            background-color: #fefefe;
            z-index: 1;
            float: outside;
            border-radius: 5px;
            box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
            position: fixed;
        }
        #before-login{
            width: 360px;
            height: 320px;
        }

        #before-login img{
            width: 93%;
            height: 60%;
            margin-left: 4%;

        }
        #before-login p{
            margin-left: 5%;
            padding-top: 4%;
        }


        #btn2{
            background-color: #00a1d6;
            color: #fff;
        }
        #btn1{
            background-color: #fff;
            color: #00a1d6;
        }
        #before-login a{
            height: 14%;
            width: 44%;
            line-height: 40px;
            margin-top: 16px;
            margin-left: 4%;
            font-size: 14px;
            display: inline-block;
            text-align: center;
            text-decoration: none;
            border-radius: 2px;
            border: 1px solid #00a1d6;
            outline: none;
        }

        #after-login{
            width: 280px;
            height: 620px;
            display: flex;
            flex-direction: column;
            align-items: center;

        }

        #after-login a{
            color: black;
            width: 100%;
            height: 10%;
            line-height: 40px;
            text-align: center;
        }

    </style>

    <style>
        #header{
            background-color: #333333;
            z-index: 500;
            display: none;
        }

    </style>


</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top  d-flex justify-content-center align-items-center">
    <nav class="nav-menu d-none d-lg-block">
        <ul>
            <li class="active"><a href="${pageContext.request.contextPath}/">冷凉淡忘</a></li>
            <li><a href="${pageContext.request.contextPath}/">官方内容</a></li>
            <li><a href="${pageContext.request.contextPath}/invitation">会馆论坛</a></li>
            <li><a href="${pageContext.request.contextPath}/featuredContent">新闻中心</a></li>
            <li><a href="${pageContext.request.contextPath}/cultivate">游泳培训</a></li>

            <c:if test="${account == null}">
                <li><a id="head" href="${pageContext.request.contextPath}/account/login"><img  style="width:50px; height:50px; border-radius:50%; " src="${pageContext.request.contextPath}/static/img/defaultImg.jpg" οnerrοr="this.src='${pageContext.request.contextPath}/static/img/default.jpg'" ></a></li>
                <li><a style="margin-left: 75px" id="password" href="${pageContext.request.contextPath}/account/login">登录</a></li>
                <li> <a id="login" href="${pageContext.request.contextPath}/account/register">注册</a></li>
            </c:if>
            <c:if test="${account != null}">
                <li>
                    <a target="_blank" id="head" href="${pageContext.request.contextPath}/account/bindaccount">
                        <img style="width:50px; height:50px; border-radius:50%; "  src="${pageContext.request.contextPath}${account.avatar}" οnerrοr="this.src='${pageContext.request.contextPath}/static/img/defaultImg.jpg'" >
                    </a>
                </li>
            </c:if>
        </ul>
    </nav><!-- .nav-menu -->
</header><!-- End Header -->

<div style="background-color: rgba(0,0,0,0); height: 60px" id="headerbox"></div>
<c:if test="${account == null}">
    <div id="before-login" class="floatWindows">
        <p>登录后你可以: </p>
        <img >
        <a id="btn1" href="${pageContext.request.contextPath}/account/login">登录</a>
        <a id="btn2" href="${pageContext.request.contextPath}/account/register">注册</a>
    </div>
</c:if>
<c:if test="${account != null}">
    <div id="after-login" class="floatWindows">
        <p style="margin-top: 40px">${account.name}</p>
        <p >${account.introduction}</p>
        <a onclick="exitLogin()"> <div style=" margin-top: 12px; margin-left: 40px; float: left" class="icofont-exit"></div><div style="height: 50px; width:100px; float: right; margin-right: 80px">退出登录</div></a>
    </div>
</c:if>

</body>

<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Vendor JS Files -->
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/waypoints/jquery.waypoints.min.js"></script>

<script src="${pageContext.request.contextPath}/static/assets/index/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/php-email-form/validate.js"></script>

<script src="${pageContext.request.contextPath}/static/assets/index/vendor/counterup/counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/venobox/venobox.min.js"></script>
<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/static/assets/index/js/main.js"></script>

<script>
    var head = $("#head");
    var headImg = head.children('img');
    var before = $("#before-login");
    var after = $("#after-login");
    var w;
    var isLogined;
    if(${account != null}){
        w = after;
        isLogined = true;
    }else{
        w = before;
        isLogined = false;
    }

    //判断鼠标是否移出头像
    var flaghead = false;
    //判断鼠标是否移出窗口
    var flagwindows = true;

    //窗口是否已经显示
    var flagshow = false;

    var offset = head.offset();
    w.css({'top':head.height()+ 20, 'left': offset.left - w.width()/2 + head.width()});

    $(window).resize(function () {          //当浏览器大小变化时
        var offset = head.offset();
        w.css({'top':head.height()+ 20, 'left': offset.left - w.width()/2 + head.width()});

    });


    w.hide();
    head.mouseenter(function () {

        if(!flagshow){

            w.fadeIn(200);
            flagshow = true;
            if(isLogined){
                head.css({'position':'absolute','top':'10px'});
                headImg.css({'width':75, 'height':75})
            }

            flaghead = false;
        }





    });
    head.mouseleave(function () {
        flaghead  = true;

        setTimeout(fade,400);
    });
    w.mouseenter(function () {
        flagwindows = false;
    });
    w.mouseleave(function () {
        flagwindows = true;
        setTimeout(fade,400);
    });
    function fade() {
        if(flaghead && flagwindows){
            head.css({'top':'0px'});
            headImg.css({'position':'relative','width':50, 'height':50});
            w.fadeOut(200);
            setTimeout(function () {
                flagshow = false;
            }, 100);

        }

    }

    function exitLogin(){
        $.get("${pageContext.request.contextPath}/account/exitLogin", function (data) {
            if(data === 'correct'){
                alert("退出成功");
            }
            location.reload();
        })
    }




    $("#headerbox").height($("#header").height());

</script>



</html>
