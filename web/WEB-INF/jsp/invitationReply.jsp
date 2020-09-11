<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/invitationReply/css/style.css">

</head>
<body>

    <jsp:include page="header.jsp"/>

    <h2 class="theme">&nbsp;${theme}&nbsp;&nbsp;
        <span style="font-size: 15px">跟帖数:${totalCount}</span>
    </h2>

        <div class="reply-box" style="">
            <c:forEach var="invitationReply" items="${invitationReplies}" varStatus="s">
                    <div class="ncontentla" style="float: left;">
                        <div  class="nuserxx"><img src="${pageContext.request.contextPath}${avatars.get(s.count-1)}" width="100" height="100"></div>
                        <div class="nuserxx" style="text-align: center;">${usernames.get(s.count-1)}</div>
                        <div class="nuserxx"></div>
                    </div>

                    <div
                            style="width:580px;height: auto; margin-left: 10px;float: right;
                            border-left: 2px solid wheat; padding: 5px;margin-bottom: 10px; min-height: 100px"
                            class="ncontentlb">
                        <div style="width: 500px; height: 20px;color: #999999;font-size: 12px;">
                            <div class="ntextdh" style="float:left;">${invitationReply.flor}楼&nbsp;发表于${invitationReply.replyTime}</div>

                            <div class="ntextdh" style="float:right">&nbsp;
                                <c:if test="${invitationReply.member_Code == account.member_Code}">
                                    <a href="javascript:deleteReply(${invitationReply.rid})">删除</a>
                                </c:if>
                                <c:if test="${invitationReply.member_Code != account.member_Code}">
                                    <a href="">回复</a>
                                </c:if>

                                &nbsp;
                                <a href="javascript:share();">分享</a></div>

                        </div>

                        <br>
                        <span style="margin-top: 20px;margin-bottom: 20px;min-height: 100px" class="ntext14">
                                ${invitationReply.content}
                        </span>

                        <div class="nqianm" style="font-size: 10px; color: #0c5460">
                            <img src="${pageContext.request.contextPath}/static/assets/invitationReply/css/signature.jpg"><br>${introductions.get(s.count-1)}
                        </div>
                    </div>
                    <div style="width: 100%; display: block;height: 3px;margin:5px;float: left; background-color: silver"></div>
            </c:forEach>
        </div>

        <div style="height: 200px"></div>


    <form style=" width: 800px;" id = "editorForm" action="${pageContext.request.contextPath}/postInvitation" method="post">

        <script id="ueditor" name="invitationContent" type="text/plain">
        </script>
        <input id="submit_btn" type="button" value="点击发布">
    </form>



</body>

<script type="text/javascript" >

    function deleteReply(rid) {
        $.get("${pageContext.request.contextPath}/deleteInvitationReply?rid="+rid,function (data) {
            alert(data);
            $.reload();
        })
    }



    var editorForm = $("#editorForm");
    editorForm.css({
        'position':"absolute",
        'margin-top':$(".nqianm:last").offset().top
    });

    editorForm.css("margin-left", window.innerWidth/2 - editorForm.width()/2 );

    $(window).resize(function () {          //当浏览器大小变化时
        editorForm.css("margin-left", window.innerWidth/2 - editorForm.width()/2 );

    });

    var ue = UE.getEditor('ueditor',{
        toolbars: [
            [   'simpleupload', //单图上传
                'insertimage', //多图上传
                'insertvideo', //视频
                'emotion', //表情
                'scrawl'
            ]
        ],
        initialFrameWidth:[780],
        initialFrameHeight:[280],
        enableContextMenu:true,
        elementPathEnabled:false,
        zIndex:100

    });

    var submit = $("#submit_btn");
    submit.click(function () {
        var content  = ue.getContent();
        var iid = ${iid};

        $.post("${pageContext.request.contextPath}/addReply", {'iid':iid, 'content':content},function (data) {
            alert(data);
            location.reload();
        })

    });



</script>

    <script>

        var imgs = $(".ntext14 img");
        imgs.each(function () {
            if(this.width > 580){
                var bl = 580/this.width;
                $(this).css({
                    'width':580,
                    'height': bl*this.height
                })
            }
        })



    </script>
</html>
