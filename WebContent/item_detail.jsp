<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="itemName" /></title>
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

		<div class="col-xs-12 col-sm-9"><!-- メイン -->

			<s:iterator value="itemList">
				<script>
					function changeImg1() {
						document.imgblock.src = './img/Product/<s:property value="itemImg01"/>';
					}
					function changeImg2() {
						document.imgblock.src = './img/Product/<s:property value="itemImg02"/>';
					}
					function changeImg3() {
						document.imgblock.src = './img/Product/<s:property value="itemImg03"/>';
					}
				</script>
			</s:iterator>

			<s:iterator value="itemList">
				<div class="row">
					<div class="col-xs-12 col-sm-1"></div>
					<div class="col-xs-12 col-sm-7">
						<table>
							<tr>
								<div>
									<img src='./img/Product/<s:property value="itemImg01"/>'
										class="img-thumbnail" style="width: 460px; height: 450px;"
										name="imgblock">
								</div>
								<div>
									<img src='./img/Product/<s:property value="itemImg01"/>'
										style="width: 150px; height: 170px;" class="img-thumbnail"
										onclick="changeImg1()"> <img
										src='./img/Product/<s:property value="itemImg02"/>'
										style="width: 150px; height: 170px;" class="img-thumbnail"
										onclick="changeImg2()"> <img
										src='./img/Product/<s:property value="itemImg03"/>'
										style="width: 150px; height: 170px;" class="img-thumbnail"
										onclick="changeImg3()">
								</div>
							</tr>
						</table>
					</div>

					<div class="col-xs-12 col-sm-4"
						style="height: auto; margin: 3rem auto; margin-left: -15px;">
						<div class="panel panel-default">
							<div class="panel-heading" style="height: auto;">
								<h4 style="word-wrap: break-word;">
									<s:property value="itemName" />
								</h4>
							</div>

							<div class="panel-body bg-success" style="height: auto;">
								<div class="col-xs-12 col-sm-12">
									<h4>価格 /price：￥<fmt:formatNumber value="${price}" /></h4>
								</div>
								<br>
								<div class="col-xs-12 col-sm-12">
									<p>	在庫 /stock：${stock}個</p>
								</div>

								<h2>
									<s:form action="CartInsertAction">
										<s:hidden name="itemId" value="%{itemId}" />
										<s:hidden name="orderNumber" value="1" />
										<s:hidden name="detail" value="true" />
										<button class="btn btn-lg btn-primary btn-block" type="submit"
											<s:if test="stock<=0">disabled</s:if>>
											カート /cart
										</button>
									</s:form>
								</h2>
							</div>
						</div>
					</div>
				</div>

				<br>
				<div class="row">
					<div class="col-xs-12 col-sm-1"></div>
					<div class="col-xs-12 col-sm-10"
						style=" height: auto;">
						<div class="panel panel-info" style="height: auto;">
							<div class="panel-heading">
								<h2>商品説明 / Product description</h2>
							</div>
							<div class="panel-body">

								<strong><s:property value="itemJa" /><br>
								<br>
								<s:property value="itemEn" /></strong>

							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-1"></div>
			</s:iterator>


		</div>

		<div class="col-xs-12 col-sm-1"><!-- 右端 -->	</div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->


</body>
</html>