<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page contentType="text/html; charset=utf-8" %>

<%-- include 디렉티브는 조걱코드의 삽입을 위해 사용합니다. --%>
<%-- 포함될 파일의 url은 아래와 같습니다. --%>
<%@include file="color.jsp" %>

<%
  request.setCharacterEncoding("utf-8");
%>

<%-- request 내장객체의 getParameter() 메소드를 사용하여 자바빈 객체의 프로퍼티 값을 가져옵니다. --%>
<%
  String name = request.getParameter("name");
  String university = request.getParameter("university");
  String email = request.getParameter("email");
  String tel = request.getParameter("tel");
  String address = request.getParameter("address");
  String department = request.getParameter("department");
%>

<html>
<head>
<title>명함 정보 확인화면</title>

<!-- HTML 페이지에 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- HTML 페이지에 외부 자바스크립트를 적용합니다 -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
    <table width="500" border="0" cellspacing="0" cellpadding="2"  align="center">
      <tr height="39" align="center" bgcolor="<%=title_c%>">
        <!-- colspan을 사용하여 2개 셀의 열을 합칩니다. -->
        <td colspan="2"><b>명함정보 확인</b></td>
      </tr>
      <tr>
        <!-- color.jsp에 bgcolor를 지정하여 색상을 적용합니다. -->
        <td width="100" bgcolor="<%=title_c%>">이름</td>
        <td width="400" bgcolor="<%=value_c%>">
      <%-- request 내장객체의 getParameter() 메소드를 사용하여 읽어온 name 프로퍼티 값을 가져옵니다. --%>
		  <%= name %></td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">대학교</td>
        <td width="400" bgcolor="<%=value_c%>">
      <%-- request 내장객체의 getParameter() 메소드를 사용하여 읽어온 university 프로퍼티 값을 표현식을 사용하여 화면에 출력합니다. --%>
		  <%= university %></td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">이메일</td>
        <td width="400" bgcolor="<%=value_c%>">
      <%-- request 내장객체의 getParameter() 메소드를 사용하여 읽어온 email 프로퍼티 값을 표현식을 사용하여 화면에 출력합니다. --%>
		  <%= email %></td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">전화번호</td>
        <td width="400" bgcolor="<%=value_c%>">
      <%-- request 내장객체의 getParameter() 메소드를 사용하여 읽어온 tel 프로퍼티 값을 표현식을 사용하여 화면에 출력합니다. --%>
		  <%= tel %></td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">주소</td>
        <td width="400" bgcolor="<%=value_c%>">
      <%-- request 내장객체의 getParameter() 메소드를 사용하여 읽어온 address 프로퍼티 값을 사용하여 화면에 출력합니다. --%>
		  <%= address %></td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">학과</td>
        <td width="400" bgcolor="<%=value_c%>">
      <%-- request 내장객체의 getParameter() 메소드를 사용하여 읽어온 department 프로퍼티 값을 사용하여 화면에 출력합니다. --%>
		  <%= department %></td>
      </tr>
  </table>
</body>
</html>
