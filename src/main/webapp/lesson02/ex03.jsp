<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method</title>
</head>
<body>
	<form method="post" action='/lesson02/ex03_1.jsp'>
		1.별명은 무엇입니까?<br>
		<input type="text" name="nickname"><br><br>
		2.취미는 무엇입니까?<br>
		<input type="text" name="hobby"><br><br>
		3.강아지 or 고양이?<br>
		<label><input type="radio" name="animal" value="강아지" checked>강아지</label>
		<label><input type="radio" name="animal" value="고양이">고양이</label><br><br>
		4.다음중 선호하는 것을 모두 고르세요.<br>
		<label><input type="checkbox" name="food" value="민트초코">민트초코</label>
		<label><input type="checkbox" name="food" value="하와이안피자">하와이안피자</label>
		<label><input type="checkbox" name="food" value="번데기">번데기</label><br><br>
		5.좋아하는 과일을 선택하세요.<br>
		<select name='fruit'>
			<option>사과</option>
			<option>바나나</option>
			<option>파인애플</option>
			<option>자두</option>
			<option>블루베리</option>
		</select>
		<input type='submit' value='전송'></input>
	</form>

</body>
</html>