<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
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
</style>

<a href="/shopping/ShowItemServlet?action=top" class="button2">ようこそ</a>|
<c:forEach items="${categories}" var="category">
<a href="/shopping/ShowItemServlet?action=list&code=${category.code}" class="button2">${category.name}</a>|
</c:forEach>

<a href="/shopping/CartServlet?action=show" class="button2">カートを見る</a>
　　全国一律送料500円!!5000円以上のお買い上げで送料無料!!