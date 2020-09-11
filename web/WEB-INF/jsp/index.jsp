<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <!-- SITE TITLE -->
    <title>冷凉淡忘</title>
    <!-- Favicons -->
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
    <style type="text/css" >
        .contactUsWay:hover{
            transition: linear 500ms;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        #head{
            position: absolute;
            padding-top: 4px;
            z-index: 999;
            transition-duration: 0.1s;
        }
        #head img{
            transition-duration: 0.2s;
            z-index: 29;
        }
        .floatWindows{
            display: none;
            background-color: #fefefe;
            z-index: 10;
            position: fixed;
            border-radius: 5px;
            box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
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


        #more{
            height: 15%;
            width: 70%;
            opacity: 1;
            background-color: gray;
            line-height: 40px;
            margin: 90% auto auto;
            font-size: 14px;
            display: inline-block;
            text-align: center;
            text-decoration: none;
            border-radius: 2px;
            border: white 1px;
            color: white;
            outline: none;
        }
    </style>
<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top  d-flex justify-content-center align-items-center">
    <nav class="nav-menu d-none d-lg-block">
        <ul>
            <li class="active"><a href="${pageContext.request.contextPath}/">冷凉淡忘</a></li>
            <li><a href="#officialContent">官方内容</a></li>
            <li><a href="${pageContext.request.contextPath}/invitation">会馆论坛</a></li>
            <li><a href="${pageContext.request.contextPath}/featuredContent">新闻中心</a></li>
            <li><a href="${pageContext.request.contextPath}/cultivate">游泳培训</a></li>
            <li><a href="#about">关于我们</a></li>
            <li><a href="#contact">联系我们</a></li>
            <c:if test="${account == null}">
                <li><a id="head" href="${pageContext.request.contextPath}/account/login"><img  style="width:50px; height:50px; border-radius:50%; " src="${pageContext.request.contextPath}/static/img/defaultImg.jpg" οnerrοr="this.src='${pageContext.request.contextPath}/static/img/default.jpg'" ></a></li>
                <li><a style="margin-left: 75px" id="password" href="${pageContext.request.contextPath}/account/login">登录</a></li>
                <li> <a id="login" href="${pageContext.request.contextPath}/account/register">注册</a></li>
            </c:if>
            <c:if test="${account != null}">
                <li>
                    <a target="_blank" id="head" href="${pageContext.request.contextPath}/account/bindaccount">
                        <img style="width:50px; height:50px; border-radius:50%; "  src="${pageContext.request.contextPath}${account.avatar}" οnerrοr="this.src='${pageContext.request.contextPath}/static/img/default.jpg'" >
                    </a>
                </li>
            </c:if>
        </ul>
    </nav><!-- .nav-menu -->
</header><!-- End Header -->
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



<section id="hero">
    <div class="hero-container">
        <h1>由游有友</h1>
        <h2>清凉一夏，从这儿开始</h2>
        <a href="#officialContent" class="btn-scroll scrollto" title="Scroll Down"><i class="bx bx-chevron-down"></i></a>
    </div>
</section><!-- End Hero -->

