<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>个人主页</title>

    <link href="${pageContext.request.contextPath}/static/assets/bindAccount/css/blog.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/bindAccount/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/bindAccount/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/bindAccount/css/zzsc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/bindAccount/css/dcalendar.picker.css"/>
    <script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/cityAndPro.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/prefixfree.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/modernizr.js"></script>
    <style>
        #upload_btn{
            display: none;
            background: #000;
            opacity: .6;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border-radius: 50%;
            font-size: 14px;
            color: #fff;
            text-align: center;
            padding-top: 30px;
            box-sizing: border-box;
            overflow: hidden;
            cursor: pointer;
        }
        .intr span{
            display:inline-block;
            width:150px;
            height:150px;
            border-radius:50%;
            margin-top:100px;
            background:url(${pageContext.request.contextPath}${account.avatar}) center;
            background-size:cover;
            transition:1s
        }
        #upload_btn{
                padding: 0;
              width: 150px;
              height: 150px;
              border-radius: 50%;
              line-height: 150px;
              position: absolute;
              cursor: pointer;
              opacity: 0;
              color: #333333;
              background: #fafafa;
              overflow: hidden;
              display: inline-block;
            transition: 0.2s;
          }

        #upload_btn:hover{
            opacity: 0.3;
        }

        #upload_btn input{
            width: 100%;
            height: 100%;
            border-radius: 50%;
            padding: 0;
            margin-top: -150px;
            right: 0;
            opacity: 0;
            filter: alpha(opacity=0);
            cursor: pointer;
        }
        #button{
            position: absolute;
            left: 600px;
            width: 200px;
            height: 30px;
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

    </style>
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="intr">
   <span id="headImg"  style="" >
   </span>
    <div  id="upload_btn">
        更换头像
        <input enctype="multipart/form-data" id="uploadAvatar" type="file"   value="" accept="image/*" name="uploadAvatar">
    </div>
    <p id="currentUsername" class="peointr">${account.name}</p>
    <c:if test="${account.introduction == null}">
        <p id="currentIntroduction" class="peointr" style="height: 40px">这家伙很懒惰，什么都没留下</p>
    </c:if>
    <c:if test="${account.introduction != null}">
        <p id="currentIntroduction" class="peointr" style="height: 40px">${account.introduction}</p>
    </c:if>

    <div class="blog-masthead">
        <div class="container">
            <nav class="blog-nav">
                <a class="blog-nav-item active" href="${pageContext.request.contextPath}/account/bindaccount">首页</a>
                <a class="blog-nav-item" href="javascript:contentBack()">生活</a>
                <a class="blog-nav-item" href="javascript:invitation()">帖子</a>
                <a class="blog-nav-item" href="javascript:setting()">设置</a>
                <a class="blog-nav-item" href="javascript:pocket()">钱包</a>
            </nav>
        </div>
    </div>
</div>


<div id = "content-box">
    <div class="title" id="part1">爱生活</div>
    <div class="content">
        <div class="pic pic1">
            <img src="${pageContext.request.contextPath}/static/assets/bindAccount/image/h1.jpg" alt="">
            <p>家乡-笔锋塔下</p>
        </div>
        <div class="pic pic2">
            <img src="${pageContext.request.contextPath}/static/assets/bindAccount/image/h2.jpg" alt="">
            <p>家乡-襄河河畔</p>
        </div>
        <div class="pic pic3">
            <img src="${pageContext.request.contextPath}/static/assets/bindAccount/image/h3.jpg" alt="">
            <p>家乡-太平桥岸</p>
        </div>
    </div>
    <div class="title" id="part2">我的帖子</div>
    <div class="content">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="${pageContext.request.contextPath}/static/assets/bindAccount/image/s1.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/static/assets/bindAccount/image/s2.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/static/assets/bindAccount/image/s3.jpg" alt="...">
                </div>
            </div>
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="pocket-box" style="display: none;">
    <div class="title" id="part4">我的钱包</div>
    <div class="content">
        <div>
            <label style="padding-left: 30px;font-size: 22px">余额：${account.balance}</label>
            <button id="button" onclick="javascript:buttonClick()">查询历史账单</button>
        </div>
    </div>
</div>

<div id="i" style="display: none">
    <div class="title" id="part3">我的帖子</div>
    <c:if test="${invitations == null || invitations.size() < 1}">
        <span style="width: 300px; height: 30px; text-align: center;margin-left: 45%">你还没有发布任何帖子  <a href="${pageContext.request.contextPath}/invitation">点我去发帖！</a></span>
    </c:if>


        <table style="width: 400px; height: auto; margin-left: 40%">
            <c:forEach var="invitation" items="${invitations}" varStatus="s">
                <tr>
                    <td>${invitation.theme}</td>
                    <td><a href="${pageContext.request.contextPath}/deleteInvitation?iid=${invitation.iid}">删除</a></td>

                </tr>

            </c:forEach>
        </table>


