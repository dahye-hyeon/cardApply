<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 색인 조회</title>
</head>
<body>
<form action="/" method="post">
	<b>성명</b> <input type="text" name="hg_nm" id="hg_nm">	
	<b>생년월일</b> <input type="text" name="birth_d" id="birth_d">
	<b>핸드폰 번호</b> <input type="text" name="hdp_no" id="hdp_no">
	<input type="submit" value="조 회">
</form>
<hr>
<h3>조회결과</h3>
<table border="2">
	<td>&nbsp;&nbsp;&nbsp;</td><td>주민번호</td><td>성명(한글)</td><td>생년월일</td><td>핸드폰 번호</td><td>결제 은행</td>
	<td>결제 계좌</td><td>주소</td>
</table>

	<input type="button" onclick="" value="초기화">
	<input type="button" onclick="" value="닫기">
</body>
</html>