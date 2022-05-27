<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int num = (int)(Math.random() * 4);
	request.setAttribute("luck", Integer.valueOf(num));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
<style type="text/css">
	<!--
	body {
	background-color: #CCFF99;
	background-image: url("/shopping/adpDSC_9246.jpg");
	background-size: cover;
	}
	h1{
	font-family:"Arial Black";
	font-size: 3.4rem;
  	color: #fff;
  	text-shadow:-8px 6px 0 #000;
  	background:green;
  	font-weight: bold;
  	text-align: center
	}
	
	-->
	.flame {
padding: 1px;
margin: 2em auto;
width: 100%;
color: black;
background: #66FF99;
}
	p {background:linear-gradient(transparent 70%, #FFFF00 0%);}
	</style>
</head>
<body>


<h1>Welcome to ケバB</h1>
<hr>
<jsp:include page="/menu.jsp" /><br>
<br><h3>
～本、DVD、ゲームの総合通販サイト～<br><br>
<p>豊富な品揃え、5000以上ご購入で送料無料、注文の翌日にはお届け</p><br><br>
買うならケバB！<br><br><br>
</h3>
<div class="flame"><h3>ケバBの占いコーナー</h3></div>

<c:choose>
  <c:when test="${luck eq 0}">今日のラッキーアイテムはタコスです。</c:when>
  <c:when test="${luck eq 1}">今日のラッキーアイテムはタコライスです。</c:when>
  <c:when test="${luck eq 2}">今日のラッキーアイテムはナチョスです。</c:when>
  <c:otherwise>今日のラッキーアイテムはブリトーです。</c:otherwise>
</c:choose>


</body>
</html>