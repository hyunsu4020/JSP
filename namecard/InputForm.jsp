<%-- page 디렉티브의 속성들을 사용하여 JSP 페이지에 대한 정보를 정의했습니다. --%>
<%-- JSP 페이지가 생성할 문서의 타입을 "text/html; charset=utf-8"로 지정하였습니다. --%>
<%@ page contentType="text/html; charset=utf-8" %>

<%-- include 디렉티브는 조걱코드의 삽입을 위해 사용합니다. --%>
<%-- 포함될 파일의 url은 아래와 같습니다. --%>
<%@include file="color.jsp" %>

<html>
<head>
<title>명함 정보 입력화면</title>
<!-- 외부 스타일시트를 적용합니다 -->
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 외부 자바스크립트를 추가합니다. -->
<script language="JavaScript" src="script.js"></script>

<!-- 원하는 font 사용을 위해 링크를 추가합니다 -->
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
  <!-- post 방식의 form 구문을 사용하여 submit 버튼을 클릭하면 action 속성에 지정된 웹 서버에 연결합니다. -->
  <!-- form 태그의 onsubmit 속성은 form 전송을 하기 전에 입력된 데이터의 유효성을 체크하기 위해 사용하는 이벤트입니다. -->
  <form name="InputBean" method="post" action="InputPro.jsp" onsubmit="return inputCheck()">
  <!-- 표의 가로를 800, 세로를 380, 테두리는 없애고, 칸과 칸 사이의 여백은 0, 칸 산쪽 여백은 2, 중앙 정렬로 했습니다. -->
    <table width="680" height="510" border="0" cellspacing="0" cellpadding="2"  align="center">
      <tr height="39" align="center" bgcolor="<%=title_c%>">
         <td colspan="3"><b>명함 정보 입력화면</b></font></td>
      </tr>
      <tr>
        <td width="100" bgcolor="<%=title_c%>">이름</td>
        <td width="200" bgcolor="<%=value_c%>">
      <!-- 이름은 required 속성을 두어 반드시 입력하도록 했습니다, 입력을 하지 않을 시에 경고가 뜹니다. -->
		  <input type="text" name="name" size="20" required> </td>
        <td width="200" bgcolor="<%=value_c%>">이름을 입력하세요.</td>
      </tr>
      <tr>
        <!-- color.jsp에 bgcolor를 정의하여 색상을 적용합니다. -->
        <td width="100" bgcolor="<%=title_c%>">대학</td>
        <td width="200" bgcolor="<%=value_c%>">
		  <input type="text" name="university" size="20"> </td>
        <td width="200" bgcolor="<%=value_c%>">대학을 입력하세요.</td>
      </tr>
      <tr>
         <td width="100" bgcolor="<%=title_c%>">이메일</td>
         <td width="200" bgcolor="<%=value_c%>">
       <!-- placeholder 속성을 두어 명함 정보를 입력 하는 사용자에게 입력할 내용의 힌트를 제공합니다. -->
		   <input type="text" name="email" size="30" placeholder="id@host"> </td>
         <td width="200" bgcolor="<%=value_c%>">이메일을 입력하세요.</td>
      </tr>
      <tr>
         <td width="100" bgcolor="<%=title_c%>">전화번호</td>
         <td width="200" bgcolor="<%=value_c%>">
		   <input type="text" name="tel" size="20"> </td>
         <td width="200" bgcolor="<%=value_c%>">전화번호를 입력하세요.</td>
      </tr>
      <tr>
         <td width="100" bgcolor="<%=title_c%>">주소</td>
         <td width="200" bgcolor="<%=value_c%>">
		   <input type="text" name="address" size="20"> </td>
         <td width="200" bgcolor="<%=value_c%>">주소를 입력하세요.</td>
      </tr>
      <tr>
         <td width="100" bgcolor="<%=title_c%>">학과</td>
         <td width="200" bgcolor="<%=value_c%>"><select name="department">
         <!-- select 태그를 사용해서 선택지를 만듭니다. -->
         <option value="선택" selected>=== 선택(none) ===</option>
         <option value="컴퓨터공학">컴퓨터공학(CS)</option>
         <option valie="전자공학">전자공학(ES)</option>
         <option valie="기계공학">전자공학(MS)</option>
		   </select></td>
       <td width="200" bgcolor="<%=value_c%>">학과를 선택하세요</td>
      </tr>
      <tr>
        <!-- colspan을 사용하여 3개의 셀의 열을 합칩니다. -->
         <td colspan="3" align="center"  bgcolor="<%=title_c%>">
           <input type="submit" value="명함입력" >
              &nbsp; &nbsp; &nbsp; &nbsp;
           <input type="reset" value="초기화">
         </td>
       </tr>
    </form>
  </table>
</body>
</html>
