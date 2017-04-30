<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<link rel="stylesheet" type="text/css" href="./css/settlement.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>くれじっと</title>
</head>
<body>

<div class="container-fluid">
	<jsp:include page="header.jsp" /><!-- ヘッダー -->
</div>

<div class="container"><!-- メインコントラクター-->
	<div class="row"><!-- メインコンロウ-->
		<div class="col-xs-12 col-sm-2">
			<jsp:include page="sidebar.jsp" /><!-- サイドバー -->
		</div>

		<div class="col-xs-12 col-sm-8"><!-- メイン -->
<div id="settlement">
  <s:form action="SettlementConfirmationAction">
    <table>
      <tr>
        <th>クレジットカード選択</th>
          <td><label> <input type="radio" name="creditBrand" value="1" required>visa
              </label> <label> <input type="radio" name="creditBrand" value="2">MasterCard
              </label> <label> <input type="radio" name="creditBrand" value="3">AmericanExpress
              </label>
          </td>
      </tr>
      <tr>
        <th>カード番号</th>
          <td><input type="text" name="creditNumber" maxlength="16" pattern="^([0-9]{15,16})$"
                  title="input type="text" name="lang.settlement.validation1" />
          </td>
        </tr>
      <tr>
         <th>カード名義人</th>
            <td><input type="text" name="nameE" maxlength="40"required></td>
      </tr>
      <tr>
         <th>有効期限</th>
            <td><select name="expirationMonth"  required>
                  <option value="">月</option>
                  <option value="01">1</option>
                  <option value="02">2</option>
                  <option value="03">3</option>
                  <option value="04">4</option>
                  <option value="05">5</option>
                  <option value="06">6</option>
                  <option value="07">7</option>
                  <option value="08">8</option>
                  <option value="09">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
                <select name="expirationYear" required>
                  <option value="">年</option>
                  <option value="17">17</option>
                  <option value="18">18</option>
                  <option value="19">19</option>
                  <option value="20">20</option>
                  <option value="21">21</option>
                  <option value="22">22</option>
                  <option value="23">23</option>
                  <option value="24">24</option>
                </select>
            </td>
      </tr>
      <tr>
        <th>セキュリティコード</th>
        <td><input type="text" name="securityCode" maxlength="4" pattern="^([0-9]{3,4})$"required>
        </td>
        
      </tr>
      <tr>
        <th>お届け先住所</th>
        <td><input type="text" name="shippingAddress" maxlength="60"  required></td>
        </tr>
   </table>
   <br>
        <input type="submit" value="入力を確定する" />
  </s:form>


		</div>
</div>
		<div class="col-xs-12 col-sm-2"><!-- 右端 -->	</div>

	</div><!-- メインコンロウ終了-->
</div><!-- メインコントラクター終了-->


</body>
</html>