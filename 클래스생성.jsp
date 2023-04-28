<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_0{background: yellow;}
	.high_1{background: red;}
	.high_2{background: blue;}
	.high_3{background: green;}
	.high_4{background: pink;}
	/* 디자인팀에서 css파일을 받았다고 가정하자.
	   직접 클래스명을 지정하는것도 가능하지만, 
	   css가 복잡한경우 퇴근을 못하게 된다.*/
</style>
<script src="../js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('h2').each(function(idx){
		// 해당 요소의 클래스명을 지정.
		$(this).addClass("high_"+idx);
		// this > '나 자신을 참조(레퍼런스)하는' + (js)'해당 동작이 발생한 대상' !!
	});
	
	
	
	
	
});


</script>
</head>
<body>

<h1>클래스생성.jsp</h1>

	<h2> head - 0 </h2>
	<h2> head - 1 </h2>
	<h2> head - 2 </h2>
	<h2> head - 3 </h2>
	<h2> head - 4 </h2>

</body>
</html>