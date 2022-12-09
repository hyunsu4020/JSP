<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<!-- 모바일 화면 적용이 가능하게 설정합니다.  -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>명함 조회</title>
<!-- 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
  <h2>이름으로 명함 조회</h2>
  <!-- post 방식의 form 구문을 사용항 submit 버튼을 클릭하면 action 속성에 지정된 웹 서버 연결하도록 했습니다.  -->
  <form method="post" action="partialSelectPro.jsp" style="font-size: 1.5rem;">
      조회할 명함의 이름 : <input type="text" name="name" maxlength="50"><br>
      <input type="submit" value="조회">
  </form>
</body>
</html>