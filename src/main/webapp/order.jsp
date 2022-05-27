<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.LocalDate" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文完了</title>
<style type="text/css">
	<!--
	body {
	background-color: #CCFF99;
	background-image: url("/shopping/adpDSC_9246.jpg");
	background-size: cover;
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

<jsp:include page="/menu.jsp" /><br><br>
<h2>ご注文ありがとうございました。</h2><br>
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