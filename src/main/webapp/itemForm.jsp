<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	
</style>

<form>
<input type="hidden" name="code" value="${category}">
</form>
<br>
<a href="/shopping/ShowItemServlet?action=sort&key=price_asc&code=${category}" class="button2">値段の低い順</a>
<a href="/shopping/ShowItemServlet?action=sort&key=price_desc&code=${category}" class="button2">値段の高い順</a>

<!-- cate -->