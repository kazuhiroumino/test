<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<link rel="stylesheet" type="text/css" href="./css/settlement.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>けってい</title>
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
			<div id="complete">
				<h1>購入完了画面</h1>

<br><br><br><br><br>

				<b>ありがとうございます。購入が完了いたしました。<br>
						またのご利用を心よりお待ちしております</b>
		</div>

		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>
			</div>
	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->


</body>
</html>