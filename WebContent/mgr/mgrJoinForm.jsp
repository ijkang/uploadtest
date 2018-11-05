<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>관리자 생성</title>
<style type="text/css">
	fieldset { width:100%;} select {height: 25px;} #submit { margin: 0 20% 0 20%;} #view{ border:1px black solid; width : 200px; height: 200px;}
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
function chk() {
	if (frm.pass.value != frm.pass2.value) {
		alert("암호를 확인하세요"); 
		frm.pass.focus();
		frm.pass.value="";  
		frm.pass2.value="";
		return false;	
	}
		
	if (frm.result.value==1){
		alert("아이디 (중복)확인 해주세요"); 
		frm.id.value="";
		return false;
	}
}

function confirmId() {
	
	if (!frm.id.value) { alert("id를 입력하고 체크 !"); 
		frm.id.focus();  return false; }
	window.open("../mgrIdCheck.do?id="+frm.id.value,"",
			"width=300 height=300");
	
	return false;
}

</script>
</head>
<body>
<!-- window..close();opener.memberForm.pass.focus(); -->
	<form action="../mgrJoin.do" name="frm" onsubmit="return chk()">
		<fieldset>
		<legend>관리자 생성</legend>
			<input type="hidden" name="result" value="1">
		<table>
			<tr><th>ID</th><td><input type="text" name="id"><input type="button" value="중복확인" onclick="confirmId()"></td></tr>		
			<tr><th>PASSWARD</th><td><input type="password" name="pass"></td></tr>		
			<tr><th>PASSWARD 확인</th><td><input type="password" name="pass2"></td></tr>		
			<tr><th>등급</th><td><select name="master">
				<option value="totalMgr">통합 관리자</option>
				<option value="boardMgr">게시판 관리자</option>
				<option value="immeMgr">임시 관리자</option>
			</select></td></tr>		
			<tr><td colspan="2"><input type="submit" value="가입" id="submit"></td></tr>
		</table>
		</fieldset>
	</form>
</body>
</html>