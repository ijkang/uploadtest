<%@ page language="java" %>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page errorPage="Error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../check/sessionChk.jsp"%>
<STYLE> 
   BODY {        FONT-SIZE: 9PT; FONT-FAMILY: TAHOMA   ; position: relative;  } 
     TABLE {        FONT-SIZE: 9PT; COLOR: BLACK; FONT-FAMILY: TAHOMA    } 
     A {        COLOR: #999999; TEXT-DECORATION: NONE    } 
     A:HOVER {        COLOR: RED; TEXT-DECORATION: NONE    } 
     TD.MAIN {        FONT-WEIGHT: BOLD; TEXT-ALIGN: RIGHT    }
     TD.ULINE {        FONT-SIZE: 7PT; COLOR: #999999; BACKGROUND-COLOR: #FFFFFF    } 
    TD.R_ULINE {        FONT-SIZE: 7PT; COLOR: #999999; BACKGROUND-COLOR: #F4F4F4 
    }    INPUT {        MARGIN: -5PX    }
    #left{width:100px; height: 500px; float: left}
</STYLE>

<%--------------------------------------------------------------------------------------------- --%>
<%-- Parameter Setting                                                                          --%>
<%--------------------------------------------------------------------------------------------- --%>

<%-- <c:set var="type"        value="${param.type}"/> --%>
<%-- <c:set var="curYear"    value="${param.curYear}"/> --%>
<%-- <c:set var="curMonth"    value="${param.curMonth}"/> --%>
<%-- <c:set var="curDay"        value="${param.curDay}"/> --%>
<%--------------------------------------------------------------------------------------------- --%>
<%-- BODY                                                                                       --%>
<%--------------------------------------------------------------------------------------------- --%>
<BODY id="diaryBody">
<div id="left"></div>
<script type="text/javascript">
	function nextMonth(u){ 
		location.href='./diaryPageMove.do?mnum='+${mnum}+'&monthMove='+u;
	}
</script>
<div style="margin:0 auto">
<FORM name="theForm">
       <input type="hidden" name="curMonth" value="${curMonth }">
       <input type="hidden" name="curYear" value="${curYear}">
       <input type="hidden" name="curDay" value="${curDay}">
       <input type="hidden" name="firstDayOfWeek" value="${firstDayOfWeek}">
       <input type="hidden" name="lastDayOfMonth" value="${lastDayOfMonth}">
<%-- base table --%>
<TABLE cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff" width="620" height="665">
    <TR>
          <TD align="center"365"> 
          <input type="button" value="◀" onclick="ajax3('./diaryPageMove.do?mnum=${mnum}','${monthMove -1}')">
                 ${curYear} 年 &nbsp;&nbsp;${curMonth}月   
          <input type="button" value="▶" onclick="ajax3('./diaryPageMove.do?mnum=${mnum}','${monthMove +1}')">
          </TD> 
    </TR>
    <TR height="3">
        <TD colspan="2"></TD>
    </TR>
    <TR>
          <TD align="center" colspan="3" valign="top">
          <%-- body table --%>
          <TABLE border="0" cellspacing="0" cellpadding="0">
              <TR>
                  <TD valign="top" style="border:#666666 1px solid;padding:5px" align="center">
                  <%-- month outline table --%>
                    <TABLE border="0" cellspacing="0" cellpadding="0">
                    <TR height="30">
                          <TD align=center>
                              <FONT color=red>일요일</FONT>
                          </TD>
                        <TD align=center>월요일</TD>
                        <TD align=center>화요일</TD>
                        <TD align=center>수요일</TD>
                        <TD align=center>목요일</TD> 
                        <TD align=center>금요일</TD>
                        <TD align=center>토요일</TD>
                    </TR>
                    <TR><TD colspan=7 bgcolor=#888888 height=1></TD></TR>
                    <TR><TD colspan=7 bgcolor=#ffffff height=5></TD></TR>
                    <TR>
                          <TD colspan=7>
                          <%-- month content table --%>
                          <TABLE border='0' cellspacing='1' cellpadding='0' bgcolor=#dddddd>
                              <TR>
                                <c:if test="${firstDayOfWeek != '1'}">
                                  <%-- 해당 월의 가장 첫째줄에 있는 공백부분을 셈해서 처리한다.--%>
                                  <c:forEach var="i" begin="1" end="${firstDayOfWeek-1}">
                                    <TD width="70" height="78" class="uline" valign="top" align="right" style="padding:5">
                                    </TD>
                                </c:forEach>
                                </c:if>
                                
                                <%-- 이 달의 끝날까지 메모의 제목과 날짜(숫자)를 출력한다 --%>
<%--                                 <c:set var="dbIndex" value="0"/> --%>
                                  <c:forEach var="currentDay" begin="1" end="${lastDayOfMonth}">                                    
                                    <TD bgcolor="#ffffff" style="padding:5">
                                        <TABLE cellpadding="0" cellsping="0" border="0" width="70">
                                        <TR>
                                        <%-- 메모가 있는경우 패턴 --%>
                                   <c:forEach var="d" items="${list }"> 
                                        	<fmt:formatDate value="${d.dday }" pattern="d" var="d"/>
                                           <c:if test="${d == currentDay }"> 
                                            <TD height="10" width="70" class="uline" valign="top" align="right" style="color:black; background-color: aqua">
                                            <A href='javascript:dRead("${curYear}","${curMonth}","${currentDay}")'>
                                      			MEMO
                                            </A>    
                                            </TD>
                                          </c:if>
                                    </c:forEach>
                               <%-- 메모가 있는경우 패턴 종료--%>
                                            <TD height="10" width="70" class="uline" valign="top" align="right">
                                            <A href='javascript:dWrite("${curYear}","${curMonth}","${currentDay}")'>
                                                <c:choose>
                                                    <c:when test="${((currentDay-(8-firstDayOfWeek)) % 7) == 1}">
                                                        <FONT color="red">                                                    
                                                            <c:out value="${currentDay}"/>  
                                                        </FONT>
                                                    </c:when>
                                                    	<%-- 이번달만 오늘날짜를 파란색으로 해줌 --%>
                                                    <c:when test="${(currentDay)==curDay}">
                                                    	<c:if test="${monthMove==0 }"> 
                                                        <FONT color="blue">                                                     
                                                            <c:out value="${currentDay}"/>  
                                                        </FONT>
                                                        </c:if> 
                                                        <c:if test="${monthMove!=0 }"> 
                                                            <c:out value="${currentDay}"/>  
                                                        </c:if>
                                                    </c:when>
                                                        <%-- 이번달만 오늘날짜를 파란색으로 해줌 종료--%>
                                                    <c:otherwise>
                                                        <c:out value="${currentDay}"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </A>                                            
                                            </TD>
                                        </TR>
                                        <TR>
                                            <TD height="68" width="70" valign="top">
                                            <TABLE>
<%--                                                 <c:forEach var="dayIndex" items="${month_query.rows}"> --%>
<%--                                                     <c:if test="${currentDay == month_query.rows[dbIndex].schedule_date}"> --%>
<!--                                                         <TR><TD> -->
<%--                                                         <A href="javascript:view('${month_query.rows[dbIndex].schedule_id}')"> --%>
<%--                                                             ${month_query.rows[dbIndex].schedule_subject} --%>
                                                            
<!--                                                         </A> -->
<%--                                                         <c:set var="dbIndex" value='${dbIndex + 1}'/> --%>
                                                        </TD></TR>
<%--                                                     </c:if> --%>
<%--                                                 </c:forEach> --%>
                                            </TABLE>
                                            </TD>
                                        </TR>
                                        </TABLE>        
                                    </TD>
                                    <%-- 만약 한주의 마지막날(토요일)이고 이 달의 마지막 날이 아니라면 다음 줄로 넘어간다. --%>
                                    <c:if test="${((currentDay-(8-firstDayOfWeek)) % 7) == 0}">
                                        </TR>
                                        <TR>
                                    </c:if>
                                </c:forEach>
                                <%-- 해당 월의 가장 마지막 줄에 있는 공백부분을 셈해서 처리한다.--%>
                                <c:if test="${lastDayOfLastWeek != '7'}">
                                <c:forEach var="i" begin="1" end="${7-lastDayOfLastWeek}">
                                    <TD width=70 height=78 class=uline valign=top align=right style='padding:5'>
                                    </TD>
                                </c:forEach>
                                </c:if>                            
                            </TR>
                        </TABLE>
                        <%-- end month content table --%>
                        </TD>
                    </TR>
                  </TABLE>
                  <%-- end month outline table --%>
                  </TD>
            </TR>
        </TABLE>
        <%-- end body table --%>
        </TD>
    </TR>
      <TR height=10><TD></TD></TR>
    <TR>
        <TD align=right></TD>
    </TR>
</table>
<%-- end base table --%>
</FORM> 
</div>
</BODY>
<SCRIPT type="text/javascript">
    function view(str){
        OpenWin("/diary/update.jsp?type=SELECT&schedule_id="+str,480,360);
    }

    function dWrite(y,m,d){ 
        OpenWin("diary/update.jsp?monthMove=${monthMove}&curYear="+y+"&curMonth="+m+"&curDay="+d,470,320);
    }
    function dRead(y,m,d){
        OpenWin("memoView.do?mnum="+${mnum}+"&curYear="+y+"&curMonth="+m+"&curDay="+d,470,320);
    }    
    function OpenWin(URL,width,height) {
        var str,width,height;
        str="'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,";
        str=str+"width="+width;
        str=str+",height="+height+"',top=50,left=50";
        window.open(URL,'remoteSchedule',str);
    }
</SCRIPT>