</div>

<div id="settings-box" style="display: none" >
    <div class="title">修改信息</div>
    <div class="content">
        <div>
            <div style="float:left;padding-top: 8px">
                <label for="rad">昵 称：</label>
            </div>
            <div style="float:left;padding-left: 30px">
                <label for="rad"></label><input type="text" name="username" style="width:175px" value="${account.name}"/>
            </div>
            <div style="text-align:right;">
                <button style="opacity: 0" disabled="disabled" class="button button1">修改</button>
            </div>
        </div>
        <br>
        <div style="padding-top: 5px">
            <div style="float:left;">
                <label for="rad">性 别：</label>
            </div>
            <div style="float:left;padding-left: 30px">
                <c:if test="${account.sex == null}">
                    <input type="radio" id="rad" name="sex" value="男"><label for="rad">男 </label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" id="rad3" name="sex" value="女"><label for="rad">女 </label>
                </c:if>
                <c:if test="${account.sex == '男'}">
                    <input type="radio" id="rad" name="sex" value="男" checked = checked ><label for="rad">男 </label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" id="rad3" name="sex" value="女"><label for="rad">女 </label>
                </c:if>
                <c:if test="${account.sex == '女'}">
                    <input type="radio" id="rad" name="sex" value="男" ><label for="rad">男 </label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" id="rad3" name="sex" value="女" checked = checked><label for="rad">女 </label>
                </c:if>
            </div>
            <div style = "text-align:right;">
                <button style="opacity: 0" disabled="disabled" class="button button1">修改</button>
            </div >
        </div>


        <br>
        <div class="form-group" >
            <!--        <label class="control-label col-sm-3" for="rad">地址:</label>-->
            <div style="float:left;padding-top: 5px">
                <label for="rad">城 市：</label>
            </div>
            <div class="col-sm-8" style="float:left;">
                <div class="col-sm-4">
                    <select name="province" id="input_province" class="form-control">
                        <c:if test="${account.address != null}">
                            <option value="${fn:substringBefore(account.address, "-")}">${fn:substringBefore(account.address, "-")}</option>
                        </c:if>
                        <c:if test="${account.address == null}">
                            <option value="">--请选择--</option>
                        </c:if>
                    </select>
                </div>
                <div class="col-sm-4">
                    <select name="city" id="input_city" class="form-control">
                        <c:if test="${account.address != null}">
                            <option value="${fn:substringAfter(account.address, "-")}">${fn:substringAfter(account.address, "-")}</option>
                        </c:if>
                        <c:if test="${account.address == null}">
                            <option value="">--请选择--</option>
                        </c:if>
                    </select>
                </div>
            </div>
            <div style = "text-align:right;float:right;">
                <button style="opacity: 0" disabled="disabled" class="button button1">修改</button>
            </div >
        </div>
        <br>
        <br>
        <div>
            <div style="float:left;">
                <label for="rad">生 日：</label>
            </div>

            <div class="zzsc-container" style="float:left;padding-left: 30px" >

                <div class="row">
                    <div class="col-md-6">
                        <fmt:formatDate var="${account.birthday}" value="${account.birthday}" pattern="yyyy-MM-dd"/>
                        <input id="mydatepicker2" value="${account.birthday}"  name="birthday"  type='text' style="width:175px"/>
                    </div>
                </div>

            </div>
            <div style="text-align:right;">
                <button style="opacity: 0" disabled="disabled" class="button button1">修改</button>
            </div>
        </div>
        <br>
        <div>
            <div style="float:left;padding-top: 8px">
                <label for="rad">简 介：</label>
            </div>
            <div style="float:left;padding-left: 30px">
                <label for="rad"></label><input type="text" name="introduction" value="${account.introduction}" style="width:575px"/>
            </div>
            <div style="text-align:right;">
                <button  style="opacity: 0" disabled="disabled" class="button button1">修改</button>
            </div>
        </div>
    </div>
    <div style="height: 120px">
        <button id="sureAlter"  style="display:block;margin:0 auto" class="button button1">确认修改</button>
    </div>
</div>



<a href="" class="btt">顶部</a>



<script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/plugin.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/bindAccount/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/bindAccount/js/dcalendar.picker.js"></script>

