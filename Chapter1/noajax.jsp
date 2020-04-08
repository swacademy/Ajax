<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>No Ajax : Submit</title>
<script>
	window.addEventListener("load", setup, false);
	function setup(){
		document.getElementById("btnCalc").addEventListener("click", Click, false);
	}
	function Click(){
		if(document.getElementById("num1").value != "" &&
				document.getElementById("num2").value != ""){
			document.forms[0].action="noajax.jsp";
			document.forms[0].method="post";
			document.forms[0].submit();
		}
	}
</script>
</head>
<body>
	<form>
		<input type="text" id="num1" name="num1" size="10" value="${param.num1}" /> X 
		<input type="text" id="num2" name="num2" size="10" value="${param.num2}" /> =
		<input type="text" id="answer" size="10" value="${param.num1 * param.num2}" />&nbsp;&nbsp;
		<input type="submit" value="Calculate" id="btnCalc" />
	</form>
</body>
</html>