<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<%@ include file="check/sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>  
<html>   
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="CSS/cssMain2.css?ver=1" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript"> 
		//ajax ver.1 
	function ajax(address) {   
		$('#diary').load(address); 
	}
		//ajax ver.2  다이어리 페이지이동
	function ajax3(address,u) {
		address2 = address+'&monthMove='+u;
		$('#diary').load(address2); 
	}
		//eventPage 자동으로 띄우기
	$(document).ready(
			function(){$('.schedule').load('eventPage.do?mnum=${mnum}');
			}); 
		//sqaure 4 자동으로 띄우기
	$(document).ready(
			function(){$('.honeyBest').load('honeyBestList.do?ver=1');
			});
		//새창으로 화면 띄우기
	function openPage(url) {
		var name = '_blank';  
		var specs = 'menubar=no,status=no,toolbar=no,width=350,height=400';
		var newWindow = window.open(url, name, specs);
		newWindow.focus();
	}  
		//ajax ver.2
	function open_url(type, url, data, target) { 
		$.ajaxSetup({
			cache : false
		}); 
		$.ajax({
			type : type,
			async : false,
			url : url, 
			data : data,
			success : function(data) {

				$("#" + target).html(data);
			}
		})
	};
	
// 	//새로고침
// // 	$(document).ready(function(){
// 	    $("#button").click(function(){  
// 	    	alert("버튼클릭");
// 	        $("#diary").load(window.location.href+" #diary");
// 	    }); 
// // 	});
</script>
<!-- 마니또 발신 실패  성공여부 -->
<c:if test="${control==2 }">
	<script type="text/javascript"> 
		open_url('post', 'list.do', 'mnum=${mnum}','diary');  
	</script> 
</c:if>  

<c:if test="${control==5 }">
	<script type="text/javascript"> 
			alert("댓글 작성 성공");
	$(document).ready(
			function(){$('#diary').load('view.do?wnum=${wnum}');
 			});

	</script> 
</c:if> 

<c:if test="${control==2 }">
		<c:if test="${result>0}">
			<script type="text/javascript">
				$(document).ready( 
						alert("성공");
						function(){$('#diary').load('list.do?mnum=${mnum}&pageNum=${pageNum}')
							}); 
			</script>
		</c:if>
	</c:if>
<title>Insert title here</title>
</head>  
<body> 
	<div id="total">      
		<!--  style="background-image: url('./images/bg.jpg')"-->
		<header>
		<!--머릿말 시작--> 
			<nav>  
				<!--머릿 메뉴 시작-->   
				<ul>     
					<li><a href="#">너나들이</a></li>
					<li><a href="#">소개</a></li>
					<li><a href="#">고객문의</a></li>
				</ul>
				<!--머릿 메뉴 끝-->
			</nav>       
				<!-- 메인 페이지 제목 -->
			<div class="main" onclick="location.href='main2.jsp'">너나들이 </div>
		<!-- 머릿말 끝 -->  
		<!-- 본문 시작 -->	
		</header>  
		<article>
			<div id="diary"> 
				<!-- square0 -->     
				<div id="sqaure" style="background-color: #FFDF7C; color: black; height: 20%;">
				 	<div id="insquare" onclick="openPage('updateForm.do?id=${member.id }')" style="background-color: green;">내정보보기</div>
					<div id="insquare" onclick="location.href='./check/logout.jsp'" style="background-color: red;">로그아웃</div>
				</div>      
				<!-- square1 -->    
				<div id="sqaure" style="background-color: #FF9393; color: blue; height: 20%;">
					나에게 도착한 마니또 <a href="#">0</a>건<br><br>
					내가 작성한글에 댓글 <a href="#">0</a>건</div>
				<!-- square2 -->  
				<div id="sqaure" class="schedule" style="background-color: #ABF8FF;"> 
				<button onload="ajax3('eventPage.do?mnum=${mnum}')">나의스케줄 보기</button></div>
				<!-- square3 -->  
				<div id="sqaure"  class="honeyBest" style="background-color:#ABFFD9; color: black;">베스트 꿀단지</div>
			</div>
			<!-- 사이드 메뉴 시작  --> 
		<div id="sideMenu">
<%-- 			<div class="admin" onClick="window.open('diary.do?mnum=${mnum}','다이어리','width=700,height=800,menubar=no,status=no,toolbar=no,left=500');">다이어리</div> --%>
			<div class="admin" onClick="open_url('get', 'diary.do', 'mnum=${mnum}', 'diary')">다이어리</div>
			<div class="admin" onClick="open_url('get', 'list.do', 'mnum=${mnum}', 'diary')">꿀단지</div>
			<div class="admin" onclick="open_url('post','helper/helperHome.jsp','','diary')">마니또</div>
			<div class="admin" onclick="location.href='./mgr/mgrLoginForm.jsp'">관리자</div> 
		</div> 
		<!-- 사이드 메뉴 종료  -->  
		<!-- 본문 종료  --> 
		</article> 
		  
		<!-- Content -->
		<footer>     
			<span>
				개인정보 취급방침 │ 이용약관 │ 사용자 등록번호 │대표 :하철준
			</span>
		</footer>
	</div>
 
<!-- 작성 성공 or 실패 수신 script 단 시작     -->
	<!-- test control 마니또 전송 ==3 -->
	<c:if test="${control==5}">
			<script type="text/javascript">  
				$(document).ready( 
						function(){$('#diary').load('view.do?wnum=${wnum2}') });
			</script>  
		</c:if>
	
	<c:if test="${control==3 }">
		<c:if test="${result>0}">
			<script type="text/javascript">
				alert("성공"); 
				$(document).ready(
						function(){$('#diary').load('helper/helperHome.jsp?mnum=${mnum}') });
			</script>
		</c:if>
		<c:if test="${result==0}"> 
			<script type="text/javascript">
				alert("실패");
				history.back();
			</script>
		</c:if>
	</c:if>
	<!-- test control 꿀단지 전송 ==3 -->
	<c:if test="${control==2 }">
		<c:if test="${result>0}"> 
			<script type="text/javascript">
				$(document).ready( 
						function(){$('#diary').load('list.do?mnum=${mnum}&pageNum=${pageNum}')
							}); 
			</script>
		</c:if>
		<c:if test="${result==0}">
			<script type="text/javascript">
				alert("실패");
				history.back();
			</script>
		</c:if>
	</c:if>
		<!-- test control 다이어리작성 ==4 -->
<!-- 작성 성공 or 실패 수신 script 단 끝    -->
</body>
</html>