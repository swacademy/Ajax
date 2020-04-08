<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.javaexpert.libs.db.*, java.sql.*" %>
<%
	Connection conn = DBConnection.getConnection();
	Statement stmt = conn.createStatement();
	String sql = "SELECT DISTINCT sido FROM zipcode ORDER BY sido";
	ResultSet rs = stmt.executeQuery(sql);
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Ajax Demo</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
	function get_gugun_list(sido){
		var param = "sido=" + sido;
		sendRequest("getGugunlist.jsp", param, get_gugun_callback, "get");
	}
	function get_gugun_callback(){
		if(httpRequest.readyState == 4 && httpRequest.status == 200){
			document.getElementById("gugunDiv").innerHTML = httpRequest.responseText;
		}
	}
	function get_address_list(){
		var sido = document.frmZip.sido.value;
		var gugun = document.frmZip.gugun.value;
		var dong = document.frmZip.dong.value;
		if(!dong.length || dong.length == 0) {
			alert("동이름을 넣으세요");
			document.frmZip.dong.focus();
			return false;
		}
		var param = "sido=" + sido + "&gugun=" + gugun + "&dong=" + dong;
		sendRequest("getAddresslist.jsp", param, get_address_callback, "get");
	}
	function get_address_callback(){
		if(httpRequest.readyState == 4 && httpRequest.status == 200){
			document.getElementById("aaa").innerHTML = httpRequest.responseText;
		}
	}
</script>
</head>
<body>
	<form id="frmZip" name="frmZip">
		<table width="800" cellpadding="3" cellspacing="0">
			<tr>
				<td>
				<select name="sido" onchange="get_gugun_list(this.value)">
					<option value="">--시도선택--</option>
					<%
						while(rs.next()){
							String sido = rs.getString(1);
					%>
					<option value="<%=sido%>"><%=sido %></option>
					<%
						 }//while end
						 rs.close();
						 stmt.close();
					%>
				</select>
				</td>
				<td>
				<div id="gugunDiv">
					<select name="gugun">
						<option value="">--구군선택--</option>
					</select>
				</div>
				</td>
				<td>
				읍/면/동이름 : <input type="text" name="dong" size="30" />&nbsp;&nbsp;
				<input type="button" value="우편번호검색" onclick="get_address_list()" />
				</td>
			</tr>
		</table>
	</form>
	<div id="aaa">
		
	</div>
</body>
</html>
<% DBClose.close(conn); %>