<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布房源信息</title>
    <!--    下面是几个导入的包-->
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
                    <h1 class="logo"><a href="../index.jsp"><img src="../images/logo.png" width="163" height="59"/></a>
                    </h1>
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
            <li><a href="#">新房</a></li>
            <li><a href="#">二手房</a></li>
            <li><a href="#">租房</a></li>
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
<div class="width1190">

    <br/>
    <h4 style="font-size:16px; text-align:center; font-weight:bold;">房源详细信息填写</h4>
    <br/>

    <!--中心-->
    <div class="content">
        <div class="register-box">
            <div class="wrap">
                <div class="register-box-con2">

                    <!--房源性质-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源性质</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseNature"
                                   placeholder="如：商品房、住宅房等" id="house_natuer"/>
                        </div>
                    </div>

                    <!--房源类型-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源类型</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseModel"
                                   placeholder="如：普通住宅、公寓式住宅、别墅等" id="house_model"/>
                        </div>
                    </div>

                    <!--房源建造年-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源建造年</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseYear"
                                   placeholder="如：2008、2019等" id="house_year"/>
                        </div>
                    </div>

                    <!--房源期限-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源期限</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseValid"
                                   placeholder="如：70年、80年、永久等" id="house_valid"/>
                        </div>
                    </div>

                    <!--房源户型-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源户型</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseLayout"
                                   placeholder="如：2厅4室2卫等" id="house_layout"/>
                        </div>
                    </div>

                    <!--房源面积-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源面积</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseArea"
                                   placeholder="如：100、85等。单位：m²" id="house_narea"/>
                        </div>
                    </div>

                    <!--房源朝向-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源朝向</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseTurn"
                                   placeholder="如：南北、西南等" id="house_turn"/>
                        </div>
                    </div>

                    <!--房源楼层-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>房源楼层</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseFloor"
                                   placeholder="如：6、8、9等" id="house_floor"/>
                        </div>
                    </div>

                    <!--总楼层-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>总楼层</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="floorAll"
                                   placeholder="如：7、13、16等" id="floor_all"/>
                        </div>
                    </div>

                    <!--装修类型-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>装修类型</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseDecorate"
                                   placeholder="如：精装修、简装修等" id="house_decorate"/>
                        </div>
                    </div>

                    <!--是否有电梯-->
                    <div class="register-box-con2-box clearfix mar-bottom20">
                        <label class="register-box-con2-box-left"><em class="bitian">* </em>是否有电梯</label>
                        <div class="register-box-con2-box-right">
                            <input type="text" class="login-box-cen-form-input w358" name="houseLift"
                                   placeholder="如：是、否等" id="house_lift"/>
                        </div>
                    </div>

                    <div class="register-box-con2-box clearfix mar-bottom20 mar-top50" align="center">
                        <label class="register-box-con2-box-left"></label>
                        <div class="register-box-con2-box-right" align="center">
                            <input type="button" value="下一步" class="login-box-cen-form-button w180" id="next_submit"/>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<script type="text/javascript" src="../js/jqueryhouse.min.js"></script>
<script type="text/javascript" src="../js/tbdValidate.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>
<script src="../js/jquery-2.1.1.min.js"></script>


<!--这是页脚-->
<jsp:include page="../pages/basefoot.jsp"></jsp:include>
</body>
<script>
    $(function () {
        $("#next_submit").on("click", function () {
            var houseNature = $("input[name=houseNature]").val();
            var houseModel = $("input[name=houseModel]").val();
            var houseYear = $("input[name=houseYear]").val();
            var houseValid = $("input[name=houseValid]").val();
            var houseLayout = $("input[name=houseLayout]").val();
            var houseArea = $("input[name=houseArea]").val();
            var houseTurn = $("input[name=houseTurn]").val();
            var houseFloor = $("input[name=houseFloor]").val();
            var floorAll = $("input[name=floorAll]").val();
            var houseDecorate = $("input[name=houseDecorate]").val();
            var houseLift;
            if ($("input[name=houseLift]").val() == "是") {
                houseLift = 1;
            } else {
                houseLift = 0;
            }

            if (houseNature == "") {
                alert("请输入房源性质！");
                return;
            }
            if (houseModel == "") {
                alert("请输入房源类型！");
                return;
            }
            if (houseYear == "") {
                alert("请输入房源建造年！");
                return;
            }
            if (houseValid == "") {
                alert("请输入房源期限！");
                return;
            }
            if (houseLayout == "") {
                alert("请输入房源户型！");
                return;
            }
            if (houseArea == "") {
                alert("请输入房源面积！");
                return;
            }
            if (houseTurn == "") {
                alert("请输入房源朝向！");
                return;
            }
            if (houseFloor == "") {
                alert("请输入房源楼层！");
                return;
            }
            if (floorAll == "") {
                alert("请输入总楼层！");
                return;
            }
            if (houseDecorate == "") {
                alert("请输入装修类型！");
                return;
            }
            if (houseLift == "") {
                alert("请输入是否有电梯！");
                return;
            }

            $.ajax({
                url: "${pageContext.request.contextPath}/houseController/saveHousePost2.do",
                type: "Post",
                dataType: "json",
                data: {
                    houseNature:houseNature,
                    houseMode:houseModel,
                    houseYear:houseYear,
                    houseValid:houseValid,
                    houseLayout:houseLayout,
                    houseArea:houseArea,
                    houseTurn:houseTurn,
                    houseFloor:houseFloor,
                    floorAll:floorAll,
                    houseDecorate:houseDecorate,
                    houseLift:houseLift
                },
                success:function (data) {
                    window.location.href="${pageContext.request.contextPath}/pages/housePost3.jsp";
                },
                error:function (data) {
                    alert("error");
                }
            })


        })
    })
</script>

</html>
