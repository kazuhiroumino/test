<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/header.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--jQueryの読み込み --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<%--bootstrapの読み込み --%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div id="header">
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<img src="./img/header/LOGO_left.jpg" alt="ロゴ1"  height="150">
					<a href="main_top.jsp"><img src="./img/header/LOGO_left2.jpg" alt="ロゴ2" ></a>
				</div>

	<div class="col-xs-12 col-sm-6">
			<DIV class="vertical">
	<s:if test="#session.userId != null">
				<h3><a class="showf" href='<s:url action="LogOutAction"></s:url>'><span class="jp">ろぐあうと</span><span class="en">L O G O U T</span></a></h3>
				<h3><a class="showf" href='<s:url action="MypageAction"></s:url>'><span class="jp">まいぺぇじ</span><span class="en">M Y P A G E</span></a></h3>
				<h2><a class="showf" href='<s:url action="CartInsertAction"></s:url>'><span class="jp">買い物籠</span><span class="en"> C  A  R  T </span></a></h2>
				<h2><a class="showf" href="guide.jsp"><span class="jp">利用案内</span><span class="en">G U I D E</span></a></h2>
				<h2><a class="showf" href='<s:url action="GoItemListAction"><s:param name="itemGenre">甚平</s:param></s:url>'>
							<span class="jp">商品一覧</span><span class="en">ITEM LIST</span></a></h2>
				<h3><a class="showf" href="main_top.jsp"><span class="jp">とっぷ</span><span class="en">TOP PAGE</span></a></h3>
			</s:if>
			<s:else>
				<h2><a class="showf" href="login.jsp"><span class="jp">ろぐいん</span><span class="en">L O G I N</span></a></h2>
				<h2><a class="showf" href='<s:url action="CartInsertAction"></s:url>'><span class="jp">買い物籠</span><span class="en"> C  A  R  T </span></a></h2>
				<h2><a class="showf" href="guide.jsp"><span class="jp">利用案内</span><span class="en">G U I D E</span></a></h2>
				<h2><a class="showf" href='<s:url action="GoItemListAction"><s:param name="itemGenre">甚平</s:param></s:url>'>
							<span class="jp">商品一覧</span><span class="en">ITEM LIST</span></a></h2>
				<h2><a class="showf" href="main_top.jsp"><span class="jp">とっぷ</span><span class="en">TOP PAGE</span></a></h2>
			</s:else>
			</DIV>
	</div>

	<div class="col-xs-12 col-sm-2">
		<img src="./img/header/LOGO_right.jpg" alt="ロゴ3"  height="150">
	</div>

			</div>
		</div>
	</div>
</body>
</html>