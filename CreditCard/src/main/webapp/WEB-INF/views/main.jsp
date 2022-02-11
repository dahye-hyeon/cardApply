<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<head>
	<title>메인화면</title>
</head>
<body>
<h1>
	카드 입회 신청	
</h1>
<br>
	<a href="/rcvAppl/rcvForm">입회 신청서</a>
	<a href="/card/inquiryForm">소지 카드 조회</a>
	<a href="/rcvAppl/rcvInquiryForm">기간별 입회신청 내역조회</a>
	
	<!-- 이 버튼은 나중에 옮길 것... -->
	<a href="/card/cardDetailInquiry">카드 상세내역 조회</a>
	<a href="/cust/memberInquiry">회원 색인 조회</a>
</body>
</html>
