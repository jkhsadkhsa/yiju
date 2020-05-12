<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的收藏夹</title>

    <%--导入CSS文件--%>
    <link type="text/css" href="../css/css.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/styleCollect.css" />
</head>
<body>
<%--加入头部--%>
<jsp:include page="../pages/basehead.jsp"></jsp:include>
<!--头部最上方的框-->

<!--Logo栏和手机号栏-->
<div class="logo-phone">
    <div class="width1190">

        <table align="center" width="100%">
            <tr>
                <td>
                    <h1 class="logo"><a href="../index.jsp"><img src="../images/logo.png" width="163" height="59" /></a></h1>
                </td>
                <td align="center">
                    <div class="phones"><strong>000-00000000</strong></div>
                    <div class="clears"></div>
                </td>
            </tr>
        </table>
    </div><!--width1190/-->
</div><!--logo-phone/-->
<!--Logo栏和手机号栏 END-->

<hr width="1190px">
<br>

<div class="content">
    <div class="width1080">
        <%--左侧导航栏--%>
        <div class="vip-left">
            <div class="vipNav">
                <h3 class="vipTitle">账户中心</h3>
                <dl>
                    <dt class="vipIcon3">账户设置</dt>
                    <dd>
                        <a href="#">我的资料</a>
                        <a href="#">实名认证</a>
                        <a href="#">账户密码设置</a>
                    </dd>
                    <dt class="vipIcon1">我的易居</dt>
                    <dd>
                        <a href="#" class="vipNavCur">我的收藏房源</a>
                    </dd>
                </dl>
            </div><!--vipNav/-->
        </div><!--vip-left/-->

        <%--右侧详情栏--%>
        <div class="vip-right">
            <h3 class="vipright-title">我的收藏</h3>
            <div class="AGrid-row  tool-package">
                <c:forEach var="collcetView" items="${collectViews}">
                <div class="col-sm-6 ">
                    <div class="tile center-layer">
                        <div class="layer-figure">
                            <a href="/house/todetails.do?house_id=${collcetView.houseId}"><img src="http://image.cxhit.com/${collcetView.houseHeadimg}"></a>
                        </div>
                        <h2 class="dev-list"> <a href="/house/todetails.do?houseId=${collcetView.houseId}">${collcetView.houseTitle}</a></h2>
                        <div class="layer-text">
                            <p class="dev-text">${collcetView.houseAddress}</p>
                            <div class="layer-btn">
                                <a href="${pageContext.request.contextPath}/userInforController/delCollect.do?collId=${collcetView.collId}">
                                    <p>移出收藏</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>

            </div>
        </div><!--vip-right/-->
        <div class="clearfix"></div>
    </div><!--width1190/-->
</div><!--content/-->
<!--End  个人信息填写栏-->

<!--这是页脚-->
<jsp:include page="../pages/basefoot.jsp"></jsp:include>

</body>
</html>
