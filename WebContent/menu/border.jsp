<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style type="text/css">
	.file_input_textbox {float:left; height:29px;}
	.file_input_div {position:relative; width:80px; height:36px; overflow:hidden;}
	.file_input_img_btn {padding:0 0 0 5px;}
	.file_input_hidden {font-size:29px; position:absolute; right:0px; top:0px; opacity:0; filter: alpha(opacity=0); -ms-filter: alpha(opacity=0); cursor:pointer;}
  </style>

</head>
<body>
<form>

<div>제목<input type="text" style="width: 57%" name="title">

<span class="type">분류</span>
<label> 
<input type="text" style="width: 20%" id="menu" list="Choices"></label>
<datalist id="Choices">
<option value="꿀팁"></option>
<option value="여행"></option>
<option value="취미"></option>
<option value="운동"></option>
</datalist></div><p>
	<input type="text" style="width:79%" id="fileName" class="file_input_textbox" readonly >
	<div class="file_input_div">
		<img src="open.jpg" class="file_input_img_btn" alt="open" />
		<input type="file" name="file_1" class="file_input_hidden" onchange="javascript: document.getElementById('fileName').value = this.value"/>
	</div>
	<div>
<textarea rows="20" cols="60"></textarea>
</div>

<button >확인</button>
</form>

</body>
</html>