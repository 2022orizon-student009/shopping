<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アンケート</title>
<style type="text/css">
	<!--
	body {
	background-color: #CCFF99;
	background-image: url("/shopping/adpDSC_9246.jpg");
	background-size: cover;
	}
	h3 {
  position: relative;
  display: inline-block;
  padding: 1rem 2rem 1rem 4rem;
  color: #fff;
  border-radius: 100vh 0 0 100vh;
  background:#8FBC8F;
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


h3:before {
  position: absolute;
  top: calc(50% - 7px);
  left: 10px;
  width: 14px;
  height: 14px;
  content: '';
  border-radius: 50%;
  background: #fff;
}	-->
</style>
</head>
<body>
<h3>アンケート</h3><br>
<form action="/shopping/QuestionServlet" method="post">
<h4>1.ケバBショッピングをどれくらいの頻度で利用していますか？（１番近いものをお選びください）</h4>
<input type="radio" name="howoften" value="year">年に1回<br>
<input type="radio" name="howoften" value="halfyear">半年に1回<br>
<input type="radio" name="howoften" value="month">月に1回<br>
<input type="radio" name="howoften" value="week">週に1回<br>

<h4>2.ケバBショッピングを利用する理由を教えてください。（複数回答可能）</h4>
<input type="checkbox" name="why" value="reason1">商品のラインナップが豊富だから<br>
<input type="checkbox" name="why" value="reason2">欲しい商品が売っているから<br>
<input type="checkbox" name="why" value="reason3">注文から配達までが早いから<br>
<input type="checkbox" name="why" value="reason4">指定金額を超えると送料が無料になるから<br>
<input type="checkbox" name="why" value="reason5">サイトが使いやすいから<br>

<h4>3.ケバBショッピングをどれくらい知人に勧めたいですか？</h4>
<input type="radio" name="reccomend" value="1">積極的に勧めたい<br>
<input type="radio" name="reccomend" value="2">機会があれば勧めたい<br>
<input type="radio" name="reccomend" value="3">あまり勧めたくない<br>
<input type="radio" name="reccomend" value="4">絶対勧めたくない<br>
<br>
<input type="submit" value="送信して壁紙をゲット！" class="button2">
</form>
</body>
</html>
