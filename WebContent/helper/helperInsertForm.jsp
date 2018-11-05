<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="../check/sessionChk.jsp" %>
<!DOCTYPE html><html> <head> <title>게시판</title>
<link rel="stylesheet" type="text/css" href="CSS/honey.css">
<style type="text/css">
table {
	border-collapse: collapse;
}
</style>
 </head>
 <body>
 <form action="helpInsert.do" method="post">
<input type="hidden" value="${mnum }" name="mnum">
<table> 
  <tr>
   <td>
    <table id="table1" >
     <tr>
      <td>마니또 보내기</td>
     </tr>
    </table>
   <table>  
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td> 
      <td align="center">내용</td>
      <td><textarea name="context" cols="50" rows="13" required="required"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center"> 
      <td>&nbsp;</td>
      <td colspan="2"><input type="submit" value="등록">
       <input type=button value="취소" onclick="history.back()">
      <td>&nbsp;</td> 
     </tr>
    </table>
 </table>
 </form>
</body>
</html>