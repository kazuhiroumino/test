<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/item.css">
<link rel="stylesheet" type="text/css" href="./css/base.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品一覧</title>
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


	<ul class="nav nav-tabs">
		<li class="nav-item">
			 <a href="#tab1" class="nav-link navbar-default active" data-toggle="tab">ブロック</a>
		</li>
		<li class="nav-item">
			<a href="#tab2" class="nav-link navbar-default" data-toggle="tab">リスト</a>
		</li>
	</ul>
  <!--タブの中身-->
	<div class="tab-content">
		<div id="tab1" class="tab-pane active">
  <!--Tab1の内容-->
			<div id="itemblock">
      <br>
				<s:iterator value="displayList" >
					<div class="col-xs-12 col-sm-4">
						<p><a href="<s:url action="GoItemDetailAction"><s:param name="id" value="%{itemId}"/></s:url>">
								<img src="img/Product/<s:property value="itemImg01"/>" height="260" width="230"/></p>
						<p> <s:property value="itemName"/><br>
						 <fmt:formatNumber value="${price}" />円</p></a>
					</div>
 				</s:iterator>
			</div>
		</div>

		<div id="tab2" class="tab-pane">
     <!--Tab２の内容-->

      <br>
				<s:iterator value="displayList" >
					<div class="col-xs-12 col-sm-10">
							<div class="container"><!-- リスト内ー-->
								<div class="row">
<div id="itemlist">
									<div class="col-xs-12 col-sm-2">
						<a href="<s:url action="GoItemDetailAction"><s:param name="id" value="%{itemId}"/></s:url>">
								<img src="img/Product/<s:property value="itemImg01"/>" height="150" width="150"/></a>
								</div>
								<div class="col-xs-12 col-sm-10">
						<a href="<s:url action="GoItemDetailAction"><s:param name="id" value="%{itemId}"/></s:url>">
								<s:property value="itemName"/><br>
								<fmt:formatNumber value="${price}" />円</a>
								</div>
								 <div class="col-xs-12 col-sm-12"> </div>
</div>
								</div>
							</div><!-- リスト内ー-->
						</div>
				</s:iterator>

</div>
		</div>

	</div><!-- メインここまで -->

		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->



</body>
</html>