<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%-- 웹 브라우저에서 서버로 넘어오는 파라미터 값에 한글이 있는 경우, 한글 깨짐을 방지합니다.(post방식) --%>
<% request.setCharacterEncoding("utf-8");%>

<%-- request 내장객체의 getParameter() 메소드를 사용하여 프로퍼티 값을 읽어옵니다. --%>
<% 
	String name = request.getParameter("name");
	String university = request.getParameter("university");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	String department = request.getParameter("department");

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";

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

	 /*Connection 객체를 얻어옵니다. */
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into membertbl values (?,?,?,?,?,?)";	/* 각 위치 번호에 해당되는 필드의 데이터 타입은 문자열입니다. */
 	 pstmt = conn.prepareStatement(sql);	/* sql이 실행할 쿼리문입니다. */

	 /* prepareStatement 객체가 제공하는 setString 메소드입니다. */
	 pstmt.setString(1, name);
  	 pstmt.setString(2, university);
	 pstmt.setString(3, email);
	 pstmt.setString(4, tel);
	 pstmt.setString(5, address);
	 pstmt.setString(6, department);
	 pstmt.executeUpdate();	
 	 
 	 str= "명함 등록이 완료되었습니다.";

 	}catch(Exception e){ 
 		e.printStackTrace();
 		str="명함 등록에 실패했습니다.";
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>

<html>
<head>
<title>명함 등록</title>
<!-- 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
  <a style="font-size: 7rem;"><%=str %></a>
</body>
</html>