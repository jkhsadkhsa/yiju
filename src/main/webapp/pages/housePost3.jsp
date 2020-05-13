<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布房源信息</title>
    <!--下面是几个导入的包-->
    <link rel="stylesheet" href="../css/houseCheckStyle.css"/>
    <link type="text/css" href="../css/css.css" rel="stylesheet"/>
    <link type="text/css" href="../css/searchInputStyle.css" rel="stylesheet"/>
    <link type="text/css" href="../css/searchReset.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../css/houseSend.css"/>
    <script type="text/javascript" src="../js/js.js"></script>
    <script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
<!--头部最上方的框-->
<jsp:include page="${pageContext.request.contextPath}/pages/basehead.jsp"></jsp:include>
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

<!--导航栏-->
<div class="list-nav">
    <div class="width1190">
        <ul class="nav">
            <li><a href="index.jsp">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/house/searchHouseViewByType.do?houseType=0&currentPage=1">新房</a></li>
            <li><a href="${pageContext.request.contextPath}/house/searchHouseViewByType.do?houseType=1&currentPage=1">二手房</a></li>
            <li><a href="${pageContext.request.contextPath}/house/searchHouseViewByType.do?houseType=2&currentPage=1">租房</a></li>
            <li class="zhiding"><a href="#">指定购房</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/housePost1.jsp">发布房源</a></li>
            <li><a href="#">公告中心</a></li>
            <li><a href="#">关于我们</a></li>
            <div class="clears"></div>
        </ul><!--nav-->
        <div class="clears"></div>
    </div><!--width1190-->
</div><!--list-nav-->
<!--导航栏End-->

<%--信息填写栏--%>
<div class="width1190" align="center">
    <br/>
    <h4 style="font-size:16px; text-align:center; font-weight:bold;">房源内饰信息填写</h4>
    <br/>
    <div align="center">
        <table align="cenetr">
            <tr>
                <td>
                    <ul class="tg-list">
                        <li class="tg-list-item">
                            <h4>床</h4>
                            <input class="tgl tgl-flip" id="bed" type="checkbox" onclick="bedClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="bed"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>洗衣机</h4>
                            <input class="tgl tgl-flip" id="washing" type="checkbox" onclick="washingClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="washing"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>空调</h4>
                            <input class="tgl tgl-flip" id="air" type="checkbox" onclick="airClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="air"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>阳台</h4>
                            <input class="tgl tgl-flip" id="balcony" type="checkbox" onclick="balconyClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="balcony"></label>
                        </li>

                        <li class="tg-list-item">
                            <h4>冰箱</h4>
                            <input class="tgl tgl-flip" id="ice" type="checkbox" onclick="iceClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="ice"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>卫生间</h4>
                            <input class="tgl tgl-flip" id="toilet" type="checkbox" onclick="toiletClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="toilet"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>厨房</h4>
                            <input class="tgl tgl-flip" id="kitchen" type="checkbox" onclick="kitchenClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="kitchen"></label>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr align="center">
                <td style="align-content: center">
                    <ul class="tg-list">
                        <li class="tg-list-item">
                            <h4>电视</h4>
                            <input class="tgl tgl-flip" id="tv" type="checkbox" onclick="tvClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="tv"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>热水器</h4>
                            <input class="tgl tgl-flip" id="heater" type="checkbox" onclick="heaterClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="heater"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>衣柜</h4>
                            <input class="tgl tgl-flip" id="wardrobe" type="checkbox" onclick="wardrobeClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="wardrobe"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>暖气</h4>
                            <input class="tgl tgl-flip" id="heating" type="checkbox" onclick="heatingClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="heating"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>宽带</h4>
                            <input class="tgl tgl-flip" id="internet" type="checkbox" onclick="internetClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="internet"></label>
                        </li>
                        <li class="tg-list-item">
                            <h4>沙发</h4>
                            <input class="tgl tgl-flip" id="sofa" type="checkbox" name="sofa" onclick="sofaClick()"/>
                            <label class="tgl-btn" data-tg-off="无" data-tg-on="有" for="sofa" id="sofal"></label>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
    <%--下一步按钮--%>
    <div align="cneter">
        <div align="center">
            <div class="register-box-con2-box clearfix mar-bottom20 mar-top50" align="center">
                <label class="register-box-con2-box-left" style="width: 500px"></label>
                <div class="register-box-con2-box-right" align="center">
                    <input type="submit" value="提交" class="login-box-cen-form-button w180" id="next_submit"
                           align="center"/>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="v_container" style="width: 180px;height: 45px;"></div>


<script type="text/javascript" src="../js/jqueryhouse.min.js"></script>
<script type="text/javascript" src="../js/tbdValidate.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>
<script src="../js/jquery-2.1.1.min.js"></script>



<!--这是页脚-->
<jsp:include page="../pages/basefoot.jsp"></jsp:include>

</body>

</html>
