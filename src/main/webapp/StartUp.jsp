<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.box {
  position   : relative;
  background-size: cover;
  max-width  : 1750px;
  height     : 700px;
  margin     : auto;
  overflow   : hidden;
  
}

/* --- 背景の指定 ------------------------------------------- */
.box .bgImg {
  position   : absolute;
  top        : 0;
  left       : 0;
  bottom     : 0;
  right      : 0;
  opacity    : 0;
  animation  : bgAnime 20s infinite;   /* 4画像 × 各5s = 20s */
  
}

/* --- 段差で背景画像のアニメーションを実行 ----------------- */
.box .src1 {
  background-image : url(./book1.jpg);   /* 背景の画像を指定 */
}
.box .src2 {
  background-image : url(./dvd1.jpg);   /* 背景の画像を指定 */
  animation-delay  : 5s;
}
.box .src3 {
  background-image : url(./game1.jpg);   /* 背景の画像を指定 */
  animation-delay  : 10s;
}
.box .src4 {
  background-image : url(./game2.jpg);   /* 背景の画像を指定 */
  animation-delay  : 15s;
}

@keyframes bgAnime {
   0% { opacity: 0; transform: scale(1.3, 1.3); }
   1% { opacity: 1; transform: scale(1.3, 1.3); }
   5% { opacity: 1; transform: scale(1.3, 1.3); }
  21% { opacity: 1; transform: scale(1.0, 1.0); }
  25% { opacity: 1; transform: scale(1.0, 1.0); }
  26% { opacity: 0; }
 100% { opacity: 0; }
}

/* --- 前面の文字定義（サンプルのため変更してください） ----- */
.boxString{
  position   : absolute;
  display    : inline-block;
  padding    : 20px;
  background : rgba(0, 127, 255, 0.7);          /* 半透明の青 */
  color      : #fff;
  top        : 50%;                               /* 中央寄せ */
  left       : 50%;
  transform  : translate(-50%,-50%);
}
.buttonaa {
  display       : inline-block;
  border-radius : 5%;          /* 角丸       */
  font-size     : 30pt;        /* 文字サイズ */
  text-align    : center;      /* 文字位置   */
  cursor        : pointer;     /* カーソル   */
  padding       : 20px 20px;   /* 余白       */
  color         : #330033;     /* 文字色     */
  line-height   : 1em;         /* 1行の高さ  */
  transition    : .3s;         /* なめらか変化 */
  
    /* 枠の指定 */
}
.buttonaa:hover {
  box-shadow    : none;        /* カーソル時の影消去 */
  color         : #ffffff;/* 背景色     */
  background    : #330033;     /* 文字色     */
</style>


<meta charset="UTF-8">
<link href="anim-box.css">
<title>ようこそケバBへ！</title>
</head>
<body>

<div class="box">
  <div class="bgImg src1"></div>
  <div class="bgImg src2"></div>
  <div class="bgImg src3"></div>
  <div class="bgImg src4"></div>
  <div class="boxString">
  <a href="/shopping/top.jsp" class="buttonaa">ENTER TO ケバB
</div>


</body>
</html>