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
<title>카드 상세 내역조회</title>
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
		<div class="input-form col-md-10 row mx-auto">
			<form class="form-inline" action="/" method="post">
				<b>주민등록번호</b> <input type="text" name="ssn" id="ssn">
				<b>카드번호</b> <input type="text" name="crd_no" id="crd_no">
				<input type="submit" class="btn btn-success" value="조 회">
			</form>
			<hr>
			<h3>조회 결과</h3>
			<div class="mb-3 mt-3 col-md-3">
				<label for="hg_nm">성명(한글)</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="홍길동" name="hg_nm" id="hg_nm">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="eng_nm">성명(영문)</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="HONGGILDONG" name="eng_nm" id="eng_nm">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="reg_d">등록일자</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="2022-02-09" name="reg_d" id="reg_d">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="vld_dur">유효기간</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="202702" name="vld_dur" id="vld_dur">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="brd">브랜드</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="MASTER" name="brd" id="brd">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="crd_grd">카드 등급</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="일반" name="crd_grd" id="crd_grd">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="bf_crd_no">전 카드번호</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="bf_crd_no" id="bf_crd_no">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="cust_no">고객번호</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="cust_no" id="cust_no">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="mgt_bbrn">관리 영업점</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" name="mgt_bbrn" id="mgt_bbrn">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="lst_crd_f">최종 카드여부</label>
				<input type="text" class="form-control" style="background-color: #e2e2e2;" value="1" name="lst_crd_f" id="lst_crd_f">
			</div>
			<div class="mb-3 mt-3 col-md-3">
				<label for="fst_crd_f">최초 등록일자</label>
				<input type="text" class="form-control" name="fst_crd_f" style="background-color: #e2e2e2;" value="2022-02-09" id="fst_crd_f">
			</div>
			<div class="row">
				<div class="col-md-1 text-center">
				<input type="button" class="btn btn-danger float-right" onclick="" value="초기화">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>