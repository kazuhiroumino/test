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
<title>ろぐいん</title>
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

						<s:form class="center-block" style="margin: 5rem auto;" action="LoginAction">
					<fieldset>
						<legend>ログイン画面</legend>
						<p>メールアドレスとパスワードを入力してください</p>
						<div class="form-group">
							<label for="mail"> メールアドレス <%-- 						<span class="label label-danger">必須</span> --%>
							</label> <input type="email" id="mail" name="email" class="form-control" />
						</div>
						<div class="form-group">
							<label for="password"> パスワード <%-- 						<span class="label label-danger">必須</span> --%>
							</label> <input type="password" name="password" class="form-control">
						</div>

						<button type="submit" class="btn btn-primary center-block"
							id="submit">
							<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
							ログイン
						</button>
					</fieldset>
				</s:form>



		</div><!-- メインここまで -->

		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->


</body>
</html>