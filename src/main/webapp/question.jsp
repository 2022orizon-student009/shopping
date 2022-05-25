<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Questionare</title>
</head>
<body>
<form action="/shopping/Present.jsp" method="post">
<h4>ケバBショッピングをどれくらいの頻度で利用していますか？（１番近いものをお選びください）</h4>
<input type="radio" name="howoften" value="year">年に1回<br>
<input type="radio" name="howoften" value="halfyear">半年に1回<br>
<input type="radio" name="howoften" value="month">月に1回<br>
<input type="radio" name="howoften" value="week">週に1回<br>

<h4>ケバBショッピングを利用する理由を教えてください。（複数回答可能）</h4>
<input type="checkbox" name="why" value="reason1">商品のラインナップが豊富だから<br>
<input type="checkbox" name="why" value="reason2">欲しい商品が売っているから<br>
<input type="checkbox" name="why" value="reason3">注文から配達までが早いから<br>
<input type="checkbox" name="why" value="reason4">指定金額を超えると送料が無料になるから<br>
<input type="checkbox" name="why" value="reason5">サイトが使いやすいから<br>

<h4>ケバBショッピングをどれくらい知人に勧めたいですか？</h4>
<input type="radio" name="reccomend" value="1">積極的に勧めたい<br>
<input type="radio" name="reccomend" value="2">機会があれば勧めたい<br>
<input type="radio" name="reccomend" value="3">あまり勧めたくない<br>
<input type="radio" name="reccomend" value="4">絶対勧めたくない<br>
<br>
<input type="submit" value="送信して壁紙をゲット！">
</form>
</body>
</html>
