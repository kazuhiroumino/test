<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<link rel="stylesheet" type="text/css" href="./css/guide.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ご案内</title>
</head>
<body>

<div class="container-fluid">
	<jsp:include page="header.jsp" /><!-- ヘッダー -->
</div>

<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-2">
			<jsp:include page="sidebar.jsp" /><!-- サイドバー -->
		</div>

		<div class="col-xs-12 col-sm-8"><!-- メイン -->
			<div id=guide>
		<ul class="nav nav-tabs">
    <li class="nav-item">
      <a href="#tab1" class="nav-link navbar-default active" data-toggle="tab">日本語</a>
    </li>
    <li class="nav-item">
      <a href="#tab2" class="nav-link navbar-default" data-toggle="tab">English</a>
    </li>
  </ul>
  <!--タブの中身-->
  <div class="tab-content">
    <div id="tab1" class="tab-pane active"> <!--Tab1の内容-->
			<br>
				<table>
					<tbody>
						<tr>
			<td><a href="#kakaku">販売価格</a></td>
			<td><a href="#hikiwatashi">引き渡し時期</a></td>
		</tr>
		<tr>
			<td><a href="#souryo">送料</a></td>
			<td><a href="#kyanseru">ご注文のキャンセル</a></td>
		</tr>
		<tr>
			<td><a href="#tyumon">注文方法</a></td>
			<td><a href="#henpin">返品・交換について</a></td>
		</tr>
		<tr>
			<td><a href="#shiharai">支払い方法</a></td>
			<td><a href="#otoiawase">お問い合わせ</a></td>
		</tr>
	</tbody>
</table>
<h2><a id="kakaku"><font color="#0000">販売価格</font></a></h2>
<p>商品ごとに記載。消費税は商品代金に含まれています。 </p>

<h2><a id="souryo"><font color="#0000">送料</font></a></h2>
<p>【国内・海外】<br>
 現在無料キャンペーン中！ </p>

<h2><a id="tyumon"><font color="#0000">注文方法</font></a></h2>

<p>当サイト上のカートから購入画面へ移動して下さい。<br>
 予め会員登録されている方はログインが必要です。 </p>

<p>会員登録されていない方は申し訳ありませんが会員登録をお願いいたします。 </p>

<p>その場合はお客様の情報を購入頂く際に入力して下さい。<br>
 商品の販売数を限定する場合がございます。 </p>

<h2><a id="shiharai"><font color="#0000">支払い方法</font></a></h2>

<p>クレジットカード決済印デザインオンラインストアではVISA、MASTER、AMEX<br>
上記3種類のクレジットカード決済をご使用になれます。</p>

<h2><a id="hikiwatashi"><font color="#0000">引渡し時期</font></a></h2>

<p>在庫がある商品注文を承ってから5営業日以内に発送。予約品・取り寄せ品・特別注文品入荷次第即時発送。<br>
品切れの場合ご希望の商品が品切れの場合、商品のキャンセル、もしくはご予約をメールにてご連絡いたします。</p>

<h2><a id="kyanseru"><font color="#0000">ご注文のキャンセル</font></a></h2>

<p>キャンセル可能期間は、ご注文から商品の発送前までとなります。<br>
 発送後のキャンセルはお受けする事ができません。ご注意下さい。 </p>

<h2><a id="henpin"><font color="#0000">返品・交換について</font></a></h2>

<p>お客様ご都合の場合商品に不備がない限り返品、交換は出来ませんのでご了承下さい。<br>
※パソコンや携帯端末での閲覧という特性上、商品の画像が実際の色目と多少異なる場合が有りますがご了承ください。<br>
 ( 画像の色目については当方の不備として扱いません。 色などについてもっと詳しく知りたい方はお買い上げ前にお問合せください。TEL: 0120-×-5081 )<br>
 印デザインにて不備があった場合商品の破損、サイズ違い、その他、印デザインの不手際により不備が発生した場合は、印デザインにて送料を負担いたします。</p>

<h2><a id="otoiawase"><font color="#0000">お問い合わせ</font></a></h2>

