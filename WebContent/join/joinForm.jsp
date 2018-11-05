<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html ><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%   response.setHeader("Cache-Control","no-cache");

     response.setHeader("Pragma","no-cache");

     response.setDateHeader("Expires",0); %>
<style type="text/css">
	table{ border-collapse: collapse; border: 1px solid black; background-color: #2F2727;
  background-image: url(images/radial_bg.png);
  background-position: center center;
  background-repeat: no-repeat;

  /* Safari 4-5, Chrome 1-9 */
  /* Can't specify a percentage size? Laaaaaame. */
  background: -webkit-gradient(radial, center center, 0, center center, 460, from(#E0E6F8), to(#A9A9F5));

  /* Safari 5.1+, Chrome 10+ */
  background: -webkit-radial-gradient(circle,#E0E6F8 , #A9A9F5);

  /* Firefox 3.6+ */
  background: -moz-radial-gradient(circle, #1a82f7, #2F2727);

  /* IE 10 */
  background: -ms-radial-gradient(circle, #1a82f7, #2F2727);}
	td{ border : 1px solid black ;}
	th{ border : 1px solid black ; text-align: left; padding: 5px 0 5px 10px; 
	 }
	 caption {
	font-size: 30px; font-style: oblique; margin-bottom: 30px;
}
	
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
function chk() { 
	if (frm.pass.value != frm.pass2.value) {
		alert("암호를 확인하세요"); frm.pass.focus();
		frm.pass.value=""; frm.pass2.value="";
		return false;	
	}
}
$(function() {
	$('#confirm').click(function() {
		if (!frm.id.value) { alert("id를 입력하고 체크 !"); 
			frm.id.focus();  return false; }
		var sendData="id="+frm.id.value;
		$.post("confirm.jsp",sendData,function(msg){
			alert(msg);
			
		});
		
		return true;
	});
}); 
</script>

</head><body>
	<c:if test="${id ne null }">
		<script type="text/javascript">
 			alert("회원가입 성공 입니다"); 
			 var returnValue = {
					    id: '${id}'
					  }; 
			window.opener.getReturnValue(JSON.stringify(returnValue));
			 window.close(); 
	</script> 
	</c:if>

<form action="../join.do" method="post" 
	name="frm" onsubmit="return chk()">

<table><caption>회원정보 입력</caption>
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required"  ></td></tr>
	<tr><th>별명</th><td><input type="text" name="nic" 
		required="required" ></td></tr>	
	<tr><th>아이디</th><td><input type="text" name="id" 
		required="required" ><input type="button" 
		value="중복체크" id="confirm"></td></tr>
	<tr><th>비밀번호</th><td><input type="password" name="pass"
		required="required"></td></tr>
	<tr><th>비밀번호 확인</th><td><input type="password" name="pass2"
		required="required"></td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" 
		required="required" ></td> 
	<tr><th>성별</th><td><input type="radio"  name = "gender" value="남자"
			id="man"><label for="man" >남자</label>
			<input type="radio" name = "gender" value="여자"
			id="woman"><label for="woman" id="woman2">여자</label></td></tr>
	<tr><th>휴대폰번호</th><td><input type="tel" name="pnum" placeholder="xxx-xxxx-xxxx"
		required="required"></td></tr>
	<tr><th>주소</th><td><input type="text" name="addr" 
		required="required"></td></tr>
	 
	<tr><th colspan="4">  
		<input type="submit" value="확인">	
	</th></tr></table></form>
	
</body>
</html>