<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js">
</script>
<meta charset="UTF-8">
<title>입회 신청 화면</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
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
</head>
<body>
<div class="container">
	<div class="input-form-backgroud row">
		<div class="row input-form col-md-10 mx-auto">
			<form action="/" method="post">
				주민등록번호<input type="text" name="SSN" id="SSN">
				접수일자<input type="date" name="RCV_D" id="RCV_D">
			    접수 일련번호<input type="text" name="RCV_SEQ_NO" id="RCV_SEQ_NO">
				<input type="submit" class="btn btn-success" value="조 회" formaction="${pageContext.request.contextPath}/rcvAppl/rcvApplication"> <!-- onClick="action='페이지 이름'; submit();" -->
			</form>	
				<hr>
				<div class="mb-3 mt-3 col-md-3">
					<label for="APPL_D">신청일자</label>
					<input type="date" class="form-control" name="APPL_D" id="APPL_D">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="APPL_CLAS">신청구분</label>
					<select name="APPL_CLAS" class="form-select" id="APPL_CLAS">
						<c:forEach items="${applClasList }" var="applclas">
							<option value="${brand.CODE }"><c:out value="${applclas.CODE_NM }" /></option>
						</c:forEach></select>
				</div>	
				<div class="mb-3 mt-3 col-md-3">	
					<label for="BRD">브랜드</label>
					<select name="BRD" class="form-select" id="BRD">
							<c:forEach items="${brandList }" var="brand">
							<option value="${brand.CODE }"><c:out value="${brand.CODE_NM }" /></option>
							</c:forEach></select><br><br>
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="HG_NM">성명(한글)</label>
					<input type="text" class="form-control" name="HG_NM" id="HG_NM">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="ENG_NM">성명(영문)</label>
					<input type="text" class="form-control" name="ENG_NM" id="ENG_NM">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="BIRTH_D">생년월일</label>
					<input type="text" class="form-control" name="BIRTH_D" id="BIRTH_D"><br><br>
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="STL_DD">결제일자</label>
					<select name="STL_DD" class="form-select" id="STL_DD">
						<c:forEach items="${stlDateList }" var="stlDate">
						<option value="${stlDate.CODE }"><c:out value="${stlDate.CODE_NM }" /></option>
						</c:forEach></select>
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="STL_MTD">결제방법</label>
					<select name="STL_MTD" class="form-select" id="STL_MTD">
						<c:forEach items="${stlMtdList }" var="stlMtd">
						<option value="${stlMtd.CODE }"><c:out value="${stlMtd.CODE_NM }" /></option>
						</c:forEach></select>
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="BNK_CD">결제은행</label>
					<select name="BNK_CD" class="form-select" id="BNK_CD">
					<c:forEach items="${bankList }" var="bank">
					<option value="${bank.CODE }"><c:out value="${bank.CODE_NM }" /></option>
					</c:forEach></select><br><br>
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="STL_ACT">결제 계좌</label>
					<input type="text" class="form-control" name="STL_ACT" id="STL_ACT">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="STL_ACT_CHK">결제 계좌 확인 여부</label>
					<input type="text" class="form-control" name="STL_ACT_CHK" id="STL_ACT_CHK">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="STMT_SND_MTD">청구서 발송방법</label>
					<select name="STMT_SND_MTD" class="form-select" id="STMT_SND_MTD">
								<c:forEach items="${stmtMtdList }" var="stlMtd">
								<option value="${stlMtd.CODE }"><c:out value="${stlMtd.CODE_NM }" /></option>
								</c:forEach></select>
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="BILLADR_ZIP">우편번호</label>
					<input type="text" class="form-control" name="BILLADR_ZIP" id="BILLADR_ZIP">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="BILLADR_ADR1">주소1</label>
					<input type="text" class="form-control" name="BILLADR_ADR1" id="BILLADR_ADR1">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="BILLADR_ADR2">주소2</label>
					<input type="text" class="form-control" name="BILLADR_ADR2" id="BILLADR_ADR2">
				</div>
				<div class="mb-3 mt-3 col-md-3">				
					<label for="BILLADR_ADR2">이메일</label>
					<input type="text" name="EMAIL_ADR" class="form-control" id="EMAIL_ADR">
				</div>
				<div class="mb-3 mt-3 col-md-3">
					<label for="BILLADR_ADR2">핸드폰번호</label>
					<input type="text" class="form-control" name="HDP_NO" id="HDP_NO">
				</div>
				<div class="mb-3 mt-3 col-md-3">
				<label for="SCRT_NO">비밀번호</label>
				<input type="text" class="form-control" name="SCRT_NO" id="SCRT_NO"><br><br>
				</div>
				<div class="mb-3 mt-3 col-md-3">
				<label for="IMPSB_CLAS">불능구분</label>
				<input type="text" class="form-control" name="IMPSB_CLAS" id="IMPSB_CLAS" readonly>
				</div>
				<div class="mb-3 mt-3 col-md-3">
				<label for="IMPSB_CD">불능 사유명</label>
				<input type="text" class="form-control" name="IMPSB_CD" id="IMPSB_CD" readonly>
				</div>
				<br>
				<!-- onClick="action='페이지 이름'; submit();" -->
				
				<div class="row">
				<div class="col-md-1 text-center">
					<input type="submit" class="btn btn-primary" value="등록" formaction="${pageContext.request.contextPath}/rcvAppl/rcvApplication">
				</div>
				<div class="col-md-1">
					<input type="button" class="btn btn-warning" onclick="" value="수정">
				</div>
				<div class="col-md-1">
					<input type="button" class="btn btn-danger" onclick="" value="초기화">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>