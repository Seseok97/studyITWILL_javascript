<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('img').attr('width',50);
		
		//img 태그의 속성, src 정보를 alert창에 출력
		var src = $('img').attr('src');
// 		alert(src); // 제일 먼저 로딩되는 이미지의 src정보 하나만 들고와준다.
		// img 태그 사진의 크기(width)를 각각 50,100,150 으로 지정.
// 		var sizeArr = [50,100,150];
// 		$('img').attr('width',function(idx){
// 			return sizeArr[idx];
// 		})
		// 배열을 생성하지 않는 방법.
		$('img').attr('width',function(idx){
			return (idx+1)*50; // idx는 0부터 시작하기때문에 1 더해줌.
		});// $() end
		
		// border 속성 5,10,15
		$('img').attr({
			'border':function(idx){
				return (idx+1)*5;
			},
			'width':function(idx){
				return (idx+1)*50;
			}// attr end
		});// $() end
		
		
	});
</script>
</head>
<body>
	<h1>속성_attr.jsp</h1>

	<img src="../img/pineapple.jpg" width="150" height="150">
	<img src="../img/cat.jpg" width="150" height="150">
	<img src="../img/super.jpg" width="150" height="150">
	<img src="../img/flower.jpg" width="150" height="150">

</body>
</html>