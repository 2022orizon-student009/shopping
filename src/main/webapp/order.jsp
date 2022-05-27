<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.LocalDate" %>

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
		-->
</style>
</head>
<body>

<jsp:include page="/menu.jsp" /><br>
<h2>ご注文ありがとうございました。</h2>
お客様の注文番号は<font color="red" size=5>${orderNumber}</font>になります。

<%
LocalDate today = LocalDate.now();
%>

<h3><font color="red" size=5><%= today.plusDays(1)%></font>にお届け予定です。</h3>
<hr>
<h4>アンケートにお答えいただいた方にスペシャルスマホ壁紙をプレゼントします！</h4>
<font color="FF4F02">★★★</font><a href="/shopping/question.jsp">アンケートはこちら</a><font color="FF4F02">★★★</font>
</body>
</html>