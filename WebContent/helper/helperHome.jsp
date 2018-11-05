<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="../check/sessionChk.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/honey.css">
<style type="text/css"> 
/* 	#help:HOVER{background-color: red;} */ 
/* 	body{ width: 100%; height: 700px;}  */
/* 	a{ font-size: 20px; margin-left: 30px; color} */
/* 	#top{ width: 90%; height:10%; border: 1px green solid;} */
/* 	.left { height:40px; width: 40%; float: left; } */
/* 	#menu{ width: 90%; height:90%; border: 1px green solid;} */
/* 	#top button{margin:20px 0 0 0} */
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
function open_urrl(type, url, data, target) {
	$.ajaxSetup({
		cache : false
	});
	$.ajax({
		type : type,
		async : false,
		url : url,
		data : data,
		success : function(data) {
//				alert("open_url 성공");
			$("#" + target).html(data);
		}
	})
};

</script>
<!-- <div id="content">  -->
<!-- 	<div id="help" >[마니또] 수신내역 <a href="#">0건 </a></div> --> 
<body>
<div id ="top">
<div class = "left"></div>
<button onclick="open_urrl('post', 'helpToList.do', 'mnum=${mnum}', 'menu')">마니또 발신내역</button> 
<button onclick="open_urrl('post', 'helpFromList.do', 'mnum=${mnum}', 'menu')">마니또 수신내역</button>
</div>
<div id="menu"></div>
</body>
