<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<head>
    <jsp:include page="header.jsp"/>

    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>论坛</title>
    <link href="${pageContext.request.contextPath}/static/assets/invitation/css/pgwslider.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/assets/invitation/css/style.css" rel="stylesheet">

    <style>
        body{
            background: url("${pageContext.request.contextPath}/static/assets/invitation/img/bg.png")no-repeat;

            background-color: rgb(242,243,245);
        }
    </style>
</head>


<body>




<header id = "banner">
    <img src="${pageContext.request.contextPath}/static/assets/invitation/img/bg3.jpg">
</header>

<div id="invitationSearchBox">
    <h3>
        游泳馆论坛
    </h3>
    <form action="${pageContext.request.contextPath}/invitation" style="float: right; margin: 0 40% 10px auto;">
        <input id="content" name="content" type="text">
        <%--            <input type="submit" width="查找">--%>
        <input type="submit" id="content" width="查找"  value="提交">
    </form>
</div>



<%--                帖子内容--%>
<div id="invitation_content_box">
    <div style=" " class="invitation_list">
        <c:forEach items="${invitationPageBean.currentPageInvitationsList}" var="invitation" varStatus="s">
            <div style="width: 780px; height: 190px;
            margin-bottom: 10px;
            border:1px solid rgb(241,114,157);
            background: whitesmoke;

            border-radius: 10px;
            "
                 class="invitation-item">
                <div class="invitation-image" style="float: left;width: 220px;height: 150px;margin-top: 20px; margin-left: 20px">
                    <a>
                        <img onerror="javascript:this.src='${pageContext.request.contextPath}/static/img/invitationDefaultImg.jpg';" src=""
                             style="width: 100%;height: 100%;border-radius: 10px;
                             object-fit: cover; ">
                    </a>
                </div>
                <div style="float: right;width: 455px;height: 150px; margin-top: 20px" class="invitation-content">

                    <ul style="list-style: none">
                        <li>
                            <a style="color: rgb(255,174,201);overflow: hidden;white-space: nowrap;text-overflow: ellipsis;font-size: 25px;line-height: 26px;text-align: center"
                               href="${pageContext.request.contextPath}/i/${invitation.iid}">${invitation.theme}</a>
                        </li>
                        <li style="margin-top: 10px">
                            <a href="${pageContext.request.contextPath}/i/${invitation.iid}" style="color: rgba(255,255,255,0.88); font-size: 15px">
                                    ${invitationPageBean.contents.get(s.count-1)}
                            </a>

                        </li>
                        <li style="margin-top: 60px">
                            <a style="font-size: 20px; color: rgb(0,161,214)">
                                <img  style="width: 30px; height: 30px;background-size:100%; border-radius: 50%"
                                      onerror="javascript:this.src = '${pageContext.request.contextPath}/static/img/defaultImg.jpg'"
                                      src="${pageContext.request.contextPath}${invitationPageBean.avatars.get(s.count-1)}">
                                    ${invitationPageBean.usernames.get(s.count-1)}
                            </a>
                            <span style="font-size: 15px">发表于${invitation.postTime}</span>
                        </li>

                    </ul>

                </div>
            </div>

        </c:forEach>
    </div>
</div>


<div style="width: 200px; height: 50px; margin: 0 auto;text-align: center; margin-top: 30px; margin-bottom: 100px">

    <c:set var="startPage" value="${invitationPageBean.currentPage}" scope="page"/>
    <c:set var="endPage" value="${10}" scope="page"/>
    <c:if test="${startPage > 5}">
        <c:set var="endPage" value="${startPage + 5}" scope="page"/>
    </c:if>
    <c:if test="${endPage >= invitationPageBean.totalPage}">
        <c:set var="endPage" value="${invitationPageBean.totalPage}" scope="page"/>
    </c:if>


    <%--分页--%>
    <nav aria-label="Page navigation">
        <ul class="pagination">

            <c:if test="${startPage == 1}">
                    <li class="disabled">
                    <a  aria-label="Previous" >
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                </c:if>
            <c:if test="${startPage > 1}">
                <li>
                    <a  href="${pageContext.request.contextPath}/invitation?currentPage=${startPage-1}" aria-label="Previous" >
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>



            <c:forEach begin="${1}" end="${4}" var="i">
                <c:if test="${startPage > 1}">
                    <c:if test="${startPage + i -1 <= endPage}">
                        <li><a href="${pageContext.request.contextPath}/invitation?currentPage=${startPage-1 + i}">${startPage-1 + i}</a></li>
                    </c:if>
                </c:if>
                <c:if test="${startPage <= 1}">
                    <c:if test="${i <= endPage}">
                        <li><a href="${pageContext.request.contextPath}/invitation?currentPage=${i}">${i}</a></li>
                    </c:if>
                </c:if>
            </c:forEach>
            <c:if test="${endPage == startPage}">
                <li class="disabled">
                    <a  aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${startPage < endPage}">
                <li >
                    <a href="${pageContext.request.contextPath}/invitation?currentPage=${startPage+1}"  aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>


        </ul>
    </nav>







</div>




<form id = "editorForm" action="${pageContext.request.contextPath}/postInvitation" method="post">
    <label>
        <%--            <input style="width: 300px;margin-bottom: 5px" type="text" name="theme" placeholder="帖子主题">--%>
        <input id="content" name="theme" type="text" style="border-radius: 12px;width: 400px;height: 30px;border: 2px solid #00a1d6;padding-left: 8px;margin-right: 20px;" placeholder="帖子主题">
    </label>
    <script id="ueditor" name="invitationContent" type="text/plain">
    </script>
    <%--        <input type="submit" value="发布帖子">--%>
    <input type="submit" id="content"  style="background-color: #00a1d6a6;color:white;border: 2px solid #00a1d6;border-radius: 12px;font-size: 15px;padding: 3px;padding-left: 10px;padding-right: 10px;margin-top: 8px;margin-left: 91%" value="发布">
</form>



</body>
<!-- 实例化编辑器 -->


<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>


<script type="text/javascript" >


    var ue = UE.getEditor('ueditor',{


        toolbars: [
            [   'simpleupload', //单图上传
                'insertimage', //多图上传
                'insertvideo', //视频
                'emotion', //表情
                'scrawl',

            ]
        ],

        imageUrlPrefix: "${pageContext.request.contextPath}",
        initialFrameWidth:[780],
        initialFrameHeight:[280],
        enableContextMenu:true,
        elementPathEnabled:false,

        zIndex:100


    });






</script>




<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/assets/invitation/js/style.js"></script>

</html>
