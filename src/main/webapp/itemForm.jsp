<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form>
<input type="hidden" name="code" value="${category}">
</form>
ソート：<a href="/shopping/ShowItemServlet?action=sort&key=price_asc&code=${category}">値段の低い順</a>
<a href="/shopping/ShowItemServlet?action=sort&key=price_desc&code=${category}">値段の高い順</a>

<!-- cate -->