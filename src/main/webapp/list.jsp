<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
<style>
img{
diplay:block;
width:120px; height:90px; padding:20px; border:8px lightblue solid;
}
p{
display:block;
width:250px; height:150px; padding:15px; 
}
form{
display:flex;
}

</style>

</head>
<body>

<jsp:include page="/menu.jsp" />

<h2>商品一覧</h2>



<c:forEach items="${items}" var="item">
	<form action="/shopping/CartServlet?action=add" method="post">
		<input type="hidden" name="item_code" value="${item.code}">
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
		<input type="submit" value="カートに追加"><br></p>
	
	</form>

</c:forEach>


</body>
</html>

