<%--
  Created by IntelliJ IDEA.
  User: 94762
  Date: 2020/8/26
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>幼儿游泳培训</title>
    <meta name="keywords" content="网站_幼儿" />
    <meta name="description" content="网站_幼儿" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="format-detection" content="telephone=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!--theme-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/kid/css/style.css" rel="stylesheet"><!-- 页面css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/kid/css/style.css" rel="stylesheet"><!-- 页面css -->
    <!--[if lt IE 9 ]>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/kid/css/fixoldie.css">
    <![endif]-->
    <link href="${pageContext.request.contextPath}/static/assets/kid/css/scrollable-horizontal.css" rel="stylesheet" type="text/css" /><!-- 切换轮播css -->
    <link href="${pageContext.request.contextPath}/static/assets/kid/css/scrollable-buttons.css" rel="stylesheet" type="text/css" /><!-- 切换轮播css -->
    <link href="${pageContext.request.contextPath}/static/assets/kid/css/message.css" rel="stylesheet" type="text/css" /><!-- 提示信息/消息css -->


    <!--JS-->
    <script src="${pageContext.request.contextPath}/static/assets/kid/js/jquery.1.11.3.min.js"></script><!-- jquery js -->

    <script src="${pageContext.request.contextPath}/static/assets/kid/js/base.js"></script><!-- 页面 js -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/jquery.tools.js"></script><!-- jquery tools js -->


    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/echarts.js"></script><!-- 图表工具js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/echarts.min.js"></script><!-- 图表工具js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/Chart.js"></script><!-- 图表工具js -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/uuid.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/jsbn.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/prng4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/rng.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/rsa.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/base64.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/jquery.validate.js"></script><!-- jquery validate js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/common.js"></script><!-- common 引用 js -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/jquery.placeholder.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/kid/css/idialog.css"/><!-- artdialog弹出框css-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/jquery.artDialog.js"></script><!-- artdialog弹出框js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/admincustom.js"></script>

    <!--验证框架自定义样式-->
    <link type="text/css" href="${pageContext.request.contextPath}/static/assets/kid/css/tip-yellow.css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/kid/js/jquery.poshytip.js"></script>




    <!--<script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>-->
    <!--<script type="text/javascript" src="/resources/naclub/nivo-slider/jquery.nivo.slider.js"></script>--><!-- 图片轮播js -->		<style type="text/css">
    .coach-card{width: 450px;}
</style>
    <script>
        function select_natatorium(id){
            $.get("/shop/natatorium/select_natatorium.jhtml?id="+id,function(){
                location.reload();
            },"json");
        }
    </script>
</head>
<body>
<jsp:include page="header.jsp"/>

