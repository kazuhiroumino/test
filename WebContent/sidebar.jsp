<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div id="sidebar">
<h1><span onmouseover="this.innerHTML='M E N U'" onmouseout="this.innerHTML='お品書き'">お品書き</span></h1>
<h2><span onmouseover="this.innerHTML='P r e s e n t'" onmouseout="this.innerHTML='日本のお土産'">日本のお土産</span></h2>
<ul>
		<li><b><a class="showf" href='<s:url action="GoItemListAction"><s:param name="itemGenre">甚平</s:param></s:url>'>
			<span class="jp">甚平</span><span class="en">Wear</span></a></b></li>
		<li><b><a class="showf" href='<s:url action="GoItemListAction"><s:param name="itemGenre">工芸品</s:param></s:url>'>
			<span class="jp">日本の工芸品</span><span class="en">Japan crafts</span></a></b></li>
		<li><b><a class="showf" href='<s:url action="GoItemListAction"><s:param name="itemGenre">Tシャツ</s:param></s:url>'>
			<span class="jp">文字Tシャツ</span><span class="en">Japanese mojiT</span></a></b></li>
		<li><b><a class="showf" href='<s:url action="GoItemListAction"><s:param name="itemGenre">小物</s:param></s:url>'>
			<span class="jp">日本の小物</span><span class="en">Cool Japan</span></a></b></li>
</ul>

<%-- <p><b><span onmouseover="this.innerHTML='Present'" onmouseout="this.innerHTML='日本のお土産'">日本の行事</span></b></p>
<p><a class="showf" href="#"><span class="jp">日本の行事</span><span class="en">Japan events</span></a></p>
<p><a class="showf" href="#"><span class="jp">日本の小物</span><span class="en">Japanese trinket</span></a></p> --%>


</div>
</body>
</html>