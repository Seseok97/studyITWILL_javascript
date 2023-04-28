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
		//html(), text()
		
		// html() > 해당 요소의 값을 가져오기. > 처음 요소 하나의 값만 들고온다.
		var h = $('h2').html();
// 		alert(h);
		// text() > 해당 요소의 값을 가져오기. > 해당 요소의 모든 값을 들고온다.
		var t = $('h2').text();
// 		alert(t);


		$('h2').html('ITWILL'); // 선택요소의 값 변경
		$('h2').text('ITWILL2'); // 선택요소의 값 변경
		
		//div태그의 내용 변경 > "itwill_busan"
// 		$('div').html('ITWILL busan'); // 선택요소의 값 변경
// 		$('div').text('ITWILL busan2'); // 선택요소의 값 변경 // > 아직은 차이가 없다.
		
// 		$('div').text('<h3>ITWILL busan2</h3>'); // <h3>ITWILL busan2</h3>가 그대로 출력된다.
// 		$('div').html('<h3>ITWILL busan</h3>');  // <h3> 태그가 적용된 ITWILL busan이 출력된다.
		
// 		// 본문의 내용을 유지하면서 추가 내용 붙이기.
// 		$('div').html(function(i,txt){
// // 			alert(i+", "+txt)
// 			return "<h3>"+ txt + " itwill busan</h3>"
// 		});
		
		// append();
// 		$('div').append('@@@@@@'); // h3태그에 줄바꿈이 포함되어있기때문에 한줄 아래에 출력된다.
// 		$('div').prepend('$$$$$$');

		$('div').append(function(idx){
			return idx
		});
		
		// 테이블의 내용 추가
// 		$('tr').append("<tr><td>홍길동</td><td>부산</td><td>남여</td></tr>") X
// 		$('table').append("<tr><td>홍길동</td><td>부산</td><td>남여</td></tr>")
		
// 		for(var i=0;i<5;i++){
// 			$('table').append("<tr><td>홍길동</td><td>부산</td><td>"+i+"</td></tr>")
// 		}
		
		var data = [ 
			{'name':'학생1','addr':'부산','gender':'남'},
			{'name':'학생2','addr':'경남','gender':'여'},
			{'name':'학생3','addr':'경북','gender':'남'},
			{'name':'학생4','addr':'제주','gender':'여'},
			{'name':'학생5','addr':'서울','gender':'남'},
			//2차원 배열
			];
// 		alert(data[0].name);
		// $.each(대상,function); > 엄밀히말해 반복문은 아니지만, 비슷하게 작동한다.
		// $(대상).each(function);
		// > 선택한 여러개의 요소를 순차적으로 접근.
		$.each(data,function(idx,obj){
// 			alert("!"); // 5번 작동한다.(data의 크기가 5이기 때문.)
// 			console.log(obj);
// 			$('table').append("<tr><td>"+obj.name+"</td><td>"+obj.addr+"</td><td>"+obj.gender+"</td></tr>")
			// 너무 길고 보기어렵다!!
			
			var tmp = "<tr>";
			tmp += "<td>"+obj.name+"</td>";
			tmp += "<td>"+obj.addr+"</td>";
			tmp += "<td>"+obj.gender+"</td>";
			tmp += "</tr>";
			
			$('table').append(tmp);
		});
		
		$('img').css('width','150');
		
		setInterval(function(){
			$('.imgDiv').append( $('img').first() ); // 제일 앞의 이미지가 제일 뒤로 이동한다.
		},10); // 10ms마다 움직이는 사진 3장.
		
		
		

	});//$() end 
</script>
</head>
<body>
<h1>속성조작메서드.jsp</h1>
<h2> head - 0</h2> 
<h2> head - 1</h2> 
<h2> head - 2</h2> 
<h2> head - 3</h2> 

<hr>
<h3>.html과 .text의 차이점 설명을 위한 내용</h3>
	<div>OOOOO - </div>
	<div>OOOOO - </div>
	<div>OOOOO - </div>
<hr>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>지역</td>
			<td>성별</td>
		 </tr>
	</table>
	
	<hr>
	<div class="imgDiv">
		<img src="../img/pineapple.jpg">
		<img src="../img/cat.jpg">
		<img src="../img/super.jpg">
	</div>
</body>
</html>



