<main id="main">

    <!-- ======= officialContent Section ======= -->
    <section id="officialContent" class="about">
        <div class="container">

            <div class="section-title">
                <span>梦幻泳池</span>
                <h2>梦幻泳池</h2>
                <p>翻开游泳日常的奇幻扉页</p>
            </div>

            <div class="row">
                <div class="image col-lg-4 d-flex align-items-stretch justify-content-center justify-content-lg-start">
                    <a id="more" href="${pageContext.request.contextPath}/featuredContent" class=""  style="z-index: 999; width: 30%; height: 40px; border-radius: 20px; background-color: gainsboro;">新闻中心</a>
                </div>
                <div class="col-lg-8 d-flex flex-column align-items-stretch">
                    <div class="content pl-lg-4 d-flex flex-column justify-content-center">
                        <div class="row">
                            <div class="row-cols-1">
                                <ul style="width: 570px; height: 270px; background: url('${pageContext.request.contextPath}/static/assets/index/img/banner/banner1.jpg')no-repeat center">
                                </ul>
                            </div>
                            <div class="row-cols-1">
                                <ul style="width: 280px; height: 210px; background: url('${pageContext.request.contextPath}/static/assets/index/img/banner/banner2.jpg')no-repeat center">
                                </ul>

                                <ul style="width: 280px; height: 210px; background: url('${pageContext.request.contextPath}/static/assets/index/img/banner/banner4.jpg')no-repeat center">
                                </ul>

                            </div>

                            <div class="row-cols-1" >
                                <ul style="width: 300px; height:210px; background: url('${pageContext.request.contextPath}/static/assets/index/img/banner/banner3.jpg') no-repeat center">
                                </ul>

                                <ul style="width: 280px; height:210px;margin-left: 10px; margin-right: 10px; background:url('${pageContext.request.contextPath}/static/assets/index/img/banner/banner5.jpg')no-repeat center">
                                </ul>
                            </div>
                           <%-- <div class="row-cols-1" >
                                <ul style="width: 280px; height:220px; background: url('${pageContext.request.contextPath}/static/assets/index/img/banner/banner5.jpg')no-repeat center">
                                </ul>
                            </div>--%>




                        </div>





                    </div><!-- End .content-->


                </div>
            </div>

        </div>
    </section>
    <!-- End About Me Section -->

    <!-- ======= My Resume Section ======= -->
    <section id="resume" class="resume">
        <div class="container">

            <div class="section-title">
                <span>常见问题</span>
                <h2>常见问题</h2>
                <p>满足您对游泳馆的探索之心</p>
                <%--                <p>排行最火热的旅游景点</p>--%>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <h3 class="resume-title"></h3>
                    <div class="resume-item pb-0">
                        <h4 >一.游泳馆的营业时间是几点到几点呢？</h4>
                        <p>您好，冷康游泳馆(热身池)自2017年6月15日起执行旺季运营开放时间，2017年6月15日至6月24日，每天营业时间为：早9点至晚21点、停止售票时间：19:20、停止入场时间：19:30、起水时间：20:30、清场时间：21:00，2017年6月25日至9月14日，每天营业时间为：早9点至晚21点30分、停止售票时间：20:20、停止入场时间：20:30、起水时间：21:00、清场时间：21:30，谢谢！</p>
                        <%--                        <p>--%>
                        <%--                        <ul>--%>
                        <%--                            <li>Portland par 127,Orlando, FL</li>--%>
                        <%--                            <li>(123) 456-7891</li>--%>
                        <%--                            <li>alice.barkley@example.com</li>--%>
                        <%--                        </ul>--%>
                        <%--                        </p>--%>
                        <h4>二.请问自驾的话，如何停车，有免费停车券吗?</h4>
                        <p>冷康游泳馆西门 有收费停车场，冷康游泳会员凭有效会员卡可在馆内B1层换领手环的前台领取停车券，可免费停车2小时，欢迎您的光临，谢谢！</p>
                    </div>

                    <h3 class="resume-title"></h3>
                    <div class="resume-item">
                        <h4>三.对教课程如何选择教练？</h4>
                        <p>您可将特殊要求（如：指定教练的姓名）在现场领卡时，备注到学员登记表上，一周内教练员将主动与您取得联系；或您在网站或微信进行培训预约时，选定指定教练即可。</p>
                    </div>
                    <div class="resume-item">
                        <h4>四.有游泳基础可不可以直接学习高阶课程？</h4>
                        <p>您须进行游泳考核，确定您所在的学习阶段。预约考核方法：1.拨打培训部电话19979404609，将您的学员卡号告知工作人员，预约考核日期。2.通过网站平台的“进阶”功能，自助预约考核日期。</p>
                    </div>
                    <div class="resume-item">
                        <h4>五.去深水区游泳需要哪些条件？</h4>
                        <p>须持有xx市深水合格证。如没有，可现场考核：单次考核交10元，无深水证；考深水证需自带一寸照片，交20元。考核通过方可在深水区游泳，考核内容详见场馆公告或电话咨询19979404609。</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <h3 class="resume-title"></h3>
                    <div class="resume-item">
                        <h4>六.幼儿初级课程与幼儿集体课程的区别是什么？</h4>
                        <p> 幼儿初级课程含8节课程，主要针对零基础4-6岁学员，旨在消除孩子恐水心理，掌握漂浮及初级蛙泳技巧。幼儿集体课程含12节课程，针对4-6岁学员，保证学员可以在课程中掌握蛙泳技巧。</p>
                    </div>
                    <div class="resume-item">
                        <h4>七.如何开取发票？</h4>
                        <p>自购买商品后一个月内，持订单号至冷康西门外综合服务中心登记相关信息。发票于15个工作日内开出，并电话通知您前来领取。</p>
                    </div>
                    <div class="resume-item">
                        <h4>八.怎么循序渐进？如何知晓所定课程是否连续？</h4>
                        <p>您好，冷康游泳俱乐部的团体课线上的每次预约都是日期与课次相对应且连续的，按预约日期的顺序往后再次预约(同时预约课次顺序增长)，如您还有疑问，请致电培训部19979404609详细询问，谢谢！</p>
                    </div>
                    <div class="resume-item">
                        <h4>九.套餐三的成人培训，包括全部课程内容吗？就是课程里的蛙泳和自由泳都包含吗？</h4>
                        <p> 您好，成人游泳培训团体课的售价对应的是课程介绍表里S1至S4任一阶段12课时的价格，课程阶段需要按序进行、考核进阶，感谢您的咨询。</p>
                        <br>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End My Resume Section -->

    <!-- ======= My Services Section ======= -->
    <section id="services" class="services">
        <div class="container">

            <div class="section-title">
                <span>游美时刻</span>
                <h2>游美时刻</h2>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/swimming01.jpg/>
                        </div>
                    </div>
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/swimming02.jpg/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/swimming03.jpg/>
                        </div>
                    </div>
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/swimming04.jpg/>
                        </div>
                    </div>
                </div>
            </div>

            <br>
            <br>
            <br>
            <div class="section-title">
                <span>教练风采</span>
                <h2>教练风采</h2>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/coach01.png/>
                        </div>
                    </div>
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/coach02.png/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/coach03.png/>
                        </div>
                    </div>
                    <div class="icon-box">
                        <div>
                            <img src=../static/assets/index/img/coach04.png/>
                        </div>
                    </div>
                </div>
            </div>


            <br>
            <br>
            <br>
            <div class="section-title">
                <span>实时状况</span>
                <h2>实时状况</h2>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box" style="position: relative;left: -75%;">
                        <div>
                            <img src=../static/assets/index/img/swimmingstate.png/>
                        </div>
                    </div>
                </div>
            </div>

            <%--                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">--%>
            <%--                    <div class="icon-box">--%>
            <%--                        <h4 class="title"><a href="">《晚晴》</a></h4>--%>
            <%--                        <p class="description">[唐] 李商隐</p>--%>
            <%--                        <p class="description">深居俯夹城，春去夏犹清。</p>--%>
            <%--                        <p class="description">天意怜幽草，人间重晚晴。</p>--%>
            <%--                        <p class="description">妆并添高阁迥，</p>--%>
            <%--                        <p class="description">微注小窗明。</p>--%>
            <%--                        <p class="description">越鸟巢干后，归飞体更轻。</p>--%>
            <%--                        &lt;%&ndash;                        <p class="description">歌金缕粉团儿</p>&ndash;%&gt;--%>
            <%--                        &lt;%&ndash;                        <p class="description">信人生行乐耳！</p>&ndash;%&gt;--%>
            <%--                    </div>--%>
            <%--                </div>--%>

            <%--                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">--%>
            <%--                    <div class="icon-box">--%>
            <%--                        <h4 class="title"><a href="">《宿建德江》</a></h4>--%>
            <%--                        <p class="description">[唐] 孟浩然</p>--%>
            <%--                        <p class="description">移舟泊烟渚，</p>--%>
            <%--                        <p class="description">日暮客愁新。</p>--%>
            <%--                        <p class="description">野旷天低树，</p>--%>
            <%--                        <p class="description">江清月近人。</p>--%>
            <%--                    </div>--%>
            <%--                </div>--%>

            <%--                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">--%>
            <%--                    <div class="icon-box">--%>
            <%--                        <h4 class="title"><a href="">《紫骝马》</a></h4>--%>
            <%--                        <p class="description">[唐] 李白</p>--%>
            <%--                        <p class="description">紫骝行且嘶，双翻碧玉蹄。</p>--%>
            <%--                        <p class="description">临流不肯渡，似惜锦障泥。</p>--%>
            <%--                        <p class="description">白雪关山远，黄云海戍迷。</p>--%>
            <%--                        <p class="description">挥鞭万里去，安得念春闺。</p>--%>

            <%--                    </div>--%>
            <%--                </div>--%>


        </div>

    </section><!-- End My Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
        <div class="container">

            <div class="owl-carousel testimonials-carousel">

                <div class="testimonial-item">
                    <img src="${pageContext.request.contextPath}/static/assets/index/img/testimonials/img7.jpg" class="testimonial-img" alt="">
                    <h3>布里塔·斯蒂芬</h3>
                    <h4>德国</h4>
                    <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        每个人只要尽全力，展现出最好的一面，就可以为自己感到自豪
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                    </p>
                </div>

                <div class="testimonial-item">
                    <img src="${pageContext.request.contextPath}/static/assets/index/img/testimonials/img5.jpg" class="testimonial-img" alt="">
                    <h3>塞萨尔·小西埃洛</h3>
                    <h4>巴西</h4>
                    <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        就算拿尽荣誉也不缺乏动力。
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                    </p>
                </div>

                <div class="testimonial-item">
                    <img src="${pageContext.request.contextPath}/static/assets/index/img/testimonials/img6.jpg" class="testimonial-img" alt="">
                    <h3>克罗莫维德尤尤</h3>
                    <h4>荷兰</h4>
                    <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        我只期待能有一场状态不错的比赛就够了，不会在意花费了多长时间。
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                    </p>
                </div>

            </div>

        </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Pricing Section ======= -->
    <section id="about" class="pricing">
        <div class="container">

            <div class="section-title">
                <span>关于我们</span>
                <h2>关于我们</h2>
                <p>水急客舟疾 山花拂面香</p>
            </div>

            <div class="row">

                <div class="col-lg-3 col-md-6">
                    <div class="box">
                        <h3>制作人员</h3>
                        <h4>——————</h4>
                        <ul>
                            <li>邬仲宾</li>
                            <li>王富康</li>
                            <li>熊力华</li>
                            <li class="na">...</li>
                        </ul>

                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="box">
                        <h3>项目功能</h3>
                        <%--                        <h4><sup>$</sup>0<span> / month</span></h4>--%>
                        <h4>——————</h4>
                        <ul>
                            <li>发帖看帖</li>
                            <li>查看攻略</li>
                            <li>记录生活</li>
                            <li class="na">...</li>
                        </ul>

                    </div>
                </div>

                <%--                <div class="col-lg-3 col-md-6 mt-4 mt-md-0">--%>
                <%--                    <div class="box featured">--%>
                <%--                        <h3>项目功能</h3>--%>
                <%--                        <h4><sup>$</sup>19<span> / month</span></h4>--%>
                <%--                        <ul>--%>
                <%--                            <li>Aida dere</li>--%>
                <%--                            <li>Nec feugiat nisl</li>--%>
                <%--                            <li>Nulla at volutpat dola</li>--%>
                <%--                            <li>Pharetra massa</li>--%>
                <%--                            <li class="na">Massa ultricies mi</li>--%>
                <%--                        </ul>--%>
                <%--                        <div class="btn-wrap">--%>
                <%--                            <a href="#" class="btn-buy">Buy Now</a>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <div class="col-lg-3 col-md-6 mt-4 mt-lg-0">
                    <div class="box">
                        <h3>主要技术</h3>
                        <%--                        <h4><sup>$</sup>0<span> / month</span></h4>--%>
                        <ul>
                            <li>spring、springmvc、mybatis、maven、 lombok、css、javascript、jquery、jdbc，jsp、servlet、
                                javabean、pojo、dao、mysql、filter、ajax、 jstl、 el、 c3p0、 BootStrap、 UEeditor、MD5、utils、xml、properties、云数据库，tomcat，commonEmail ，面向接口编程......</li>

                        </ul>

                    </div>
                </div>

                <div class="col-lg-3 col-md-6 mt-4 mt-lg-0">
                    <div class="box">

                        <h3>未完待续</h3>
                        <h4>——————</h4>
                        <ul>
                            <li>...</li>
                            <li>...</li>
                            <li>...</li>
                            <li class="na">...</li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Pricing Section -->

    <!-- ======= Contact Me Section ======= -->
    <section id="contact" class="contact">
        <div class="container">

            <div class="section-title">
                <span>联系我们</span>
                <h2>联系我们</h2>
                <p>我们之间的故事从这里开始</p>
            </div>

            <div class="row">

                <div class="col-lg-6">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box ">
                                <i class="bx bx-share-alt "></i>
                                <h3>立即分享</h3>
                                <div class="social-links">
                                    <a href="#" class="wechat"><i class="icofont-wechat"></i></a>
                                    <a href="#" class="sina"><i class="icofont-weibo"></i></a>
                                    <a href="#" class="qq"><i class=" icofont-qq"></i></a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box mt-4 contactUsWay">
                                <i class="bx bx-envelope"></i>
                                <h3>发送邮件</h3>
                                <p>1270886715@qq.com</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box mt-4 contactUsWay">
                                <i class="bx bx-phone-call"></i>
                                <h3>电话咨询</h3>
                                <p>+86 1518 0173 795</p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">
                    <form method="post" role="form" class="php-email-form" action="${pageContext.request.contextPath}/sendMsg">
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="你的名字" data-rule="minlen:4" data-msg="请输入您的姓名" />
                                <div class="validate"></div>
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="你的邮箱" data-rule="email" data-msg="请输入有效的邮箱" />
                                <div class="validate"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="主题" data-rule="minlen:4" data-msg="请输入至少8位数" />
                            <div class="validate"></div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="6" data-rule="required" data-msg="请给我们提点建议" placeholder="内容"></textarea>
                            <div class="validate"></div>
                        </div>
                        <div class="mb-3">
                            <div class="loading">发送中</div>
                            <div class="error-message"></div>
                            <div class="sent-message">您的邮件已经发送 感谢!</div>
                        </div>
                        <div class="text-center"><button type="submit">发送</button></div>
                    </form>
                </div>

            </div>

        </div>
    </section><!-- End Contact Me Section -->

</main><!-- End #main -->

</body>

<!-- Vendor JS Files -->
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/php-email-form/validate.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/counterup/counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/index/vendor/venobox/venobox.min.js"></script>
<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/static/assets/index/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>

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


</script>




</html>
