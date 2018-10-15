<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
<form name="join" action="signUp" method="post" onsubmit="return validate()">
	<input type="text" id="ujId" name="ujId" required>
	<input type="password" id="ujPwd" name="ujPwd" required>
	<input type="password" id="ujPwdChk" name="ujPwdChk" required>
	<input type="radio" id="ujLocal" name="ujLocal" value="내국인">
	<input type="radio" id="ujLocal" name="ujLocal" value="외국인">
	<input type="text" id="ujName" name="ujName" required maxlength="10">
	<input type="text" id="ujEmail" name="ujEmail" required>
	<input type="radio" id="ujGender" name="ujGender" value="남">
	<input type="radio" id="ujGender"  name="ujGender" value="여">
	<input type="text" id="ujBirth" name="ujBirth" required maxlength="8">
	<input type="text" id="ujMobile" name="ujMobile" required max="11111111111" maxlength="11" oninput="maxLengthCheck(this)">
	<input type="text" id="ujAddress" name="ujAddress" required>
	
<script>
function maxLengthCheck(object){
	if (object.value.length > object.maxLength){
		object.value = object.value.slice(0, object.maxLength);
	}
}

function validate(){
	var id = document.querySelector('#ujId').value;
	var pwd = document.querySelector('#ujPwd').value;
	var pwdChk = document.querySelector('#ujPwdChk').value;
	var local = document.querySelector('input[type=radio][name=ujLocal]:checked').value;
	var name = document.querySelector('#ujName').value;
	var email = document.querySelector('#ujEmail').value;
	var gender = document.querySelector('input[type=radio][name=ujGender]:checked').value;
	var birth = document.querySelector('#ujBirth').value;
	var mobile = document.querySelector('#ujMobile').value;
	var address = document.querySelector('#ujAddress').value;
	var idpwdChk = /^[a-zA-Z0-9]{4,12}$/;
	var emailChk = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var mChk = /^\d{3}-\d{3,4}-\d{4}$/;
	var mChk2 = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

    if(!check(idpwdChk,id,'아이디는 4~12자의 영문 대소문자와 숫자로만 입력해주세요.')) {
    	join.ujId.value='';
    	join.ujId.focus();
        return false;
    }
    if(!check(idpwdChk,pwd,'패스워드는 4~12자의 영문 대소문자와 숫자로만 입력해주세요.')) {
    	join.ujPwd.value='';
    	join.ujPwd.focus();
        return false;
    }
    if(pwd!=pwdChk) {
        alert('비밀번호가 다릅니다. 다시 확인해 주세요.');
        join.pwdChk.value = "";
        join.pwdChk.focus();
        return false;
    }
    if(local.value==null){
    	alert('국적을 확인해주세요.');
    	return false;
    }
    if(name.value=='') {
        alert("이름을 입력해 주세요");
        join.ujName.focus();
        return false;
    }
    if(email.value=='') {
        alert('이메일을 입력해 주세요');
        join.ujEmail.focus();
        return false;
    }
    if(!check(emailChk, email, '적합하지 않은 이메일 형식입니다. 예)abcd@efg.com')) {
    	join.ujEmail.focus();
        return false;
    }
    if(gender.value==null){
    	alert('성별을 체크해주세요.');
       	return false;
    }
    if(birth.value==''){
    	alert('생년월일을 적어주세요. 예)20180101');
    	join.ujBirth.focus();
       	return false;
    }
    if(mobile.value==''){
    	alert('휴대전화 번호를 적어주세요.');
    	join.ujMobile.focus();
       	return false;
    }
    if(address.value==''){
    	alert('주소를 입력해주세요.');
    	join.ujAddress.focus();
       	return false;
    }
}
</script>
</form>
</body>
</html>