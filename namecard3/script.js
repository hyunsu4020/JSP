function inputCheck(){
	var userinput = eval("document.regForm");
	if(userinput.name.value==""){
		alert("이름을 입력하세요.");
		userinput.name.focus();
		return false;
	}
	if(userinput.name.value==""){
		alert("대학을 입력하세요.");
		userinput.university.focus();
		return false;
	}
	if(userinput.email.value==""){
		alert("이메일을 입력하세요.");
		userinput.email.focus();
		return false;
	}
	if(userinput.tel.value==""){
		alert("연락처를 입력해 주세요");
		userinput.tel.focus();
		return false;
	}
	if(userinput.address.value==""){
		alert("주소를 입력해 주세요");
		userinput.address.focus();
		return false;
	}
	if(userinput.department.value==""){
		alert("학과를 선택해 주세요");
		userinput.department.focus();
		return false;
	}

}
