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
    <h4 style="font-size:16px; text-align:center; font-weight:bold;">房源基本信息填写</h4>
    <br/>
    <!--中心-->
    <div class="content">
        <div class="register-box">
            <div class="wrap">
                <div class="register-box-con2">
                    <form action="${pageContext.request.contextPath}/houseController/toHousePost.do" method="post" enctype="multipart/form-data">
                        <!--房源标题-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left"><em class="bitian">* </em>房源标题</label>
                            <div class="register-box-con2-box-right">
                                <input type="text" name="houseTitle" class="login-box-cen-form-input w358"
                                       placeholder="请输入您的房源帖子标题" id="reg_info_company"/>
                                <!--                        	<label id="reg_info_company_text"  class="err err-top40">请输入与工商营业执照一致的公司名称，不超过20个字</label>-->
                            </div>
                        </div>

                        <!--房源地址-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left"><em class="bitian">* </em>房源地址</label>
                            <div class="register-box-con2-box-right">
                                <input type="text" name="houseAddress" class="login-box-cen-form-input w358"
                                       placeholder="请输入您的房源详细地址" id="reg_info_www"/>
                                <!--                        	<label class="err err-top40" id="reg_info_www_text">请输入正确的网址</label>-->
                            </div>
                        </div>

                        <!--预期售价-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left"><em class="bitian">* </em>期望售价</label>
                            <div class="register-box-con2-box-right">
                                <input type="text" name="housePrice" class="login-box-cen-form-input w180"
                                       placeholder="请输入期望售价" id="reg_info_address"/>
                                <!--                        	<label class="err err-top40" id="reg_info_address_text">公司所在地址，不超过40个字</label>-->
                                <div id="parent">
                                    <select name="priceUnit">
                                        <option>元/套</option>
                                        <option>元/月</option>
                                        <option>元/年</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <!--FIXME  房源头像图-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left"><em class="bitian"></em>房源头像图</label>
                            <div class="register-box-con2-box-right">
                                <label class="register-box-con2-box-upload">
                                    <input type="file" name="houseHeadimg" id="headimg"/>
                                    <div class="register-box-con2-box-upload-ti">
                                        <em id="headimg_w">点击上传</em>
                                        <img id="headimg_base64" style="display:none;"/>
                                    </div>
                                </label>
                                <label class="err err-top160" id="headimgText">支持图片格式JPG/PNG，图片大小不超过2M</label>
                            </div>
                        </div>

                        <!--FIXME 房源平面图-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left">
                                <em class="bitian">
                                </em>房源平面图</label>
                            <div class="register-box-con2-box-right">
                                <!--第一张图片-->
                                <label class="register-box-con2-box-upload1">
                                    <input type="file" name="housePlanimg1" id="planimg1"/>
                                    <div class="register-box-con2-box-upload-ti1">
                                        <em id="planimg1_w">上传</em>
                                        <img id="planimg1_base64" style="display:none;"/></div>
                                </label>
                                <!--第二张图片-->
                                <label class="register-box-con2-box-upload1" style=" margin-left: 10px;">
                                    <input type="file" name="housePlanimg2" id="planimg2"/>
                                    <div class="register-box-con2-box-upload-ti1">
                                        <em id="planimg2_w">上传</em>
                                        <img id="planimg2_base64" style="display:none;"/></div>
                                </label>
                                <label class="err err-top160" id="planimg1Text">支持图片格式JPG/PNG，图片大小不超过2M</label>
                            </div>
                        </div>

                        <!--FIXME 房源室内图-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left">
                                <em class="bitian"></em>房源室内图
                            </label>
                            <div class="register-box-con2-box-right">
                                <!--第一张图片-->
                                <label class="register-box-con2-box-upload2">
                                    <input type="file" name="houseImg1" id="inter1"/>
                                    <div class="register-box-con2-box-upload-ti2"><em id="inter1_w">上传</em><img
                                            id="inter1_base64" style="display:none;"/></div>
                                </label>
                                <!--第二章图片-->
                                <label class="register-box-con2-box-upload2" style=" margin-left: 10px;">
                                    <input type="file" name="houseImg2" id="inter2"/>
                                    <div class="register-box-con2-box-upload-ti2"><em id="inter2_w">上传</em><img
                                            id="inter2_base64" style="display:none;"/></div>
                                </label>
                                <!--第三张图片-->
                                <label class="register-box-con2-box-upload2" style=" margin-left: 10px;">
                                    <input type="file" name="houseImg3" id="inter3"/>
                                    <div class="register-box-con2-box-upload-ti2"><em id="inter3_w">上传</em><img
                                            id="inter3_base64" style="display:none;"/></div>
                                </label>
                                <label class="err err-top160" id="inter2_text">支持图片格式JPG/PNG，图片大小不超过2M</label>
                            </div>
                        </div>
                        <!--第二行图片-->
                        <div class="register-box-con2-box clearfix mar-bottom20">
                            <label class="register-box-con2-box-left"><em class="bitian"></em></label>
                            <div class="register-box-con2-box-right">
                                <!--第四张图片-->
                                <label class="register-box-con2-box-upload2">
                                    <input type="file" name="houseImg4" id="inter4"/>
                                    <div class="register-box-con2-box-upload-ti2"><em id="inter4_w">上传</em><img
                                            id="inter4_base64" style="display:none;"/></div>
                                </label>
                                <!--第五张图片-->
                                <label class="register-box-con2-box-upload2" style=" margin-left: 10px;">
                                    <input type="file" name="houseImg5" id="inter5"/>
                                    <div class="register-box-con2-box-upload-ti2">
                                        <em id="inter5_w">上传</em>
                                        <img id="inter5_base64" style="display:none;"/>
                                    </div>
                                </label>
                                <!--第六章图片-->
                                <label class="register-box-con2-box-upload2" style=" margin-left: 10px;">
                                    <input type="file" name="houseImg6" id="inter6"/>
                                    <div class="register-box-con2-box-upload-ti2">
                                        <em id="inter6_w">上传</em>
                                        <img id="inter6_base64" style="display:none;"/></div>
                                </label>
                                <label class="err err-top160" id="inter3_text">支持图片格式JPG/PNG，图片大小不超过2M</label>
                            </div>
                        </div>
                        <!--End 房源室内图-->
                        <div class="register-box-con2-box clearfix mar-bottom20 mar-top50">
                            <label class="register-box-con2-box-left"></label>
                            <div class="register-box-con2-box-right">
                                <input type="submit" value="下一步" class="login-box-cen-form-button" style="width: 360px"
                                       id="reg_info_submit"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br/><br/>
</div>

<script type="text/javascript" src="../js/jqueryhouse.min.js"></script>
<script type="text/javascript" src="../js/tbdValidate.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>
<script src="../js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">

    //图片预览路径
    function getObjectURL(file) {
        var url = null;
        if (window.createObjectURL != undefined) { // basic
            url = window.createObjectURL(file);
        } else if (window.URL != undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file);
        }
        return url;
    }
</script>

<!--这是页脚-->
<jsp:include page="../pages/basefoot.jsp"></jsp:include>


<br>
</body>
</html>
