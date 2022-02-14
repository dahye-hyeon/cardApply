<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<head>
<meta charset="UTF-8">
<title>회원 색인 조회</title>
<style> body {
		 min-height: 100vh; 
		 background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c)); 
		 background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
		 background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
		 background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
		 background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%); 
		} 
		 
		 .input-form { 
		 max-width: 1300px; 
		 margin-top: 80px;
		 padding: 32px; 
		 background: #fff; 
		 -webkit-border-radius: 10px; 
		 -moz-border-radius: 10px; 
		 border-radius: 10px; 
		 -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
		 -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
		 box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15) } 
</style>
</head>
<body>
<div class="container">
	<div class="input-form-backgroud row">
		<div class="input-form col-md-12 mx-auto">
			<form action="/" method="post">
				<b>성명</b> <input type="text" name="hg_nm" id="hg_nm">	
				<b>생년월일</b> <input type="date" name="birth_d" id="birth_d">
				<b>핸드폰 번호</b> <input type="text" name="hdp_no" id="hdp_no">
				<input type="submit" class="btn btn-success" value="조 회">
			</form>
			<hr>
			<h3>조회결과</h3>
			<table class="table">
			  <thead>
			   <tr class="table-dark">
				<th>&nbsp;&nbsp;&nbsp;</th>
				<th>주민번호</th>
				<th>성명(한글)</th>
				<th>생년월일</th>
				<th>핸드폰 번호</th>
				<th>결제 은행</th>
				<th>결제 계좌</th>
				<th>주소</th>
			   </tr>
			  </thead>
			  <tbody>
			   <tr>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td>9009091234567</td>
				<td>홍길동</td>
				<td>1990-09-09</td>
				<td>01021243212</td>
				<td>기업은행</td>
				<td>12345-226-75821</td>
				<td>서울특별시 금천구 시흥대로73길 70</td>			
				<tr>
			   </tbody>		
			</table>
			<input type="button" class="btn btn-danger" onclick="" value="초기화">
			<input type="button" class="btn btn-secondary" onclick="" value="닫기">
		</div>
	</div>
</div>
</body>
</html>