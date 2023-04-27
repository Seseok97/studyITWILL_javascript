<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
	color: red;
	}
</style>
<script src="../js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// CSS와 jQuery의 선택자는 거의 동일하다.
		
		// css(): 스타일시트를 적용해주는 함수.
		// '*' > 모든 대상.
		$('*').css('color','blue');
		// 태그 > 특정대상
		$('h2').css('color','orange');
		// #아이디 > 특정 아이디를 가진 대상 // > 개발자가 많이 쓴다. (중복 X)
		$('#t1').css('color','green');
		// .클래스 > 특정 클래스를 가진 대상 // > 디자이너(프론트)가 많이 쓴다. (중복 O)
		$('.t2').css('color','red');
	});
</script>
</head>
<body>
	<h1>선택자(selector).jsp</h1>
	<h2 id='t1'>제목 1</h2>
	<h2 class='t2'>제목 2</h2>
	
	<h2 id='t1'>제목 3</h2>
	<p>제목1과 동일한 id를 가지고 있으나, id는 중복이 불가능하다.</p>
	<h2 class='t2'>제목 4</h2>
	<p>제목2와 동일한 class를 가지고 있으며, class는 중복이 가능하다.</p>
</body>
</html>