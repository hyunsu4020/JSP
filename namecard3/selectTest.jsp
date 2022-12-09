<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>명함 리스트</title>
<!-- 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
  <h2>명함 리스트</h2>
  <table border="1">
  <tr>
	<TD width="100">이름</TD>
	<TD width="150">대학교</TD>
	<TD width="250">이메일</TD>
	<TD width="250">전화번호</TD>
	<TD width="250">주소</TD>
	<TD width="150">학과</TD> 
   </tr>
<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  /* 예외처리 부분입니다. */
  try{
	 //String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";

	 /* 연동할 DB를 포함한 url입니다. */
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 

	 /* 사용자 계정과 패스워드입니다. */
     String dbId="jspid";
     String dbPass="jsppass";
	 
	 //Class.forName("com.mysql.jdbc.Driver");

	 /* DriverManager에 등록합니다. */
	 Class.forName("com.mysql.cj.jdbc.Driver");   
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

	 /* 각 위치 번호에 해당되는 필드의 데이터 타입은 문자열입니다. */
	 String sql= "select * from membertbl";
	 pstmt=conn.prepareStatement(sql);	/*sql이 실행할 쿼리문입니다. */
	 rs=pstmt.executeQuery();

	 while(rs.next()){
		/* prepareStatement 객체가 제공하는 getString 메소드입니다. */
		String name = rs.getString("name");
		String university = rs.getString("university");
		String email = rs.getString("email");
		String tel = rs.getString("tel");
		String address = rs.getString("address");
		String department = rs.getString("department");

%>
     <TR>
		<TD width="100"><%=name%></TD>
		<TD width="150"><%=university%></TD>
		<TD width="250"><%=email%></TD>
		<TD width="250"><%=tel%></TD>
		<TD width="250"><%=address%></TD>
		<TD width="150"><%=department%></TD>
	</TR>
<%  } 
  }catch(Exception e){ 
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