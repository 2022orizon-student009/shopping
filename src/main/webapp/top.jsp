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
	  h2 {
  position: relative;
  display: inline-block;
  padding: 1rem 2rem 1rem 4rem;
  color: #fff;
  border-radius: 100vh 0 0 100vh;
  background:#8FBC8F;
}

h2:before {
  position: absolute;
  top: calc(50% - 7px);
  left: 10px;
  width: 14px;
  height: 14px;
  content: '';
  border-radius: 50%;
  background: #fff;
}

	</style>
</head>
<body>


<h1>Welcome to ケバB</h1>
<hr>
<jsp:include page="/menu.jsp" /><br>
<br><h3>
～本、DVD、ゲームの総合通販サイト～<br><br>
<span style="border-bottom: solid 5px yellow;"> 豊富な品揃え、5000円以上ご購入で送料無料、注文の翌日にはお届け</span><br><br>
買うならケバB！<br>
</h3>
<h2>ケバBの占いコーナー</h2>
<Marquee>
今日のラッキーアイテムは
<c:choose>
  <c:when test="${luck eq 0}">タコス</c:when>
  <c:when test="${luck eq 1}">タコライス</c:when>
  <c:when test="${luck eq 2}">ナチョス</c:when>
  <c:otherwise>ブリトー</c:otherwise>
</c:choose>
 です。

</Marquee>
</body>
</html>