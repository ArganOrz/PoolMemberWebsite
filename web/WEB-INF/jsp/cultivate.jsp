<%--
  Created by IntelliJ IDEA.
  User: 94762
  Date: 2020/8/24
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>游泳培训</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/cultivate/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/cultivate/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/cultivate/css/responsive.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/cultivate/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/cultivate/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/cultivate/css/bootstrap-datepicker.min.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>
<!-- body -->
<body>
<div class="main-layout inner_page">
<jsp:include page="header.jsp"/>
<!-- end banner -->
<!-- services -->
<div class="services">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage text_align_center ">
                    <h2>专业游泳技能培训</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div id="ho_shad" class="services_box text_align_left">
                    <h3>幼儿培训</h3>
                    <figure><img src="${pageContext.request.contextPath}/static/assets/cultivate/images/kid.jpg" alt="#"/></figure>
                    <p>使用专属的培训泳池，通过新颖的游戏、独特的水上教学方式，提升学习兴趣，在游戏中掌握游泳技能、获得健康、增强体质，同时提高沟通和交往能力，培养孩子自信、自律和独立性，促进孩子的全面发展。</p>
                    <a class="read_more" href="${pageContext.request.contextPath}/kid">Read More</a>
                </div>
            </div>
            <div class="col-md-4">
                <div id="ho_shad" class="services_box text_align_left">
                    <h3>少儿培训</h3>
                    <figure><img src="${pageContext.request.contextPath}/static/assets/cultivate/images/teenager.png" alt="#"/></figure>
                    <p> 少儿学员专属的培训泳池，利用水的浮力、阻力、压力等不稳定特性，通过水中游戏、岸上模仿、水中练习等课程编排，逐步学会标准游泳技术。并在游泳锻炼中获得健康、增强体质，同时提高沟通和交往能力，培养孩子自信、自律和独立性，促进孩子的全面发展。</p>
                    <a class="read_more" href="${pageContext.request.contextPath}/teenager">Read More</a>
                </div>
            </div>
            <div class="col-md-4">
                <div id="ho_shad" class="services_box text_align_left">
                    <h3>成人培训</h3>
                    <figure><img src="${pageContext.request.contextPath}/static/assets/cultivate/images/adult.jpg" alt="#"/></figure>
                    <p>冷康游泳俱乐部为成年学员量身定制高效学习计划，将“学习”和“练习”相结合，在专业教练员的指导下，快速有效的达到游泳学习和健身塑型的双重效果。我们有世界顶级的场馆设施，新颖实用的教学体系，专业负责的教练员，在这里，您将接触到最专业、最安全、最有效的游泳培训课程。</p>
                    <a class="read_more" href="${pageContext.request.contextPath}/adult">Read More</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end services -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="hedingh3 text_align_left">
                                <h3>关于我们</h3>
                                <p>冷康游泳俱乐部有限公司于2020年7月由国家游泳中心有限责任公司（冷康）和南昌领先体育投资管理有限公司共同组建成立，旨在响应全民健身的号召，拓展在体育产业领域的业务，进而对南昌市及全国游泳产业的发展贡献力量。</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="hedingh3 text_align_left">
                                <h3>论坛</h3>
                                <p>冷康游泳馆俱乐部创办了属于我们的论坛，您在游泳馆遇到的奇闻轶事都可以在这儿和大家分享，您觉得我们需要改进的地方可以对我们提出，我们承诺，尽力满足每一位游客的要求，欢迎广大游客热烈参与讨论！</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="hedingh3 text_align_left">
                                <h3>菜单</h3>
                                <ul class="menu_footer">
                                    <li><a href="${pageContext.request.contextPath}/">首页</a></li>
                                    <li><a href="${pageContext.request.contextPath}/invitation">旅游论坛</a></li>
                                    <li><a href="${pageContext.request.contextPath}/featuredContent">新闻中心</a></li>
                                    <li><a href="${pageContext.request.contextPath}/cultivate">游泳培训</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="hedingh3  text_align_left">
                                <h3>欢迎致电/邮箱</h3>
                                <form id="colof" class="form_subscri">
                                    <input class="newsl" placeholder="Email" type="text" name="Email">
                                    <button class="subsci_btn">Subscribe</button>
                                </form>
                                <ul class="top_infomation">
                                    <li><i class="fa fa-phone" aria-hidden="true"></i>
                                        +01 1234567890
                                    </li>
                                    <li><i class="fa fa-envelope" aria-hidden="true"></i>
                                        <a href="Javascript:void(0)">demo@gmail.com</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="follow text_align_center">
                            <h3>Follow Us</h3>
                            <ul class="social_icon ">
                                <li><a href="Javascript:void(0)"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="Javascript:void(0)"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="Javascript:void(0)"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="Javascript:void(0)"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- Javascript files-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/custom.js"></script>
</div>
</body>

</html>
