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
<title>おみやげ</title>
</head>
<body>

	<div class="container-fluid">
		<jsp:include page="header.jsp" /><!-- ヘッダー -->
	</div>

<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-2">
			<jsp:include page="sidebar.jsp" /><!---- サイドバー ---->
		</div>

		<div class="col-xs-12 col-sm-9"><!-- メイン -->
		<div id="top">
			<h1>いらっしゃいませ</h1>
<br>
			<a href='<s:url action="GoItemListAction" ><s:param name="itemGenre" >甚平</s:param></s:url>'>
				<img src="img/top (甚平).jpg" alt="TOP画像"  align="middle"></a>
			<br><br>
			<a href='<s:url action="GoItemListAction"><s:param name="itemGenre">甚平</s:param></s:url>'>
				<img src="img/top (甚平2).jpg" alt="TOP画像"  align="middle"></a>
			<br><br>
						<a href='<s:url action="GoItemListAction"><s:param name="itemGenre">工芸品</s:param></s:url>'>
				<img src="img/top (扇子).jpg" alt="TOP画像"></a>
			<br><br>
						<a href='<s:url action="GoItemListAction"><s:param name="itemGenre">小物</s:param></s:url>'>
				<img src="img/top (傘).jpg" alt="TOP画像"></a>

<br><br>


			<div class="twitter"><!-- ツイッタータグ -->
				<a class="twitter-timeline"	href="https://twitter.com/internousdev" data-widget-id="671917266686971905">@internousdevさんのツイート</a>
					<script>
						!function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
									.test(d.location) ? 'http' : 'https';
							if (!d.getElementById(id)) {
								js = d.createElement(s);
								js.id = id;
								js.src = p
										+ "://platform.twitter.com/widgets.js";
								fjs.parentNode.insertBefore(js, fjs);
							}
						}(document, "script", "twitter-wjs");
					</script>
			</div><!-- ツイッター終了タグ -->


		<div class="ggmp"><!-- Googleマップ -->
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3239.9134752854443!2d139.76492981533488!3d35.703746780189014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c18b82a5b79%3A0xf4b11fd9c5add54c!2z44CSMTEzLTAwMzQg5p2x5Lqs6YO95paH5Lqs5Yy65rmv5bO277yT5LiB55uu77yS4oiS77yR77ySIOW-oeiMtuODjuawtOWkqeelnuODk-ODqw!5e0!3m2!1sja!2sjp!4v1491287347881"
				width="400" height="300" style="border: 0"></iframe>
		</div>
		<div class="clear"></div><!-- 回り込み解除タグ -->
</div>
		</div><!-- メイン終了タグ -->

		<div class="col-xs-12 col-sm-1"><!-- 右端 --></div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->

　
</body>
</html>