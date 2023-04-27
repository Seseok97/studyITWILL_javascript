<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 라이브러리 추가! -->
<script src="../js/jquery-3.6.4.min.js"></script>

<!-- 제이쿼리 라이브러리 추가!(CDN, Content Delivery Network) -->
<script src="https://code.jquery.com/jquery-3.6.4.js" 
		integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" 
		crossorigin="anonymous"></script>
		
<script type="text/javascript">
// 	$(document).ready(function(){
// 		// 할일
// 	});
// > 제이쿼리 사용 기본 준비
	alert('1');
	
	$(document).ready(function(){
	alert('3안녕'); // 1,2,3 순서로 실행된다. HTML 페이지 랜더링 순서를 생각하면 당연한것.
	});
	
	$(function(){
		alert('4안녕'); // 이쪽을 많이 쓴다.
		});
	
	jQuery(function(){
		alert('5안녕'); // 이렇게는 잘 안함.
		});
	
	alert('2');

</script>
</head>
<body>
	<h1>제이쿼리.jsp</h1>

	JQuery(JavaScript) : 자바스크립트에서 자주 사용하는 동작을 모아놓은 형태.
	
	

</body>
</html>