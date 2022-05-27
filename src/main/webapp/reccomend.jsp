<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめ機能</title>
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
	
	-->
img{
width:150px; height:110px; padding:15px;border:8px green solid;
}
p{
padding:5px;
width:250px; height:150px; 
}


article{width:260px;
float:left;}

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


</style>
</head>
<body>




<c:forEach items="${reccomendlist}" var="item" begin="0" end="2" step="1">
	<form action="/shopping/CartServlet?action=add" method="post">
		<input type="hidden" name="item_code" value="${item.code}">
		<input type="hidden" name="code" value="${requestScope.category}">
		
		<article>	
		<img src="image/${item.image}" alt="画像">
		<p>商品番号：<b>${item.code}</b><br>
		商品名：<b>${item.name}</b><br>
		価格（税込）：<b>${item.price}円</b><br>
		個数：
		<select name="quantity">
		<option value="1">1 
		<option value="2">2
		<option value="3">3
		<option value="4">4
		<option value="5">5
		</select>
		個<br>
		<input type="submit" value="カートに追加"><br></article>
	
	</form></c:forEach>
	






</body>
</html>