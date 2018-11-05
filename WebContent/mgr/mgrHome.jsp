<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
 #content{
 	width: 600px; height: 150px; 
 	margin: 10% 30% 0 30% ;
 	font-size: 20px;
 	font-family: '나눔고딕' ;
 } 
 #title{
 	margin: 10% 0 0 40%; 
 	font-size: 40px;
 	font-family: '궁서체' ;
 }
 #menu{
  width: 130px; height: 150px; margin-left: 15px; background: linear-gradient(to bottom,#FFFF66,white); float: left;
  text-align: center;
 }
 #button{ background-color: #5A5A5A; float: left; margin: 10px 0 0 100px; color: white; padding: 4px 5px 3px 4px; 
 cursor: pointer; border:white 1px solid; box-shadow: 3px 3px 3px lightgray;}
 #menu:HOVER {background: linear-gradient(to bottom,red,white);}
</style>
<title>Insert title here</title>
</head>
<body>
 <div id="button" onclick="location.href='../main.jsp'"> 홈으로 </div>
<!-- 	<div id="content"> -->
	
	
<!-- 		<table> -->
<!-- 			<tr> -->
<!-- 				<td class="tdd" onclick="request.do"><a href="../request.do">건의사항</a></td> -->
<!-- 				<td class="tdd" onclick="location.href='../report.do'">신고관리</td> -->
<!-- 				<td class="tdd" onclick="location.href='../memberList.do'">회원목록</td> -->
<!-- 				<td onclick="location.href='../mgrList.do'">관리자목록</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</div> -->
<!-- 	<div onclick="location.href='../main.jsp'">너나들이 홈</div> -->
	
	<div id="title">관리자 페이지</div>
	<div id = "content">
		<div id="menu" class="menu1" onclick="#"> <br><br><b>건의사항</b> </div>
		<div id="menu" class="menu2" onclick="#"> <br><br><b>신고관리</b> </div>
		<div id="menu" class="menu3" onclick="location.href='../memberList.do'"> <br><br><b>회원목록</b> </div>
		<div id="menu" class="menu4" onclick="location.href='../mgrList.do'"> <br><br><b>관리자 목록</b></div> 
	</div>
</body> 
</html>