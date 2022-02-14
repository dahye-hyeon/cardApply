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
<title>소지 카드 내역조회</title>
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
		<div class="input-form col-md-10 row">
			<form action="/" method="post">
				주민등록번호<input type="text" name="ssn" id="ssn">
				카드번호 <input type="text" name="crd_no" id="crd_no">
				<input type="submit" class="btn btn-success" value="조 회">
				<br>
			</form>
			<hr>
			<h3>조회</h3>
			<div class="mb-3 mt-3 col-md-3">
				<label for="hg_nm">성명(한글)</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="hg_nm" id="hg_nm">
			</div>
			<div class="mb-3 mt-3 col-md-4">
				<label for="hdp_no">핸드폰 번호</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="hdp_no" id="hdp_no">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="reg_d">등록일자</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="reg_d" id="reg_d">
			</div>
			<div class="mb-3 mt-3 col-md-3">	
				<label for="reg_d">결제방법</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="stl_mtd" id="stl_mtd">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="bnk_cd">결제은행</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="bnk_cd" id="bnk_cd">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="stl_act">결제계좌</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="stl_act" id="stl_act">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="stl_dd">결제일자</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="stl_dd" id="stl_dd">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="stmt_snd_mtd">청구서 발송방법</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="stmt_snd_mtd" id="stmt_snd_mtd">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="email_adr">E-MAIL</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="email_adr" id="email_adr">
			</div>
			<div class="mb-3 mt-3 col-md-6">
				<label for="billadr_zip">우편번호</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="billadr_zip" id="billadr_zip">
			</div>
			<div class="mb-3 mt-3 col-md-5">
				<label for="billadr_adr1">주소1</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="billadr_adr1" id="billadr_adr1"> 
			</div>
			<div class="mb-3 mt-3 col-md-5">
				<label for="billadr_adr2">주소2</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="billadr_adr2" id="billadr_adr2">
			</div>
			<hr>
			
			<table class="table">
			  <thead>
			   <tr class="table-dark">
				<th>&nbsp;&nbsp;&nbsp;</th>
				<th>카드번호</th>
				<th>성명(영어)</th>
				<th>유효기간</th>
				<th>브랜드</th>
				<th>카드등급</th>
				<th>발행일자</th>
				<th>전 카드번호</th>
				<th>최종 카드 여부</th>
				<th>관리영업점</th>
			   </tr>
			 </thead>
			  <tbody>
			  <tr>
			    <td>&nbsp;&nbsp;&nbsp;</td>
				<td>5310110000000001</td>
				<td>HONGGILDONG</td>
				<td>202202</td>
				<td>MASTER</td>
				<td>일반</td>
				<td>2022-02-10</td>
				<td>&nbsp;</td>
				<td>1</td>
				<td>&nbsp;</td>		
				<tr>
			  <tr>
			</table>
			<br>
			<div class="row">
				<div class="col-md-1 text-center">
					<input type="button" class="btn btn-danger" onclick="" value="초기화">
				</div>
				<div class="col-md-1">
					<input type="button" class="btn btn-secondary" onclick="" value="닫기">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>