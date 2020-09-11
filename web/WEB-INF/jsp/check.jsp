<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 94762
  Date: 2020/8/29
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>历史账单</title>
    <link href="${pageContext.request.contextPath}/static/assets/bindAccount/css/blog.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/bindAccount/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/bindAccount/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/bindAccount/css/zzsc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/bindAccount/css/dcalendar.picker.css"/>
    <script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/cityAndPro.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/prefixfree.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/modernizr.js"></script>
    <style type="text/css">
        table
        {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }
        table td, table th
        {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }
        table thead th
        {
            background-color: #CCE8EB;
            width: 100px;
        }
        table tr:nth-child(odd)
        {
            background: #fff;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }
        #button{
            position: absolute;
            left: 90px;
            top:33px;
            width: 160px;
            height: 32px;
            color:white;
            background-color:#84AF9B;
            border-radius: 3px;
            border-width: 0;
            margin: 0;
            outline: none;
            font-family: KaiTi;
            font-size: 17px;
            text-align: center;
            cursor: pointer;
        }
        #button:hover{
            background-color: #AEDD81;
        }
        .mytxt {
            position:relative;
            top:63px;
            left:80px;
            color:#333;
            line-height:normal;
            font-family:"Microsoft YaHei",Tahoma,Verdana,SimSun;
            margin:0px;
            padding:4px;
            font-size:15px;
            outline-width:medium;
            outline-style:none;
            outline-color:invert;
            text-shadow:0px 1px 2px #fff;

            background-color:rgb(255,255,255);
            border-color:#ccc;
            border-width:1px;
            border-style:solid;
        }
        .mytxt:focus {
            border: 1px solid #fafafa;
            -webkit-box-shadow: 0px 0px 6px #007eff;
            -moz-box-shadow: 0px 0px 5px #007eff;
            box-shadow: 0px 0px 5px #007eff;
        }

    </style>
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="intr" style=" height: 100px; position: relative;top:-50px;">
<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav" style="position: relative;top:-6px;">
            <a class="blog-nav-item" href="javascript:consumeRecord()">历史消费记录</a>
            <a class="blog-nav-item" href="javascript:enchargeRecord()">历史充值记录</a>
        </nav>
    </div>
    <div id="check-box" style="width: 85%;position: relative;top:-10px;left:150px;">
        <table id = "consumeTable" class="table">
            <input id="startTime" class="mytxt" style="position: relative;top: -5px;left:10px;"  type="datetime-local" value="" placeholder="请输入开始日期" />
            <input id="endTime" class="mytxt" style="position: relative;top: -5px;left:20px;"  type="datetime-local" value="" placeholder="请输入截止日期" />


            <button id="button" onclick="javascrpit:search()" style="position: relative;left: 30px;top:-5px;width:120px;background-color:#AEDD81;">查询</button>
            <thead>
            <tr>
                <th>商品名</th>
                <th>折扣名</th>
                <th>折扣力度</th>
                <th>数量</th>
                <th>金额</th>
                <th>交易时间</th>
            </tr>
            </thead>
            <c:forEach var="consume" items="${consumes}">
                <tr onmouseover="this.style.backgroundColor='AEDD81';"onmouseout="this.style.backgroundColor='#fff';">
                    <td>${consume.goodsName}</td>
                    <td>${consume.discountName}</td>
                    <td>${consume.discount}</td>
                    <td>${consume.count}</td>
                    <td>${consume.price}</td>
                    <td>${consume.time}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div id="check-box2" style="position: relative;top: 5px;display: none;">
        <table id = "chargeTable" width="70%" class="table">
            <input id = "startTime" class="mytxt" style="position: relative;top: -5px;left:10px;" type="datetime-local" value="" placeholder="请输入开始日期" />
            <input id = "endTime" class="mytxt" style="position: relative;top: -5px;left:20px;"  type="datetime-local" value="" placeholder="请输入截止日期" />
            <button id="button" onclick="search()" style="position: relative;left: 30px;top:-5px;width:120px;background-color:#AEDD81;">查询</button>
            <thead>
            <tr>
                <th>流水号</th>
                <th>充值金额</th>
                <th>时间</th>
                <th>余额</th>
            </tr>
            </thead>
            <c:forEach items="${charges}" var="charge">
                <tr onmouseover="this.style.backgroundColor='AEDD81';"onmouseout="this.style.backgroundColor='#fff';">
                    <td> ${charge.charge_Code}</td>
                    <td>${charge.price}</td>
                    <td>${charge.time}</td>
                    <td> ${charge.balance}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</div>



<script>
    var checks = $("#check-box");
    var checks2 = $("#check-box2");

    var startTime = $("#startTime");
    var endTime = $("#endTime");



    var consumeTable= $("#consumeTable");
    var consumeTableTitle = $("#consumeTable tr:first");

    var chargeTable= $("#chargeTable");
    var chargeTableTitle = $("#chargeTable tr:first");


    function search() {
        $.post("${pageContext.request.contextPath}/account/bindaccount/check/searchConsumeReordByTime",
            {startTime:startTime.val(), endTime:endTime.val()},
            function (d){
                consumeTable.empty();
                consumeTable.prepend(consumeTableTitle);
                for(var i = 0; i < d.length; i++){
                    consumeTable.append("<tr>");
                    consumeTable.append("<td>"+d[0].goodsName+ "</td>");
                    consumeTable.append("<td>"+d[0].discountName+ "</td>");
                    consumeTable.append("<td>"+d[0].discount+ "</td>");
                    consumeTable.append("<td>"+d[0].count+ "</td>");
                    consumeTable.append("<td>"+d[0].price+ "</td>");
                    consumeTable.append("<td>"+d[0].time+ "</td>");

                    consumeTable.append("</tr>")

                }

        });

        $.post("${pageContext.request.contextPath}/account/bindaccount/check/searchConsumeChargeByTime",
            {startTime:startTime.val(), endTime:endTime.val()},
            function (d){
                chargeTable.empty();
                chargeTable.prepend(chargeTableTitle);
                for(var i = 0; i < d.length; i++){
                    chargeTable.append("<tr>");
                    chargeTable.append("<td>"+d[0].charge_Code+ "</td>");
                    chargeTable.append("<td>"+d[0].price+ "</td>");
                    chargeTable.append("<td>"+d[0].time+ "</td>");
                    chargeTable.append("<td>"+ d[0].balance == null ? 0:d[0].balance + "</td>");
                    chargeTable.append("</tr>")

                }

            });


    }

    function consumeRecord() {
        checks.css({'display': 'block', 'transition':'0.1s'});
        checks2.css({'display': 'none', 'transition':'0.1s'});
    }
    function enchargeRecord() {
        checks.css({'display': 'none', 'transition':'0.1s'});
        checks2.css({'display': 'block', 'transition':'0.1s'});
    }


</script>



</body>

</html>
