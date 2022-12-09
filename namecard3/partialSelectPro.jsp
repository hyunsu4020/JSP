<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 웹 브라우저에서 서버로 넘어오는 파라미터 값에 한글이 있는 경우, 한글 깨짐을 방지합니다.(post방식) --%>
<%@ page import="java.sql.*"%>

<%-- request 내장객체의 getParameter() 메소드를 사용하여 프로퍼티 값을 읽어옵니다. --%>
<%  request.setCharacterEncoding("utf-8"); %>

<html>
<head>
<!-- 모바일 화면 적용이 가능하게 설정합니다. -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>명함 부분 조회</title>
<!-- 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>	

<body>
  <h2>명함 부분 조회</h2>
  <body>
	<table width="680" height="510" border="0" cellspacing="0" cellpadding="2"  align="center">
<%-- request 내장객체의 getParameter() 메소드를 사용하여 프로퍼티 값을 읽어옵니다. --%>
<%
	String name = request.getParameter("name");
	String university = request.getParameter("university");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	String department = request.getParameter("department");

  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;

  /* 예외처리 부분입니다. */
  try{
	/* 연동할 DB를 포함한 url입니다. */
	 String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 

	 /* 사용자 계정과 패스워드입니다. */
     String dbId = "jspid";
     String dbPass = "jsppass";
	 
	 /* DriverManager에 등록합니다. */
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass);

	 /* 각 위치 번호에 해당되는 필드의 데이터 타입은 문자열입니다. */
	 String sql = "select * from membertbl where name = ?";
	 pstmt = conn.prepareStatement(sql);	/*sql이 실행할 쿼리문입니다. */

	 /* prepareStatement 객체가 제공하는 setString 메소드입니다. */
     pstmt.setString(1,name);
	 rs = pstmt.executeQuery();
	 
	 while(rs.next()){
			/* prepareStatement 객체가 제공하는 getString 메소드입니다. */
			String Name = rs.getString("name");
			String University = rs.getString("university");
			String Email = rs.getString("email");
			String Tel = rs.getString("tel");
			String Address = rs.getString("address");
			String Department = rs.getString("department");
		 	
%>
<tr height="39" align="center" bgcolor="skyblue">
	<!-- colspan을 사용하여 2개 셀의 열을 합칩니다. -->
	<td colspan="2"><b>명함 정보 확인</b></td>
  </tr>
  <tr>
	<!-- color.jsp에 bgcolor를 지정하여 색상을 적용합니다. -->
	<td width="100" bgcolor="skyblue">이름</td>
	<td width="400" bgcolor="black"><%=Name%></td>
  </tr>
  <tr>
	<td width="100" bgcolor="skyblue">대학교</td>
	<td width="400" bgcolor="black"><%=University%></td>
  </tr>
  <tr>
	<td width="100" bgcolor="skyblue">이메일</td>
	<td width="400" bgcolor="black">
	<a href="mailto:<%=Email %>"><%=Email%></a></td>
  </tr>
  <tr>
	<td width="100" bgcolor="skyblue">전화번호</td>
	<td width="400" bgcolor="black" href="tel:<%=Tel %>" target="_blank"> <%=Tel%> </td>
  </tr>
  <tr>
	<td width="100" bgcolor="skyblue">주소</td>
	<td width="400" bgcolor="black">
	<a href="http://maps.google.com/maps?q=<%=Address %>"><%=Address%></a></td>
  </tr>
  <tr>
	<td width="100" bgcolor="skyblue">학과</td>
	<td width="400" bgcolor="black"><%=Department%></td>
  </tr>
<% 
	}
  } catch(Exception e){ 
	  e.printStackTrace();
  }finally{
	  if(rs != null) 
		 try{rs.close();}catch(SQLException sqle){}
	  if(pstmt != null) 
		 try{pstmt.close();}catch(SQLException sqle){}
	  if(conn != null) 
		 try{conn.close();}catch(SQLException sqle){}
  }
%>
  </table>
</body>
</html>