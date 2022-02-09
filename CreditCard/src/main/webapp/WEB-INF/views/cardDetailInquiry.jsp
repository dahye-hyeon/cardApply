<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 상세 내역조회</title>
</head>
<body>
<form action="/" method="post">
	<b>주민등록번호</b> <input type="text" name="ssn" id="ssn">-<input type="password" name="ssn2" id="ssn2">	
	<b>카드번호</b> <input type="text" name="crd_no" id="crd_no">
	<input type="submit" value="조 회">
</form>
<hr>
<h3>조회 결과</h3>
	성명(한글)<input type="text" name="hg_nm" id="hg_nm">
	성명(영문)<input type="text" name="eng_nm" id="eng_nm"><br><br>
	등록일자<input type="text" name="reg_d" id="reg_d">
	유효기간<input type="text" name="vld_dur" id="vld_dur"><br><br>
	브랜드<input type="text" name="brd" id="brd">
	카드 등급<input type="text" name="crd_grd" id="crd_grd"><br><br>
	전 카드번호<input type="text" name="bf_crd_no" id="bf_crd_no">
	고객번호<input type="text" name="cust_no" id="cust_no"><br><br>
	관리 영업점<input type="text" name="mgt_bbrn" id="mgt_bbrn">
	최종 카드여부<input type="text" name="lst_crd_f" id="lst_crd_f"><br><br>
	최초 등록일자<input type="text" name="fst_crd_f" id="fst_crd_f">
	
	<input type="button" onclick="" value="초기화">
</body>
</html>