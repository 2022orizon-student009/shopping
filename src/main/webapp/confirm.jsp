<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文確認</title>
<style type="text/css">
	<!--
	body {
	background-color: #CCFF99;
	background-image: url("/shopping/adpDSC_9246.jpg");
	background-size: cover;
	}
	.button2 {
  display       : inline-block;
  border-radius : 5%;
  font-size     : 18pt;
  text-align    : center;
  cursor        : pointer;
  padding       : 12px 12px;
  background    : #ff7f00;
  color         : #ffffff;
  line-height   : 1em;
  transition    : .3s;
  box-shadow    : 6px 6px 3px #666666;
  border        : 2px solid #ff7f00;
}
.button2:hover {
  box-shadow    : none;
  color         : #ff7f00;
  background    : #ffffff;
}
table{
background-color:#fffacd}
h3 {
  position: relative;
  display: inline-block;
  padding: 1rem 2rem 1rem 4rem;
  color: #fff;
  border-radius: 100vh 0 0 100vh;
  background:#8FBC8F;
}

h3:before {
  position: absolute;
  top: calc(50% - 7px);
  left: 10px;
  width: 14px;
  height: 14px;
  content: '';
  border-radius: 50%;
  background: #fff;
}
	
	
	-->
</style>
</head>
<body>

<jsp:include page="/menu.jsp"/><br><br>
<h2>下記の内容で注文を行いますか？</h2>
<h3>ご注文商品</h3>

<c:if test="${not empty cart.items}">
<table border="1">
<tr><td>商品番号</td><td>商品名</td><td>単価（税込）</td><td>個数</td><td>小計</td><tr>

<c:forEach items="${cart.items}" var="item">
<tr>
	<td align="center">${item.code}</td>
	<td align="center">${item.name}</td>
	<td align="right">${item.price}円</td>
	<td align="right">${item.quantity}</td>
	<td align="right">${item.price * item.quantity}円</td>
</tr>
</c:forEach>
<tr><td align="right" colspan="6">総計：${cart.total}円</td></tr>


<!--5000円以上買うと500円の送料が無料になる -->
<c:if test="${cart.total ge 5000 }">
<tr><td align="right" colspan="6">送料：0 円</td></tr>
<tr><td align="right" colspan="6">お支払金額：${cart.total}円</td></tr>
</c:if>
<c:if test="${cart.total lt 5000 }">
<tr><td align="right" colspan="6">送料：500 円</td></tr>
<tr><td align="right" colspan="6">お支払い金額：${cart.total + 500}円</td></tr>
</c:if>
<!-- 送料無料↑ -->
</table>


<h3>お客様情報</h3>

<form action="/shopping/OrderServlet?action=order" method="post">
	<table border="1">
		<tr>
		<td>お名前</td><td>${customer.name}</td>
		</tr>
		<tr>
		<td>住所</td><td>${customer.address}</td>
		</tr>
		<tr>
		<td>電話番号</td><td>${customer.tel}</td>
		</tr>
		<tr>
		<td>e-mail</td><td>${customer.email}</td>
		</tr>
	</table>
	
	<%
	String payment = request.getParameter("pay");
	String selectedPayment;
	if(payment==null){
		selectedPayment="選択されてません";
	}else{
		switch(payment){
		case "card":
			selectedPayment = "クレジットカード";
			break;
		case "bank":
		 	selectedPayment = "銀行振込";
		 	break;
		case "cash":
		 	selectedPayment = "代引き";
		 	break;
		default:
			selectedPayment = "???";
			break;
		}
	}
	%>
	<h3>お支払方法</h3><br>
	<h2><%=selectedPayment %></h2>
	<br>
	<input type="submit" value="この内容で注文" class="button2">
</form>
</c:if>
</body>
</html>