<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>新闻中心</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <!-- include main css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/featuredContent/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/featuredContent/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/featuredContent/css/jquery.mmenu.all.css"/>

    <link href="${pageContext.request.contextPath}/static/assets/featuredContent/font-awesome-4.5.0/css/font-awesome.min.css" rel='stylesheet' type='text/css' media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/featuredContent/css/animate.css"/>


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/featuredContent/css/style.css"/>

    <!--[if lt IE 9]>
    <script src="http://apps.bdimg.com/libs/html5shiv/r29/html5.min.js"></script>
    <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<jsp:include page="header.jsp"/>
<div>

    <!--banner  start-->
    <section  class="banner_zi">
        <div><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/banner_yuan.jpg" alt=""></div>
    </section>
    <!--banner end-->
    <%--    <div class="head_bar">--%>
    <%--        <span> </span><a href="index.html">   </a> &nbsp; <span class="active"> </span>--%>
    <%--    </div>--%>
    <%--    <div class="travel_con">--%>
    <%--        <div class="top_qie">--%>
    <%--            <a href="court_travel.jsp" class="active">地域山川</a>--%>
    <%--            <a href="court_travel2.jsp">水天一色</a>--%>
    <%--            <a href="court_travel3.jsp">万竹林海</a>--%>
    <%--            <a href="court_travel4.jsp">花草园艺</a>--%>
    <%--            <a href="court_travel5.jsp">鸟兽鱼虫</a>--%>
    <%--        </div>--%>
    <%--        <div class="tra_ul">--%>
    <%--            <ul class="clearfix">--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_1.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(一)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_2.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(二)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_3.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(三)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_4.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(四)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_5.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(五)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_6.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(六)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_7.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(七)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_8.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(八)</a>--%>
    <%--                </li>--%>
    <%--                <li class="wow bounceIn">--%>
    <%--                    <a href="court_travel_show1.1.jsp"><img src="${pageContext.request.contextPath}/static/assets/featuredContent/images/home_9.png" alt="" class="vcenter" /><i></i></a>--%>
    <%--                    <a href="court_travel_show1.1.jsp">地域山川(九)</a>--%>
    <%--                </li>--%>
    <%--            </ul>--%>

    <%--        </div>--%>
    <%--    </div>--%>


    <div class="home_news">
        <div class="news_con">
            <div class="top_tit">
                <span class="span1"><a href="news.jsp">馆内动态</a></span><br />
                <span class="span2">NEWS</span>
            </div>
            <ul>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">游泳馆开馆公告</a>
                        <p>
                            游泳馆(热身池)将于2020年8月8日(周六)开放游泳、培训项目的旺季运营。
                        </p>
                    </div>
                    <div class="news_right">
                        <span>08.06</span>
                        <time>2020</time>
                    </div>
                </li>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">众志成城 抗击疫情 -- 延长闭馆公告</a>
                        <p>
                            为做好新型冠状病毒肺炎的防疫工作，游泳馆将延长闭馆时间，具体开馆日期将根据相关部门的规定和通知另行公告。
                        </p>
                    </div>
                    <div class="news_right">
                        <span>01.30</span>
                        <time>2020</time>
                    </div>
                </li>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">游泳馆春节闭馆公告(新)</a>
                        <p>
                            游泳馆春节期间全天闭馆，节后开馆日期将提前公告，敬请谅解。
                        </p>
                    </div>
                    <div class="news_right">
                        <span>01.23</span>
                        <time>2020</time>
                    </div>
                </li>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">游泳馆春节闭馆公告</a>
                        <p>
                            游泳馆春节期间除夕及初一当天全天闭馆，初二至初六全天运营，祝您春节快乐，鼠年大吉!
                        </p>
                    </div>
                    <div class="news_right">
                        <span>01.21</span>
                        <time>2020</time>
                    </div>
                </li>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">游泳馆闭馆整修公告</a>
                        <p>
                            游泳馆将于2019年12月26日起进行闭馆整修，计划2020年1月18日全新恢复营业。
                        </p>
                    </div>
                    <div class="news_right">
                        <span>12.20</span>
                        <time>2019</time>
                    </div>
                </li>
            </ul>
            <a href="news.jsp" class="more">MORE</a>
        </div>
    </div>

    <div class="home_news">
        <div class="news_con">
            <div class="top_tit">
                <span class="span1"><a href="news.jsp">人员动态</a></span><br />
                <span class="span2">NEWS</span>
            </div>
            <ul>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">关于2020年夏季十佳员工奖励通知</a>
                        <p>
                            为表彰先进，促进工作，公司从全体员工的品行、对游泳馆的贡献、工作能力、工作时间、工作状态等方面进行综合考虑，评选出了2020年夏季十佳员工，并对评选出的优秀员工予以通报表扬和6000元现金的奖励。获奖的员工有...
                        </p>
                    </div>
                    <div class="news_right">
                        <span>08.16</span>
                        <time>2020</time>
                    </div>
                </li>
                <li class="clearfix">
                    <div class="news_left">
                        <a href="news.jsp">关于卢本伟出任我馆副馆长的通知</a>
                        <p>
                            卢本伟同志自当任游泳馆经理一职，工作认真负责，自律自强，屡创佳绩，为表彰其表现，肯定其能力，经研究决定：晋升卢本伟为副馆长，从2020年7月1日起执行，望其在以后的工作中再接再励，再创佳绩。
                        </p>
                    </div>
                    <div class="news_right">
                        <span>07.01</span>
                        <time>2020</time>
                    </div>
                </li>

            </ul>
            <a href="news.jsp" class="more">MORE</a>
        </div>
    </div>



    <!--footer  start-->

    <!--footer  end-->

    <!--移动端  Mmenu-->
    <nav id="mmenu">

        <ul>

            <li><a href="index.html" class="active">首页</a></li>
            <li><a href="scenic_overview.html">景区概况</a></li>
            <li><a href="court_travel.jsp">文苑之旅</a>
                <ul>
                    <li><a href="court_travel.jsp">茶艺中心</a></li>
                    <li><a href="court_travel.jsp">万竹林海</a></li>
                    <li><a href="court_travel.jsp">创意中心</a></li>
                    <li><a href="court_travel.jsp">花草园艺</a></li>
                </ul>
            </li>
            <li><a href="comfortable.html">舒雅住宅</a></li>
            <li><a href="news.jsp">新闻动态</a>
                <ul>
                    <li><a href="news.jsp">公司新闻</a></li>
                    <li><a href="news.jsp">行业新闻</a></li>
                </ul>
            </li>
            <li><a href="feedback.html">留言中心</a></li>
            <li><a href="contact.html">联系我们</a></li>

        </ul>
    </nav>	</div>

<!--Include Js-->
<script src="${pageContext.request.contextPath}/static/assets/featuredContent/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>

<!--移动端导航-->
<script src="${pageContext.request.contextPath}/static/assets/featuredContent/js/jquery.mmenu.all.min.js" type="text/javascript" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/static/assets/featuredContent/js/public.js" type="text/javascript" charset="utf-8"></script>

<!--slick-->
<script src="${pageContext.request.contextPath}/static/assets/featuredContent/js/slick.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/assets/featuredContent/js/wow.js" type="text/javascript" charset="utf-8"></script>

<!--placeholder-->
<script src="${pageContext.request.contextPath}/static/assets/featuredContent/js/jquery.placeholder.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(function(){ $('input, textarea').placeholder(); });
</script>

<!--<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->

</body>
</html>
