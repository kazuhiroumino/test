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
<title>まいぺぇじ</title>
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

		<s:iterator value="userList">
				<div class="panel-heading text-center">
					<h2 class="panel-title">ユーザー情報</h2>
				</div>

				<table class="table" style="border:none;">
					<tbody>
						 <tr>
						 <th style="border:none;">名前(漢字)</th>
						<td><s:property value="familyNameKanji" />  <s:property value="givenNameKanji" /></td>
						 </tr>

						<tr>
						 <th>名前(ひらがな)</th>
						<td><s:property value="familyNameKana" />  <s:property value="givenNameKana" /></td>
						 </tr>

						<tr>
						<th>性別</th>
						<td><s:property value="sex" /></td>
						 </tr>

						<tr>
						<th>生年月日</th>
						<td><s:property value="birthday" /></td>
						</tr>

						<tr>
						<th>メールアドレス</th>
						<td><s:property value="email" /></td>
						</tr>

						<tr>
						<th>郵便番号</th>
						<td><s:property value="postal" /></td>
						</tr>

						<tr>
						<th>住所</th>
						<td><s:property value="address" /></td>
						</tr>
					</tbody>
  				</table>
		</s:iterator>

		</div><!-- メインここまで -->

		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->


</body>
</html>