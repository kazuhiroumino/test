<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<link rel="stylesheet" type="text/css" href="./css/cart.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--共通jsの読み込み --%>
<script src="./js/cart.js"></script>
<title>買い物籠</title>
</head>
<body>

<div class="container-fluid">
	<jsp:include page="header.jsp" /><!-- ヘッダー -->
</div>

<div class="container"><!-- メインコントラクター-->
	<div class="row"><!-- メインコンテンツロウ全体-->
		<div class="col-xs-12 col-sm-2">
			<jsp:include page="sidebar.jsp" /><!-- サイドバー -->
		</div>

		<div class="col-xs-12 col-sm-10"><!-- メイン -->
		<div class="row"><!-- メイン内のロウ-->
		<div class="col-xs-12 col-sm-12"><!--カート内リスト-->
	<div id="cart">


	<table>
	<tbody>
		<tr >
			<th class="item_img">商品画像</th>
			<th class="item_name">商品名</th>
			<th class="item_count">数量</th>
			<th class="item_price">価格</th>
		</tr>
		 <s:iterator value="cartList">
		<tr>
			<td ><!-- 商品画像 -->
				<img src="./img/Product/<s:property value="itemImg01"/>"class="img-responsive" alt="" style="width: 75px; height: 80px; margin:2px;">
			</td>

			<td><!-- 商品名 -->
				<s:property value="itemName"/>
			</td>

			<td> <!-- 数量 -->
 				<s:form action="CartInsertAction" id="form01">
					<s:hidden name="itemId" value="%{itemId}" />
						<div class="row" style="width: 150px;">
							<div class="col-xs-4" style="padding: -5px;">
 								<button type="button" class="btn btn-default" onclick="minus('${itemId}')">-</button>
 							</div>
							<div class="col-xs-4" style="padding: 0px 0px 0px 3px;">
 								<div class="form-group">
 									<input type="text" class="form-control" id="${itemId}"name="orderNumber" value="${orderCount}" maxlength="2"pattern="[0-9]*">
								</div>
							</div>
							<div class="col-xs-4" style="padding: 0px 5px;">
								<button type="button" class="btn btn-default"onclick="plus('${itemId}')">+</button>
							</div>
						</div>
						 <div class="col-xs-5" style="padding:0px;">
								<button type="submit" id="form01" class="btn btn-primary center-block">更新</button>
						</div>
 				</s:form>

				<s:form action="CartDeleteAction">
					 <s:hidden name="userId" value="%{userId}" />
 					<s:hidden name="itemId" value="%{itemId}" />
					 <button type="submit" class="btn btn-default">削除</button>
				</s:form>
			</td><!-- 数量ここまで -->

			<td><!-- 価格 -->
				<fmt:formatNumber value="${subtotal}" pattern="###,###,###"/>円(税込)
			</td>

		</tr>
		</s:iterator>
	</tbody>
	</table>
	</div><!--id-->
	</div><!--カート内リスト-->

	<div class="col-xs-12 col-sm-12 "><!-- 商品合計数を囲う -->
	<br>
		<div class="panel panel-default center-block" style="width:500px">
			<div class="panel-heading" style="background:#fde8d0">
				<div class="well">
					商品代金合計<br>
						<p class="text-right"><fmt:formatNumber value="${payment}" pattern="###,###,###"/>円(税込)</p>
					合計注文数<br>
						<p class="text-right">${order}点</p>
				</div>
		<s:form action="GoSettlementAction"><!-- 購入ボタンフォーム -->
			<button type="submit" class="btn btn-warning center-block">ご注文手続きに進む</button>
		</s:form>
			</div>
		</div>
	</div><!-- 商品合計数を囲う -->

	</div><!-- メイン内のロウ-->
	</div><!-- メイン-->

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->

<div id="footer"></div><!-- フッター -->
</body>
</html>