<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js">
</script>
<meta charset="UTF-8">
<title>입회 신청 화면</title>
</head>
<body>
<form method="post">
	주민등록번호 <input type="text" name="SSN" id="SSN">
	접수일자 <input type="date" name="RCV_D" id="RCV_D">
	접수 일련번호 <input type="text" name="RCV_SEQ_NO" id="RCV_SEQ_NO">
	<input type="submit" value="조 회" formaction="${pageContext.request.contextPath}/rcvAppl/rcvApplication"> <!-- onClick="action='페이지 이름'; submit();" -->
	<hr>
	
	신청일자<input type="date" name="APPL_D" id="APPL_D">
	신청구분 <select name="APPL_CLAS" id="APPL_CLAS">
			<c:forEach items="${applClasList }"	var="applclas">
				<option value="${brand.CODE }"><c:out value="${applclas.CODE_NM }" /></option>
			</c:forEach></select>
	브랜드<select name="BRD" id="BRD">
			<c:forEach items="${brandList }" var="brand">
			<option value="${brand.CODE }"><c:out value="${brand.CODE_NM }" /></option>
			</c:forEach></select><br><br>
	
	성명(한글)<input type="text" name="HG_NM" id="HG_NM">
	성명(영문)<input type="text" name="ENG_NM" id="ENG_NM">
	생년월일<input type="text" name="BIRTH_D" id="BIRTH_D"><br><br>
	
	결제일자<select name="STL_DD" id="STL_DD">
			<c:forEach items="${stlDateList }" var="stlDate">
			<option value="${stlDate.CODE }"><c:out value="${stlDate.CODE_NM }" /></option>
			</c:forEach></select>
	결제방법<select name="STL_MTD" id="STL_MTD">
			<c:forEach items="${stlMtdList }" var="stlMtd">
			<option value="${stlMtd.CODE }"><c:out value="${stlMtd.CODE_NM }" /></option>
			</c:forEach></select>
	결제은행 <select name="BNK_CD" id="BNK_CD">
			<c:forEach items="${bankList }" var="bank">
			<option value="${bank.CODE }"><c:out value="${bank.CODE_NM }" /></option>
			</c:forEach></select><br><br>

	결제 계좌<input type="text" name="STL_ACT" id="STL_ACT">
	결제 계좌 확인 여부<input type="text" name="STL_ACT_CHK" id="STL_ACT_CHK"><br><br>
	
	청구서 발송방법<select name="STMT_SND_MTD" id="STMT_SND_MTD">
				<c:forEach items="${stmtMtdList }" var="stlMtd">
				<option value="${stlMtd.CODE }"><c:out value="${stlMtd.CODE_NM }" /></option>
				</c:forEach></select>
	우편번호<input type="text" name="BILLADR_ZIP" id="BILLADR_ZIP">
		<input type="text" name="BILLADR_ADR1" id="BILLADR_ADR1">
		<input type="text" name="BILLADR_ADR2" id="BILLADR_ADR2"><br><br>
	
	이메일<input type="text" name="EMAIL_ADR" id="EMAIL_ADR">
	핸드폰번호<input type="text" name="HDP_NO" id="HDP_NO">
	비밀번호<input type="text" name="SCRT_NO" id="SCRT_NO"><br><br>
	
	불능구분<input type="text" name="IMPSB_CLAS" id="IMPSB_CLAS" readonly>
	불능 사유명<input type="text" name="IMPSB_CD" id="IMPSB_CD" readonly>
	<br>
	<!-- onClick="action='페이지 이름'; submit();" -->
	<input type="submit" value="등록" formaction="${pageContext.request.contextPath}/rcvAppl/rcvApplication">
	<input type="button" onclick="" value="수정">
	<input type="button" onclick="" value="초기화">
</form>
</body>
</html>