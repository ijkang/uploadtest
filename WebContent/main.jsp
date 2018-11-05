
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
 response.setHeader("Cache-Control","no-cache"); 
 response.setHeader("Pragma","no-cache");     
 response.setDateHeader("Expires",0);    
%>           
<!DOCTYPE html> 
<html>          
<head>    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<link href="CSS/cssMain1.css" rel="stylesheet" type="text/css">     
<style type="text/css">
header  { float: right; list-style: square;  padding-right: 70px; }  
    
body {   background-color: #FF5E01;} 
/* #total {float: right; } */     
#main { border: 1px solid green;  margin-top: 50px;   width:100%;   height: 760px;   background-color: white;}
#diary{ float:right;   font-size:20px; color:white;  background-image:url("./images/1377.jpg"); background-repeat:no-repeat;  width:80%;   height:100%;   margin: 0 10% 0 10%; padd}
/* .left{   float:left;   width: 50%;} */ 
/* .right{   float:left;   width:50%;} */    
/* table{ width: 90% ; height: 360px; border: solid white 1px; color: white; margin: 10px;} */
/* td{ text-align: center; height: 90%; }  */  
/* th{ text-align: center; height: 10%;border-bottom: solid white 1px; } */
#buttonForm{ float: right; width: 100%;  margin-top: 30px;}  
#button{ float: right; background-color: #5A5A5A;  margin: 0 0 0 250px; color: white; padding: 4px 5px 3px 4px; cursor: pointer; border:white 1px solid; box-shadow: 3px 3px 3px lightgray;}
#button:HOVER { background-color: white; color:black;}
#loginForm{ float: right; width:180px;  height: 0px;  margin:0 0 0 0; overflow: hidden;}
#start{font-size: 40px;}    
/* .loginInfo{ height: 10%;} */   

</style>    
<script type="text/javascript" src
="js/jquery.js"></script> 
<script type="text/javascript"> 
	$(function() {
		$("#button").click(function() {
			$("#loginForm").animate({
				height : $("#loginForm").height() + 410
			}); 
			$("#button").fadeOut(1000);
		});  
	});    
	$(function() {   
		$('span').click(function() {
			$('div:hidden:first').fadeIn('slow');  
		}); 
	});
	function ajax(address) {  
		$('#loginForm').load(address); 
	}
	function openJoin(url) {
		var name = '_blank';     
		var specs = 'menubar=no,status=no,toolbar=no,width=350,height=500,left=500';
		var newWindow = window.open(url, name, specs); 
		newWindow.focus();
	}    
	function getReturnValue(returnValue) { 
// 		alert(returnValue); 
	}   
// 	$('#openNewWindowButton').click(function() {  
// 		openNewWindow('/popUpUrl'); 
// 	});
</script>
<title>Insert title here</title> 
</head>   
<body>
	<div id="total" > 
		<header> 
			<!--머릿말-->  
			<nav>  
				<!--메뉴-->
				<ul>   
					<li><a href="#">너나들이</a></li> 
					<li><a href="#">소개</a></li> 
					<li><a href="#">고객문의</a></li>
				</ul>
			</nav>
		</header> 
		 <div id="diary" class="radial-center">
         <div id="buttonForm"> <div id="start">너나들이 시작하기 ..</div> 
         <div id="button" onclick="ajax('./menu/loginForm.jsp')"> 시작 </div>
         </div> 
         <div id="loginForm">  
         </div>
         </div>
		<!-- Content -->
		<footer> 
			<span> 개인정보 취급방침 │ 이용약관 │ 사용자 등록번호 │대표 :하철준 </span>
		</footer> 
	<c:if test="${id eq not null}">
		<script type="text/javascript">  
			alert("회원가입이 완료되었습니다."); 
		</script>
	</c:if> 
	</div>
	<!-- total body 끝 -->
</body>
</html>