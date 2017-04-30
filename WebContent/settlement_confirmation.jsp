<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--jQueryの読み込み--%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/settlement.css">
<link rel="stylesheet" href="./css/base.css">
<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
<title>かくにん</title>
</head>
<body>

<div class="container-fluid">
	<jsp:include page="header.jsp" /><!-- ヘッダー -->
</div>

<div class="container"><!-- メインコントラクター-->
	<div class="row"><!-- メインコンロウ-->
		<div class="col-xs-12 col-sm-2">
			<jsp:include page="sidebar.jsp" /><!-- サイドバー -->
		</div>

		<div class="col-xs-12 col-sm-8"><!-- メイン -->

<div id="confirmation">

<h1>入力情報の確認</h1>


<h2>商品お届け先</h2>
<s:property value="%{shippingAddress}" />
<h2>購入予定の商品</h2>
                <s:iterator value="cartList">
                <div class="table-responsive" >
                    <table class="table">
                        <tr>
                            <td style="">
                                <div class="col-xs-12" style="min-width:400px;height:120px;">
                                    <div class="col-xs-3">
                                        <img src="./img/Product/<s:property value="itemImg01"/>"class="img-responsive" alt="" style="height: 100px; width: 100px; margin-top:10px;">
                                    </div>
                                    <div class="col-xs-9" style="padding:0; margin-top:-20px;">
                                        <h3 style="white-space: normal;"><s:property value="itemName"/></h3><br>
                                        <p><b>価格：<fmt:formatNumber value="${subtotal*1.08}" pattern="###,###,###"/>円(税込)</b></p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                </s:iterator>
<h2>合計支払金額</h2>
<fmt:formatNumber value="${payment}" pattern="###,###,###"/>円(税込)


<br>
<br>
<br>
<br>
                <s:form action="SettlementAction">
                    <s:hidden name="creditNumber" value="%{creditNumber}" />
                    <s:hidden name="creditBrand" value="%{creditBrand}" />
                    <s:hidden name="securityCode" value="%{securityCode}" />
                    <s:hidden name="shippingAddress" value="%{shippingAddress}" />
                    <button type="submit" class="btn btn-primary center-block">購入確定</button>
                </s:form>

</div>


	</div><!-- メインここまで -->

		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->



</body>
</html>