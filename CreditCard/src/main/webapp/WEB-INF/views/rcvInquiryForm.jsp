<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기간별 입회신청 내역조회</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<script>
	function rcvInquiry(){
		
		var params = {
			"applClas" : $('select[name=APPL_CLAS] option:selected"').val(),
			"ssn" : $('#SSN').val()
		};
		console.log("입회신청 내역조회");		
		console.log(params);
		$.ajax({
			url:'/rcvAppl/rcvInquiry',
			type:'POST',
			data:params,
			datatype:"json",
			success:function(params){
				
				
			}
		})
	}
</script>

<form action="/" method="post">
	기간 <input type="date" name="stard_d" id="stard_d">~<input type="date" name="end_d" id="end_d">
	신청구분 <select name="APPL_CLAS" id="APPL_CLAS">
			<c:forEach items="${applClasList }"	var="applclas">
				<option value="${brand.CODE }"><c:out value="${applclas.CODE_NM }" /></option>
			</c:forEach></select>
	주민등록번호 <input type="text" name="SSN" id="SSN">
	<input type="button" value="조 회" id="inquiry" onclick="rcvInquiry()"> 
</form>
<hr>
<h3>조회결과</h3>
<table border="2">
	<td>&nbsp;&nbsp;&nbsp;</td><td>접수일자</td><td>접수 일련번호</td><td>주민번호</td><td>성명(한글)</td><td>성명(영어)</td>
	<td>신청구분</td><td>브랜드</td><td>핸드폰번호</td><td>불능구분</td><td>불능 사유명</td>
</table>

	<input type="button" onclick="" value="초기화">
	<input type="button" onclick="" value="닫기">
</body>
</html>