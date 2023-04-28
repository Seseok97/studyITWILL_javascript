<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('h2').css('color','pink'); 

		var c = $('h2').css('color');
		alert(c);
		
		// h2의 세 요소를 모두 다른색으로 변경해보자.
		// 1. 기존 방식 > h2태그에 별도 아이디 부여 // X
		// 2. 배열
		
		var colArr = ['red','blue','orange'];
// 		$('h2').css('color',colArr[2]); // 배열 사용가능을 확인.
		$('h2').css('color',function(idx){
// 			alert('func: '+colArr[idx]+' > '+idx)	// 3번 실행된다. colArr이 세번 작동해야 하기 때문임.
			// 배열의 컬러를 본문에 반영해보자.
			return colArr[idx];
		}); // function end
		// head - 3을 추가할 시, 배열에 적용되어있지 않기 때문에 pink가 반영이 된다.
		
// 		$('h2').css('color','yellow');
// 		$('h2').css('background','black');
		$('h2').css('color','yellow').css('background','black'); // 동일한 결과. > 체이닝(비선호, 가독성 떨어짐.)
		
		// 속성을 한번에 여러개 적용할때.
		$('h2').css({
			'color': 'pink',
			'background':'yellow'
		});
		
		// 배경 > 검정, 글자색 > 배열 사용
		$('h2').css({
			 'background':'black',
			 'color':function(idx){
				 return colArr[idx];
			 }// function end
		});
		
		
		
	});


</script>
</head>
<body>
<h1>속성사용.jsp</h1>
<h2> head - 0</h2> 
<h2> head - 1</h2> 
<h2> head - 2</h2> 
<h2> head - 3</h2> 

</body>
</html>










































