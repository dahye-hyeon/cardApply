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
<meta charset="UTF-8">
<title>기간별 입회신청 내역조회</title>
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
<body>
<script>
	function rcvInquiry(){
		var applClas =$("#APPL_CLAS option:selected").text();
		var ssn = $('#SSN').val();
		var params = {"APPL_CLAS":applClas, "SSN":ssn};
		console.log(params);
		$.ajax({
			url:"rcvInquiry",
			type:"POST",
			data:JSON.stringify(params),
			datatype:"text",
			contentType:"application/json; charset=UTF-8",
			success:function(data){
				alert("통신성공!");
			},
			error:function(jqXHR, textStatus, errorThrown){
				alert("ERROR: " + textStatus + " : " + errorThrown);
			}
		});
	}
</script>
<div class="container">
	<div class="input-form-backgroud row">
		<div class="input-form col-md-12 mx-auto">
			<form action="/" method="post">
				기간<input type="date" name="stard_d" id="stard_d">~<input type="date" name="end_d" id="end_d">
				
				&nbsp;신청구분<select name="APPL_CLAS" id="APPL_CLAS">
				<c:forEach items="${applClasList }"	var="applclas">
					<option value="${brand.CODE }"><c:out value="${applclas.CODE_NM }" /></option>
				</c:forEach></select>
				
				&nbsp;주민등록번호<input type="text" name="SSN" id="SSN">
				<a class="btn btn-success" href="#" id="inquiry" onclick="rcvInquiry()" >조 회</a>
			</form>
				<hr>
				<h3>조회결과</h3>
				<table class="table">
			  		<thead>
			   		 <tr class="table-dark">
					   <th>&nbsp;&nbsp;&nbsp;</th>
					   <th>접수일자</th>
					   <th>접수 일련번호</th>
					   <th>주민번호</th>
					   <th>성명(한글)</th>
					   <th>성명(영어)</th>
					   <th>신청구분</th>
					   <th>브랜드</th>
					   <th>핸드폰번호</th>
					   <th>불능구분</th>
					   <th>불능 사유명</th>
					</tr>
			  	   </thead>
			  	   <tbody>
					 <tr>
				 	   <td>&nbsp;&nbsp;&nbsp;</td>
				 	   <td>2022-02-09</td>
				 	   <td>1000000</td>
					   <td>9009091234567</td>
					   <td>홍길동</td>
					   <td>HONGGILDONG</td>
					   <td>최초신규</td>
					   <td>기업은행</td>
					   <td>01021243212</td>
					   <td>&nbsp;</td>
				       <td>&nbsp;</td>		
					 <tr>
				   </tbody>	
				</table>
					<input class="btn btn-danger" type="button" onclick="" value="초기화">
					<input class="btn btn-secondary" type="button" onclick="" value="닫기">

			</div>
	</div>
</div>
</body>
</html>