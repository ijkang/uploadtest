<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#chevron {
  position: relative;
  text-align: center;
  padding: 12px;
  margin-bottom: 6px;
  height: 60px;
  width: 200px;
  color: black;
}
div{ position: relative;}
#chevron:before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 51%;
  background: red;
  -webkit-transform: skew(0deg, 6deg);
  -moz-transform: skew(0deg, 6deg);
  -ms-transform: skew(0deg, 6deg);
/*   -o-transform: skew(0deg, 6deg); */
  transform: skew(0deg, 6deg);
}
#chevron:after {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  height: 100%;
  width: 50%;
  background: red;
  -webkit-transform: skew(0deg, -6deg);
  -moz-transform: skew(0deg, -6deg);
  -ms-transform: skew(0deg, -6deg);
  -o-transform: skew(0deg, -6deg);
  transform: skew(0deg, -6deg);
}​
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="chevron"><div>글씨는 어떻게</div></div>
</body>
</html>