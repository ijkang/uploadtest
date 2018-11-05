<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title></title>
<!-- check function -->
<script type="text/javascript" src=""></script>
<!-- CSS -->
<link rel="stylesheet" href="">
<link rel="stylesheet" href="">
</head>
<body>
<section id="content">
	<div id="container">
	<div id="upper">
	<h1>JOIN</h1>
	</div>
		<form name="join_form" action="" method="post" onsubmit="return check()">
		<label for="name">이름</label>
		<input type="text" name="member_name" size="20">
		<p>	
		<label for="id">아이디</label>
		<input type="text" name="member_id" size="10" maxlength="15">
		<input type="button" name="confirm_id" value="중복확인" onclick="openConfirmId(this.form)">
		<p>
		<label for="password1">비밀번호</label>
		<input type="password" name="member_pw" size="15">
		<p>
		<label for="password2">비밀번호 확인</label>
		<input type="password" name="member_pw2" size="15">
		<p>
		<label for="ju1min">주민등록번호</label>
		<input type="text" name="member_jumin1" size="12" onkeypress="gNumCheck()" maxlength="6">&nbsp;-
		<input type="text" name="member_jumin2" size="12" onkeypress="gNumCheck()" maxlength="7">
		<p>
		<label for="email1">이메일</label>
		<input type="text" name="member_email1" size="13">&nbsp;@
		<select name="member_email2" style="height: 19px;">
			<option value="">선택해주세요</option>
			<option value="naver.com">naver.com</option>
			<option value="chol.com">chol.com</option>
			<option value="dreamwiz.com">dreamwiz.com</option>
			<option value="empal.com">empal.com</option>
			<option value="hanafos.com">hanafos.com</option>
			<option value="hanmail.com">hanmail.com</option>
			<option value="hitel.net">hitel.net</option>
			<option value="hotmail.com">hotmail.com</option>
			<option value="korea.com">korea.com</option>
			<option value="lycos.co.kr">lycos.co.kr</option>
			<option value="nate.com">nate.com</option>
			<option value="netian.com">netian.com</option>
			<option value="paran.com">paran.com</option>
			<option value="yahoo.com">yahoo.com</option>
			<option value="yahoo.co.kr">yahoo.co.kr</option>
			<option value="gmail.com">gmail.com</option>
			<option value="">직접입력</option>
		</select>
		<input type="radio" name="member_email_get" value="YES" checked="checked" id="email1" >
			<label for="email1">수신</label>
		<input type="radio" name="member_email_get" value="NO" id="email2" >
			<label for="email2">수신 안함</label><p>
		<label for="mobile">휴대폰</label>
		<input type="text" name="member_mobile" size="24">
		<p>
		<label for="phone">집전화</label>
		<input type="text" name="member_phone" size="24">
		<p>
		<label for="zipcode">우편번호</label>
		<input type="text" name="member_zipcode1" size="6" onkeypress="gNumCheck()" maxlength="3" readonly="readonly">&nbsp;-
		<input type="text" name="member_zipcode2" size="6" onkeypress="gNumCheck()" maxlength="3" readonly="readonly">
		<input type="button" name="zipcode" value="우편번호 검색" onclick="openZipcode(this.form)">
		<p>
		<label for="addr1">집주소</label>
		<input type="text" name="member_addr1" maxlength="50">
		<p>
		<label for="addr2">상세주소</label>
		<input type="text" name="member_addr2" maxlength="50">
		<div id="lower">
		<input type="submit" value="Join">
		</div>
	</form>
	</div>
</section>
</body>
</html>