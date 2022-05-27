<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カートの中身</title>
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
		
		-->
</style>
</head>
<body>
<jsp:include page="/menu.jsp" /><br><br><br>


<h3>現在のカートの中身</h3>

<c:if test="${empty cart.items}">
現在、カートは空です。
</c:if>

<c:if test="${not empty cart.items}">
<table border="1">
<tr><td>商品番号</td><td>商品名</td><td>単価(税込み)</td>
    <td>個数</td><td>小計</td><td>削除</td></tr>
    
  <c:forEach items="${cart.items}" var="item">
  <tr>
      <td align="center">${item.code}</td>
       <td align="center">${item.name}</td>
        <td align="right">${item.price}</td>
         <td align="right">${item.quantity}</td>
          <td align="right">${item.price * item.quantity}</td>
   <td>
   <form action="/shopping/CartServlet?action=delete" method="post">
       <input type="hidden" name ="item_code" value="${item.code}">
       <input type="submit" value="削除">
   </form>
  </td>
  </tr>
   </c:forEach>
   <tr><td align="right" colspan="6">総計:${cart.total}円</td></tr>


<!--5000円以上買うと500円の送料が無料になる -->
<c:if test="${cart.total ge 5000 }">
<tr><td align="right" colspan="6">送料：500 - 500 = 0 円</td></tr>
<tr><td align="right" colspan="6">お支払金額：${cart.total}円</td></tr>
</c:if>
<c:if test="${cart.total lt 5000 }">
<tr><td align="right" colspan="6">送料：500 円</td></tr>
<tr><td align="right" colspan="6">お支払い金額：${cart.total + 500}円</td></tr>
</c:if>
<!-- 送料無料↑ -->

</table>


<form action="/shopping/OrderServlet?action=input_customer" method="post">
<input type="submit" value="注文する" class="button2"><br><br>
</form>
</c:if>
<br><br>
<!-- jsp にもコピーしてある -->
<jsp:include page="/reccomend.jsp" /><br>

	

</body>
</html>