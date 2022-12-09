<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<h2>JDBC드라이버 테스트</h2>

<%
  Connection conn=null;

  try{
	 //String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 
     String dbId="jspid";
     String dbPass="jsppass";
	
	 //Class.forName("com.mysql.jdbc.Driver");
	 Class.forName("com.mysql.cj.jdbc.Driver");   
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	 out.println("제대로 연결되었습니다.");
  }catch(Exception e){ 
	 out.println("Error Msg Type1 : " + e.getMessage() + "<br>");
	 out.println("Error Msg Type2: " + e.toString() + "<br>");
	 out.println("Error Msg Type3: "); e.printStackTrace();
  }
%>