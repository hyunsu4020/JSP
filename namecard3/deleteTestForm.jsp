<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>명함 삭제</title>
<!-- 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
  <h2>명함 삭제</h2>
  <!-- post 방식의 form 구문을 사용항 submit 버튼을 클릭하면 action 속성에 지정된 웹 서버 연결하도록 했습니다.  -->
  <form method="post" action="deleteTestPro.jsp">
      <table border = "1" align="center">
        <!-- 이름과 전화번호는 required 속성을 두어 필수로 입력하도록 했습니다. -->
      	<tr>
      		<td width="200">이름: </td>
      		<td width="200">
      		<input type="text" name="name" maxlength="10" size="30" required></td>
   		</tr>
   		<tr>
      		<td width="200">전화번호: </td>
      		<td width="200">
      		<!-- placeholder 속성을 두어 입력 시 힌트를 주었습니다. -->
      		<input type="text" name="tel" maxlength="15" placeholder="010-1111-1234" size="30" required></td>
   		</tr>
   		<tr>
        <!-- colspan을 사용하여 3개의 셀의 열을 합칩니다. -->
         <td colspan="3" align="center">
           <input type="submit" value="삭제" >
              &nbsp; &nbsp; &nbsp; &nbsp;
           <input type="reset" value="초기화">
         </td>
       </tr>
      </table>
  </form>
</body>
</html>