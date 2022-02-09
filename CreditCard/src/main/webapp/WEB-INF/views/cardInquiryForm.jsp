<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소지 카드 내역조회</title>
</head>
<body>
<form action="/" method="post">
	<b>주민등록번호</b> <input type="text" name="ssn" id="ssn">-<input type="password" name="ssn2" id="ssn2">	
	<b>카드번호</b> <input type="text" name="crd_no" id="crd_no">
	<input type="submit" value="조 회">
</form>
<hr>
<h3>조회</h3>
	성명(한글)<input type="text" name="hg_nm" id="hg_nm">
	핸드폰 번호<input type="text" name="hdp_no" id="hdp_no">
	등록일자<input type="text" name="reg_d" id="reg_d"><br><br>
	결제방법<input type="text" name="stl_mtd" id="stl_mtd">
	결제은행<input type="text" name="bnk_cd" id="bnk_cd">
	결제계좌<input type="text" name="stl_act" id="stl_act"><br><br>
	결제일자<input type="text" name="stl_dd" id="stl_dd">
	청구서 발송방법<input type="text" name="stmt_snd_mtd" id="stmt_snd_mtd">
	E-MAIL<input type="text" name="email_adr" id="email_adr"><br><br>
	우편번호<input type="text" name="billadr_zip" id="billadr_zip"> <input type="text" name="billadr_adr1" id="billadr_adr1"> <input type="text" name="billadr_adr2" id="billadr_adr2">

<hr>

<table border="2">
	<td>&nbsp;&nbsp;&nbsp;</td><td>카드번호</td><td>성명(영어)</td><td>유효기간</td><td>브랜드</td><td>카드등급</td>
	<td>발행일자</td><td>전 카드번호</td><td>최종 카드 여부</td><td>관리영업점</td>
</table>

	<input type="button" onclick="" value="초기화">
	<input type="button" onclick="" value="닫기">
</body>
</html>