<!--wrapper-->
<div class="container">


    <div class="wrap_main">
        <!--main wrap start-->
        <div class="swimming-train kid_swimming">

            <!--课程介绍-->
            <div class="advanced-section">
                <div class="train-lr clearfix">
                    <div class="train-l">
                        <h2 class="train-title blue">课程介绍</h2>
                    </div>
                    <div class="train-r"></div>
                </div>
                <p class="train-desc">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用专属的培训泳池，通过新颖的游戏、独特的水上教学方式，提升学习兴趣，在游戏中掌握游泳技能、获得健康、增强体质，同时提高沟通和交往能力，培养孩子自信、自律和独立性，促进孩子的全面发展。
                    <img src="${pageContext.request.contextPath}/static/assets/kid/images/yr.jpg" alt=""/>
                </p>
            </div>
            <!--课程时间表-->
            <div class="advanced-section">
                <div class="train-lr clearfix">
                    <div class="train-l">
                        <h2 class="train-title blue">课程时间表（七天）</h2>
                    </div>
                    <div class="train-r">
                        <ul class="class-table_table_legend">
                            <li><span class="point cyan"></span>1对1课程</li>
                            <li><span class="point green"></span>1对2课程</li>
                            <li><span class="point purple"></span>1对多课程</li>
                        </ul>
                    </div>
                </div>
                <div class="class-table">
                    <table>
                        <thead>
                        <tr>
                            <th></th>
                            <th>
                                <em class="date-today"></em>
                                <strong>周
                                    三
                                </strong>
                                <sub>08-26</sub>
                            </th>
                            <th>
                                <strong>周
                                    四
                                </strong>
                                <sub>08-27</sub>
                            </th>
                            <th>
                                <strong>周
                                    五
                                </strong>
                                <sub>08-28</sub>
                            </th>
                            <th>
                                <strong>周
                                    六
                                </strong>
                                <sub>08-29</sub>
                            </th>
                            <th>
                                <strong>周
                                    日
                                </strong>
                                <sub>08-30</sub>
                            </th>
                            <th>
                                <strong>周
                                    一
                                </strong>
                                <sub>08-31</sub>
                            </th>
                            <th>
                                <strong>周
                                    二
                                </strong>
                                <sub>09-01</sub>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>
                                09:00~11:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261092001111'></span>
                                <span class="point purple" style="position: absolute;" attr='20201081261092001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081271092001113'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081281092001111'></span>
                                <span class="point purple" style="position: absolute;" attr='20201081281092001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081291092001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081301092001113'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                10:00~12:00
                            </th>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081261102001113'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081271102001111'></span>
                                <span class="point purple" style="position: absolute;" attr='20201081271102001113'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081281102001111'></span>
                                <span class="point purple" style="position: absolute;" attr='20201081281102001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081291102001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081301102001113'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                11:00~13:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261112001111'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                12:00~14:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261122001111'></span>
                                <span class="point purple" style="position: absolute;" attr='20201081261122001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081271122001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081281122001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081291122001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081301122001113'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                14:00~16:00
                            </th>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081261142001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081271142001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081281142001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081291142001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081301142001113'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                16:00~18:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261162001111'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081271162001111'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081281162001111'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                17:00~19:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261172001111'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081271172001111'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                18:00~20:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261182001111'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081281182001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081291182001113'></span>
                            </td>
                            <td>
                                <span class="point purple" style="position: absolute;" attr='20201081301182001113'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                19:00~21:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261192001111'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                20:00~22:00
                            </th>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081261202001111'></span>
                            </td>
                            <td>
                                <span class="point cyan" style="position: absolute;" attr='20201081271202001111'></span>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="display:none;" id="getClass" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="getOrDefault" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> getOrDefau</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281182001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：18:40:00-19:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281162001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：16:00:00-17:00:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="replace" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="containsValue" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> containsVa</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="put" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="empty" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="compute" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081301092001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-30</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:15:00-10:15:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081291102001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-29</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:30:00-11:30:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271202001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：20:00:00-21:00:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="merge" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271092001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:15:00-10:15:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081291182001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-29</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：18:40:00-19:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081291092001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-29</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:15:00-10:15:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="entrySet" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="containsKey" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> containsKe</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081291142001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-29</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：14:00:00-15:00:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081291122001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-29</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：12:40:00-13:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261162001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：16:00:00-17:00:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="size" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261092001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:15:00-10:15:00 (曾其良)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261092001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:25:00-10:25:00 (宋海洋)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261122001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：12:40:00-13:40:00 (杨晨阳)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261182001110" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：18:40:00-19:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261122001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：12:50:00-13:50:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261182001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：18:35:00-17:35:00 (关爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261102001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:30:00-11:30:00 (井锁柱)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261142001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：14:00:00-15:00:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="computeIfAbsent" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> computeIfA</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="values" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="replaceAll" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="remove" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271142001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：14:00:00-15:00:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081301182001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-30</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：18:40:00-19:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="hashCode" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="putAll" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="get" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271102001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:30:00-11:30:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271162001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：16:00:00-17:00:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271172001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：17:20:00-18:20:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271122001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：12:40:00-13:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271182001110" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：18:40:00-19:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="class" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="keySet" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081271102001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-27</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:20:00-11:20:00 (井锁柱)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081301102001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-30</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:30:00-11:30:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="forEach" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="isEmpty" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="clear" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081301122001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-30</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：12:40:00-15:40:00 (冯臻臻)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081301142001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-30</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：14:00:00-15:00:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281122001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：12:40:00-13:40:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="computeIfPresent" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> computeIfP</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281142001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：14:00:00-15:00:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281102001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:20:00-11:20:00 (井锁柱)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="equals" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281102001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：10:30:00-11:30:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="clone" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261112001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：11:00:00-12:00:00 (窦小刚)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="toString" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> </sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261172001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    5
                                    节课
                                </dt>
                                <dd>第1节课：17:00:00-18:00:00 (窦小刚)</dd>
                                <dd>第2节课：17:10:00-18:10:00 (宋海洋)</dd>
                                <dd>第3节课：17:15:00-18:15:00 (严劲松)</dd>
                                <dd>第4节课：17:20:00-18:20:00 (刘爽)</dd>
                                <dd>第5节课：17:25:00-18:25:00 (曾其良)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261192001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    2
                                    节课
                                </dt>
                                <dd>第1节课：19:00:00-20:00:00 (窦小刚)</dd>
                                <dd>第2节课：19:50:00-20:50:00 (宋海洋)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281092001113" class="class-table_card purple" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>


                                1对6课程
                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:15:00-10:15:00 (严劲松)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="putIfAbsent" class="class-table_card " style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>



                            </h2>
                            <sup> putIfAbsen</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    0
                                    节课
                                </dt>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081281092001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-28</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：09:10:00-10:10:00 (井锁柱)</dd>
                            </dl>
                        </div>
                    </div>
                    <div style="display:none;" id="20201081261202001111" class="class-table_card cyan" style="left: 195px;top: 171px">
                        <div class="class-table_card_inner">
                            <h2>
                                1对1课程


                            </h2>
                            <sup> 2020-08-26</sup>
                            <hr class="class-table_card_hr" />
                            <dl class="class-table_card_class">
                                <dt>
                                    本时段共
                                    1
                                    节课
                                </dt>
                                <dd>第1节课：20:00:00-21:00:00 (刘爽)</dd>
                            </dl>
                        </div>
                    </div>

                    <script>
                        $(document).ready(function () {
                            $('div.class-table span.point').mouseover( function () {
                                if($(this).offset().left > 800){
                                    var _$this = $(this);
                                    var attr= $(this).attr("attr");
                                    _$this.css("position", "absolute");//让这个层可以绝对定位
                                    $('div.class-table .class-table_card').hide();
                                    var x = _$this.offset().left + _$this.width()+10-300;//获取这个浮动层的left
                                    var y=_$this.offset().top;
                                    var div = $("#"+attr); //要浮动在这个元素旁边的层
                                    div.css("position", "absolute");//让这个层可以绝对定位
                                    div.addClass("arrow_right");
                                    var divy=div.height();
                                    y=y-divy/2;
                                    div.show();
                                    div.offset({left:x,top:y});
                                }else{
                                    var _$this = $(this);
                                    var attr= $(this).attr("attr");
                                    _$this.css("position", "absolute");//让这个层可以绝对定位
                                    $('div.class-table .class-table_card').hide();
                                    var x = _$this.offset().left + _$this.width()+10;//获取这个浮动层的left
                                    var y=_$this.offset().top;
                                    var div = $("#"+attr); //要浮动在这个元素旁边的层
                                    div.css("position", "absolute");//让这个层可以绝对定位
                                    var divy=div.height();
                                    //div.css("left", x);
                                    y=y-divy/2;
                                    div.offset({left:x,top:y});
                                    //alert(x+"-"+y);
                                    //div.css("top", _$this.offset().top);
                                    div.show();
                                    div.offset({left:x,top:y});
                                    //alert(div.offset().left+"---"+div.offset().top);
                                }
                            });
                        });
                        $('div.class-table .class-table_card').mouseleave( function () {
                            $('div.class-table .class-table_card').hide();
                        });
                    </script>
                </div>
            </div>

            <!--学习阶段表-->
            <div class="advanced-section">
                <div class="train-lr clearfix">
                    <div class="train-l">
                        <h2 class="train-title orange">学习阶段表</h2>
                    </div>
                    <div class="train-r"></div>
                </div>
                <p class="train-desc">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;针对15-65岁学员，每节课60分钟（含陆上训练），每班人数6-8人。可上课时间由冷康游泳俱乐部培训部统一安排，具体上课时间由学员自行预约选择。每12课时为一个教学等级，每教学等级的课程建议在4个月内完成。每等级的12课时学习后，进行课程考核，如未通过，则学员免费补课，直至通过课程考核；超过4个月完成12课时学习后，进行考核，如未通过，则学员补课需支付补课费用（60元/节）。
                </p>
                <h3 class="train-title_sup">课程顺序：</h3>
                <div class="stage-table">
                    <table>
                        <thead>
                        <tr>
                            <th width="16%"></th>
                            <th width="28%">
                                <div class="stage-table_stage-tit pink">幼儿</div>
                            </th>
                            <th width="28%">
                                <div class="stage-table_stage-tit yellow">少儿</div>
                            </th>
                            <th width="28%">
                                <div class="stage-table_stage-tit blue">成人</div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>
                                <h2 class="stage-table_stage-code">S0</h2>
                                <h3 class="stage-table_stage-name">启蒙</h3>
                                <sup>共6节课</sup>
                            </th>
                            <td>
                                <p class="stage-table_table_desc">针对幼儿的启蒙阶段的基础训练</p>
                            </td>
                            <td>
                                <p class="stage-table_table_skip">跳过</p>
                            </td>
                            <td>
                                <p class="stage-table_table_skip">跳过</p>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <h2 class="stage-table_stage-code">S1</h2>
                                <h3 class="stage-table_stage-name">蛙泳一级</h3>
                                <sup>共12节课</sup>
                            </th>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S1-1</dt>
                                            <dd>
                                                <h4>掌握闭气漂浮技巧</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S1-2</dt>
                                            <dd>
                                                <h4>水中手臂分解练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S1-3</dt>
                                            <dd>
                                                <h4>蛙泳连贯技术动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S1-1</dt>
                                            <dd>
                                                <h4>蹬边扶板漂浮加腿部动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S1-2</dt>
                                            <dd>
                                                <h4>划水抬头动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S1-3</dt>
                                            <dd>
                                                <h4>学习完整蛙泳配合</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S1-1</dt>
                                            <dd>
                                                <h4>漂浮时的连续蛙泳腿部动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S1-2</dt>
                                            <dd>
                                                <h4>蛙泳手部及完整动作教学</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S1-3</dt>
                                            <dd>
                                                <h4>掌握完整蛙泳技术动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <h2 class="stage-table_stage-code">S2</h2>
                                <h3 class="stage-table_stage-name">蛙泳二级</h3>
                                <sup>共12节课</sup>
                            </th>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S2-1</dt>
                                            <dd>
                                                <h4>扶板规范腿部动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S2-2</dt>
                                            <dd>
                                                <h4>划水抬头动作协调</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S2-3</dt>
                                            <dd>
                                                <h4>踩水加蛙泳长游技术</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S2-1</dt>
                                            <dd>
                                                <h4>规范徒手蛙泳腿部动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S2-2</dt>
                                            <dd>
                                                <h4>腿夹板双手呼吸配合</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S2-3</dt>
                                            <dd>
                                                <h4>踩水加蛙泳长游技术</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S2-1</dt>
                                            <dd>
                                                <h4>徒手连续的蛙泳腿部动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S2-2</dt>
                                            <dd>
                                                <h4>学习蛙泳连贯技术动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S2-3</dt>
                                            <dd>
                                                <h4>完善蛙泳技术动作</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <h2 class="stage-table_stage-code">S3</h2>
                                <h3 class="stage-table_stage-name">自由泳一级</h3>
                                <sup>共12节课</sup>
                            </th>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S3-1</dt>
                                            <dd>
                                                <h4>自由泳腿部动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S3-2</dt>
                                            <dd>
                                                <h4>连续单面手臂动作加换气</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S3-3</dt>
                                            <dd>
                                                <h4>连续自由泳动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S3-1</dt>
                                            <dd>
                                                <h4>自由泳腿部动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S3-2</dt>
                                            <dd>
                                                <h4>连续单面手臂动作加换气</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S3-3</dt>
                                            <dd>
                                                <h4>连续自由泳动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S3-1</dt>
                                            <dd>
                                                <h4>自由泳腿部动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S3-2</dt>
                                            <dd>
                                                <h4>连续单面手臂动作加换气</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S3-3</dt>
                                            <dd>
                                                <h4>连续自由泳动作练习</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <h2 class="stage-table_stage-code">S4</h2>
                                <h3 class="stage-table_stage-name">自由泳二级</h3>
                                <sup>共12节课</sup>
                            </th>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S4-1</dt>
                                            <dd>
                                                <h4>规范自由泳动作节奏</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S4-2</dt>
                                            <dd>
                                                <h4>手臂动作练习加连续单面换气</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S4-3</dt>
                                            <dd>
                                                <h4>规范整体动作加长游技术</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S4-1</dt>
                                            <dd>
                                                <h4>规范自由泳动作节奏</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S4-2</dt>
                                            <dd>
                                                <h4>手臂动作练习加连续单面换气</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S4-3</dt>
                                            <dd>
                                                <h4>规范整体动作加长游技术</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="stage-table_table_class">
                                    <li>
                                        <dl>
                                            <dt>S4-1</dt>
                                            <dd>
                                                <h4>规范自由泳动作节奏</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S4-2</dt>
                                            <dd>
                                                <h4>手臂动作练习加连续单面换气</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>S4-3</dt>
                                            <dd>
                                                <h4>规范整体动作加长游技术</h4>
                                                <sup>共4节课</sup>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="stage-table_stage_s5">
                            <th>
                                <h2 class="stage-table_stage-code">S5</h2>
                                <h3 class="stage-table_stage-name">自定义课程</h3>
                                <sup>共12节课</sup>
                            </th>
                            <td colspan="3">
                                <ol>
                                    <li>1.本课程仅针对1对1和1对2的学员。</li>
                                    <li>2.自定义课程不受S1~S4的考核限制，学员可以任意选择泳姿（蛙泳、自由泳、仰泳、蝶泳），教练会进行合理的教学安排。</li>
                                </ol>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!--什么是s1/s2/s3/s4-->
            <div class="advanced-section">
                <div class="train-lr clearfix">
                    <div class="train-l">
                        <h2 class="train-title black">什么是S1/S2/S3/S4</h2>
                    </div>
                    <div class="train-r"></div>
                </div>
                <div class="advanced-line-section">
                    <div class="advanced-line blue">
                        <div class="advanced-line_cont">
                            <dl>
                                <dt>
                                    <em>S1</em>=蛙泳一级
                                </dt>
                                <dd>
                                    <ul>
                                        <li>S1-1: 1~4节课</li>
                                        <li>S1-2: 5~8节课</li>
                                        <li>S1-3: 9~12节课</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em>S2</em>=蛙泳二级
                                </dt>
                                <dd>
                                    <ul class="clearfix">
                                        <li>S2-1: 1~4节课</li>
                                        <li>S2-2: 5~8节课</li>
                                        <li>S2-3: 9~12节课</li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <div class="advanced-line_bg"></div>
                    </div>
                    <p class="advanced-line_txt">S1-1=蛙泳一级阶段的第一个小阶段，其它以此类推，每个S阶段的最后一节课会进行考核，合格即进入下一个阶段。</p>
                </div>
                <div class="advanced-line-section">
                    <div class="advanced-line green">
                        <div class="advanced-line_cont">
                            <dl>
                                <dt>
                                    <em>S3</em>=自游泳一级
                                </dt>
                                <dd>
                                    <ul>
                                        <li>S3-1: 1~4节课</li>
                                        <li>S3-2: 5~8节课</li>
                                        <li>S3-3: 9~12节课</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em>S4</em>=自游泳二级
                                </dt>
                                <dd>
                                    <ul class="clearfix">
                                        <li>S4-1: 1~4节课</li>
                                        <li>S4-2: 5~8节课</li>
                                        <li>S4-3: 9~12节课</li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <div class="advanced-line_bg"></div>
                    </div>
                    <p class="advanced-line_txt">S3-1=自游泳一级阶段的第一个小阶段，其它以此类推，每个阶段的最后一节课会进行考核，合格即进入下一个阶段。</p>
                </div>
            </div>
            <div class="advanced-section">
                <div class="train-lr clearfix">
                    <div class="train-l">
                        <h2 class="train-title yellow">资深教练</h2>
                    </div>
                    <div class="train-r"></div>
                </div>
                <div class="coach_list clearfix">
                    <div class="coach-card" style="background-image: url(http://www.naclub.cn/upload/image/201611/54f6a4aa-6c75-4381-8699-83f33b07e575.jpg)">
                        <dl class="coach-card_info">
                            <dt>周鹏超</dt>
                            <dd>5年执教经验</dd>
                        </dl>
                        <div class="coach-card_star">
                            <span class="coach-card_star_cont" style="width: 60%"></span>
                        </div>
                    </div>
                    <div class="coach-card" style="background-image: url(http://www.naclub.cn/upload/image/201611/3e82eb1a-621a-4a7b-82a8-59ccb28c82ec.jpg)">
                        <dl class="coach-card_info">
                            <dt>金欢聚</dt>
                            <dd>4年执教经验</dd>
                        </dl>
                        <div class="coach-card_star">
                            <span class="coach-card_star_cont" style="width: 60%"></span>
                        </div>
                    </div>
                    <div class="coach-card" style="background-image: url(http://www.naclub.cn/upload/image/201611/5c1d3f57-a91f-4d79-98bc-16a4851f1788.jpg)">
                        <dl class="coach-card_info">
                            <dt>窦小刚</dt>
                            <dd>3年执教经验</dd>
                        </dl>
                        <div class="coach-card_star">
                            <span class="coach-card_star_cont" style="width: 60%"></span>
                        </div>
                    </div>
                    <div class="coach-card" style="background-image: url(http://www.naclub.cn/upload/image/201611/aceb4ec3-b2ca-4e95-ae8d-07fb61653eb0.jpg)">
                        <dl class="coach-card_info">
                            <dt>吴桐</dt>
                            <dd>3年执教经验</dd>
                        </dl>
                        <div class="coach-card_star">
                            <span class="coach-card_star_cont" style="width: 60%"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="train-price clearfix fixed_bottom">
            <div class="train-price_l">
                优惠价格：<em class="train-price_price">￥
                3600
            </em>
                <sub>原价：￥<del>
                    3600
                </del>
                </sub>
            </div>
            <div class="train-price_r">
                <a href="#" class="btn btn-default" onclick="toSign('470');">立即报名</a>
            </div>
        </div>
        <!--main wrap end-->
    </div>
    <!--/wrapper-->

</div>
</body>
</html>