<p>メールでお問合わせの方は　<strike><a href="mailto:abcdefg@hijklmn.com"><font color="#ff0055">コチラ</font></a></strike></p>
<p>①受付時間:09：00～18：00（平日）<br>
②なお、土日、祝祭日にいただいたお問い合わせへのご返答は翌営業日以降となりますので、 あらかじめご了承ください。<br>
③また、メールによる退会の受付は行っておりませんので、ご承知おきください。<br>
</p>

    </div> <!--Tab1の内容ここまで-->

    <div id="tab2" class="tab-pane">     <!--Tab２の内容-->
    			<br>
				<table>
					<tbody>
						<tr>
			<td><a href="#kakaku2">Selling price</a></td>
			<td><a href="#hikiwatashi2">Delivery time</a></td>
		</tr>
		<tr>
			<td><a href="#souryo2">Shipping fee</a></td>
			<td><a href="#kyanseru2">Handling of order</a></td>
		</tr>
		<tr>
			<td><a href="#tyumon2">How to order</a></td>
			<td><a href="#henpin2">Return / exchange</a></td>
		</tr>
		<tr>
			<td><a href="#shiharai2">Payment method.</a></td>
			<td><a href="#otoiawase2">Contact Us</a></td>
		</tr>
	</tbody>
</table>
<h2><a id="kakaku2"><font color="#0000">Selling price</font></a></h2>
<p>Listed for each product. The consumption tax is included in the item price.</p>

<h2><a id="souryo2"><font color="#0000">Shipping fee</font></a></h2>
<p>【Domestic · Overseas】<br>
Currently in free campaign!</p>

<h2><a id="tyumon2"><font color="#0000">How to order</font></a></h2>
<p>Please move from the cart on this site to the purchase screen.<br>
If you are a scheduled member, login is required.</p>

<p>Those who are not registered as members are not translated lecturers, but please register as a member.</p>

<p>In that case please enter when purchasing your information.<br>
We may limit the quantity sold of products.</p>

<h2><a id="shiharai2"><font color="#0000">Payment method</font></a></h2>
<p>In the credit card payment printing online store, VISA, MASTER, AMEX<br>
You can use three types of credit card payment.</p>

<h2><a id="hikiwatashi2"><font color="#0000">Delivery time<br></font></a></h2>
<p>Shipped within 5 business days after receiving a product order with stock. Pre-ordered items · Toyo products · Special ordered items will be shipped immediately upon arrival.<br>
In the case of out of stock If the item you want is out of stock, we will contact you via e-mail regarding product handling and further reservations.</p>

<h2><a id="kyanseru2"><font color="#0000">Handling of orders</font></a></h2>
<p>The serviceable period will be from order to shipment before shipment.<br>
Operation after shipment can not be accepted. be careful.</p>

<h2><a id="henpin2"><font color="#0000">About returned goods and exchange</font></a></h2>
<p>In case of customer's convenience Please understand that returned goods can not be exchanged unless goods are defective.<br>
※ Because of browsing and characteristics on personal computers and mobile terminals, images of products may differ slightly from actual eyelids, but please understand.<br>
(We will not treat the color of eyes as obviously incomplete.) If you would like to know more about color etc, please contact the purchase.TEL: 0120- × -5081)<br>
When there is a defect in the design of the mark When the incompleteness occurs due to the breakage of the product, size difference, etc., due to incompatibility of printing design, we will pay the shipping fee with the sign design.</p>

<h2><a id="otoiawase2"><font color="#0000">Contact Us</font></a></h2>
<p>Click here for talking by <strike><a href="mailto:abcdefg@hijklmn.com"><font color="#ff0055">e-mail</font></a></strike></p>

<p>① Reception hours: 09: 00-18: 00 (weekdays)<br>
② Note that the reply to inquiries received on Saturdays, Sundays and public holidays will be after the next business day, so please be forewarned.<br>
③ In addition, we do not accept acceptance of withdrawal by e-mail, please understand.</p>

    </div> <!--Tab２の内容ここまで-->
  </div>




		</div><!-- メインここまで -->

		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>

	</div>
</div>
</div>

</body>
</html>