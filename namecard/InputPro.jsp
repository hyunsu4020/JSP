<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page contentType="text/html; charset=utf-8" %>

<%-- include 디렉티브는 조걱코드의 삽입을 위해 사용합니다. --%>
<%-- 포함될 파일의 url은 아래와 같습니다. --%>
<%@include file="color.jsp" %>

<%-- 웹 브라우저에서 서버로 넘어오는 파라미터 값에 한글이 있는 경우, utf-8 방식으로 한글 깨짐을 방지 해줍니다. --%>
<%
  request.setCharacterEncoding("utf-8");
%>

<%-- <jsp:useBean> 액션태그를 사용하여 자바빈 객체를 생성합니다. --%>
<%-- id 속성에는 생성될 자바빈 객체(인스턴스)의 이름이고 class 속성은 객체가 생성될 자바빈 클래스명입니다. --%>
<jsp:useBean id="InputBean" class="ch10.input.InputBean" />
<jsp:setProperty name="InputBean" property="*" />

<%-- property 속성 값에 '*'가 들어가면 모든 프로퍼티 값을 한 번에 세팅할 수 있습니다. --%>
<%--
<jsp:setProperty name="InputBean" property="name" />
<jsp:setProperty name="InputBean" property="email" />
<jsp:setProperty name="InputBean" property="tel" />
<jsp:setProperty name="InputBean" property="address" />
<jsp:setProperty name="InputBean" property="university" />
<jsp:setProperty name="InputBean" property="department" />
--%>

<html>
<head>
<title>명함 정보 확인화면</title>
<!-- HTML 페이지에 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- Html 페이지에 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
    <table width="680" height="510" border="0" cellspacing="0" cellpadding="2"  align="center">
      <tr height="39" align="center" bgcolor="<%=title_c%>">
        <!-- colspan을 사용하여 2개 셀의 열을 합칩니다. -->
        <td colspan="2"><b>명함 정보 확인</b></td>
      </tr>
      <tr>
        <!-- color.jsp에 bgcolor를 지정하여 색상을 적용합니다. -->
        <td width="100" bgcolor="<%=title_c%>">이름</td>
        <td width="400" bgcolor="<%=value_c%>">
      <!-- JSP:getProperty 액션 태그를 사용하여 InputBean 객체의 name 프로퍼티 값을 읽어옵니다. -->
		  <jsp:getProperty name="InputBean" property="name" /> </td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">대학교</td>
        <td width="400" bgcolor="<%=value_c%>">
      <!-- JSP:getProperty 액션 태그를 사용하여 InputBean 객체의 university 프로퍼티 값을 읽어옵니다. -->
		  <jsp:getProperty name="InputBean" property="university" /> </td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">이메일</td>
        <td width="400" bgcolor="<%=value_c%>">
      <!-- JSP:getProperty 액션 태그를 사용하여 InputBean 객체의 email 프로퍼티 값을 읽어옵니다. -->
		  <jsp:getProperty name="InputBean" property="email" /> </td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">전화번호</td>
        <td width="400" bgcolor="<%=value_c%>">
      <!-- JSP:getProperty 액션 태그를 사용하여 InputBean 객체의 tel 프로퍼티 값을 읽어옵니다. -->
		  <jsp:getProperty name="InputBean" property="tel" /> </td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">주소</td>
        <td width="400" bgcolor="<%=value_c%>">
      <!-- JSP:getProperty 액션 태그를 사용하여 InputBean 객체의 address 프로퍼티 값을 읽어옵니다. -->
		  <jsp:getProperty name="InputBean" property="address" /> </td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">학과</td>
        <td width="400" bgcolor="<%=value_c%>">
      <!-- JSP:getProperty 액션 태그를 사용하여 InputBean 객체의 department 프로퍼티 값을 읽어옵니다. -->
		  <jsp:getProperty name="InputBean" property="department" /> </td>
      </tr>
  </table>
</body>
</html>