<script>

    $("#upload_btn").css({
        'top':$("#headImg").offset().top,
        'left':$("#headImg").offset().left
    });

    $(window).resize(function () {
        $("#upload_btn").css({
            'left':$("#headImg").offset().left
        });
    });

    $("#uploadAvatar").change(function () {

        var file = $("#uploadAvatar")[0].files[0];
        var formData = new FormData();
        formData.append('file', file);

        $.ajax({
            url: "${pageContext.request.contextPath}/account/alterAvatar",
            type: "post",
            dataType: "json",
            cache: false,
            data: formData,
            processData: false,// 不处理数据
            contentType: false, // 不设置内容类型
            success: function (data) {
                window.location.reload();
            }
        });

    });



    var content = $("#content-box");
    var settings = $("#settings-box");
    var invi = $("#i");
    var pockets = $("#pocket-box");
    function setting(){
        content.css({'display': 'none', 'transition':'0.1s'});
        invi.css({'display': 'none', 'transition':'0.1s'});
        settings.css({'display': 'block', 'transition':'0.1s'});
        pockets.css({'display': 'none', 'transition':'0.1s'});
    }

    function contentBack() {
        invi.css({'display': 'none', 'transition':'0.1s'});
        settings.css({'display': 'none', 'transition':'0.1s'});
        content.css({'display': 'block', 'transition':'0.1s'});
        pockets.css({'display': 'none', 'transition':'0.1s'});
    }

    function invitation(){
        invi.css({'display': 'block', 'transition':'0.1s'});
        settings.css({'display': 'none', 'transition':'0.1s'});
        content.css({'display': 'none', 'transition':'0.1s'});
        pockets.css({'display': 'none', 'transition':'0.1s'});
    }

    function pocket(){
        invi.css({'display': 'none', 'transition':'0.1s'});
        settings.css({'display': 'none', 'transition':'0.1s'});
        content.css({'display': 'none', 'transition':'0.1s'});
        pockets.css({'display': 'block', 'transition':'0.1s'});
    }



    $("#sureAlter").click(function () {

        var username = document.getElementsByName("username")[0].value;
        var sexs = document.getElementsByName("sex");
        var sex;
        for(var i = 0;i < sexs.length; i++){
            if(sexs[i].checked){
                sex = sexs[i].value;
                break;
            }
        }

        var province = document.getElementsByName("province")[0].value;
        var city = document.getElementsByName("city")[0].value;
        var address = province + "-" + city;
        var birthday = document.getElementsByName("birthday")[0].value;
        var introduction = document.getElementsByName("introduction")[0].value;

        $.post("${pageContext.request.contextPath}/account/alterAccountMsg", {
            'name':username, 'sex':sex, 'address':address, 'birthday':birthday, 'introduction':introduction
        }, function (data) {
            $("#currentUsername").html(username);
            $("#currentIntroduction").html(introduction);
            alert(data);
        })


    });

    $(function() {


        var html = "";
        var province_idx;
        $("#input_city").append(html);

        $.each(cityMessage, function(idx, item) {
            if(item.parid == '1'){
                html += "<option value='" + item.regname + "' exid='" + item.regid + "'>" + item.regname + "</option>";
            }

        });
        $("#input_province").append(html);
        $("#input_province").change(function(e) {
            var province =$(this).val();
            var cityList = [];
            if(province == "") return;
            $("#input_city option").remove();
            var html = "<option value=''>--请选择--</option>";

//					获取已选择的省份的数组下标
            $.each(cityMessage, function(idx, item) {
                if(province == item.regname && item.parid == '1') {
                    province_idx=idx
                }
            })

//					获取已选择的省份的城市列表
            $.each(cityMessage, function(idx, item) {
                if(cityMessage[idx].parid == cityMessage[province_idx].regid) {
                    cityList.push(cityMessage[idx])
                }
            })

//					添加城市信息给标签
            if(cityList instanceof Array && cityList.length>0){
                $.each(cityList, function(idx, item) {
                    console.log(item)
                    html += "<option value='" + item.regname + "' exid='" + item.regid + "'>" + item.regname + "</option>";

                });
            }else{
                html += "<option value='" + cityMessage[province_idx].regname + "' exid='" + cityMessage[province_idx].regid + "'>" + cityMessage[province_idx].regname + "</option>";

            }
            $("#input_city").append(html);
        });
    });
    $('#mydatepicker').dcalendarpicker();
    $('#mydatepicker2').dcalendarpicker({
        format:'yyyy-mm-dd'
    });
    $('#mycalendar').dcalendar();

    function buttonClick() {
        window.location.href = "${pageContext.request.contextPath}/account/bindaccount/check";
    }

</script>

</body>
</html>
