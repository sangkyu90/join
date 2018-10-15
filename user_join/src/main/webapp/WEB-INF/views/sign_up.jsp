<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Interface</title>

    <%-- vendor css --%>
    <link href="/resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/resources/lib/Ionicons/css/ionicons.css" rel="stylesheet">
    <link href="/resources/lib/select2/css/select2.min.css" rel="stylesheet">

    <%-- Bracket CSS --%>
    <link rel="stylesheet" href="/resources/css/bracket.css">
  </head>

  <body>

    <div class="d-flex align-items-center justify-content-center bg-br-primary ht-100v" style="background-image:url(/resources/img/bg-1.jpg);background-size:cover;">

      <div class="login-wrapper wd-300 wd-xs-400 pd-25 pd-xs-40 bg-white rounded shadow-base">
        <div class="signin-logo tx-center tx-28 tx-bold tx-inverse"><span class="tx-normal">[</span> User Interface <span class="tx-normal">]</span></div>
        <div class="tx-center mg-b-40">사용자 정보 관리 솔루션</div>
        
        <div class="form-group">
          <input type="text" class="form-control" name="jiId" placeholder="아이디를 입력해주세요.">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" name="jiPwd" placeholder="비밀번호를 입력해주세요.">
		  <input type="password" class="form-control mg-t-10" name="jiPwdConf" placeholder="비밀번호를 한번 더 입력해주세요.">
		</div>
		<div class="form-group">
          <input type="text" class="form-control" name="jiName" placeholder="이름을 입력해주세요.">
        </div>
        <div class="form-group">
		  <label class="d-block tx-11 tx-uppercase tx-medium tx-spacing-1">GENDER</label>
          <div class="row row-xs mg-t-10">
            <div class="col-sm-2">
              <input type="radio" class="form-control" name="jiGender" id="gender_m" class="gender" value="남">
            </div>
			<div class="col-sm-2 mg-sm-t-0" style="">
			  <label for="gender_m" class="gender_m gender" style="line-height:-1;">MALE</label>
            </div>
            <div class="col-sm-2 mg-sm-t-0" style="">
              <input type="radio" class="form-control" name="jiGender" id="gender_f" class="gender" value="여">
            </div>
			<div class="col-sm-2 mg-sm-t-0" style="">
			  <label for="gender_f" class="gender_f gender">FEMALE</label>
			</div>
          </div>
        </div>
        <div class="form-group">
	      <label class="d-block tx-11 tx-uppercase tx-medium tx-spacing-1">Nationality</label>
		  <div class="row row-xs mg-t-10">
            <div class="col-sm-2">
			  <input type="radio" class="form-control" name="jiLocal" id="local_k" value="내국인">
			</div>
			<div class="col-sm-2 mg-sm-t-0" style="">
			  <label for="local_k" class="" style="line-height:-1;">내국인</label>
            </div>
			<div class="col-sm-2">
			  <input type="radio" class="form-control" name="jiLocal" id="local_f" value="외국인">
			</div>
			<div class="col-sm-2 mg-sm-t-0" style="">
			  <label for="local_f" class="" style="line-height:-1;">외국인</label>
            </div>
		  </div>
        </div>
            
        <div class="form-group">
          <label class="d-block tx-11 tx-uppercase tx-medium tx-spacing-1">Birthday</label>
          <div class="row row-xs">
            <div class="col-sm-4">
              <input type="text" class="form-control" placeholder="YYYY" name="jiBirth1" maxlength="4" onkeypress="checkBirth()">
            </div>
            <div class="col-sm-4 mg-t-20 mg-sm-t-0">
              <input type="text" class="form-control" placeholder="MM" name="jiBirth2" maxlength="2" onkeypress="checkBirth()">
            </div>
            <div class="col-sm-4 mg-t-20 mg-sm-t-0">
				<input type="text" class="form-control" placeholder="DD" name="jiBirth3" maxlength="2" onkeypress="checkBirth()">
            </div>
          </div>
        </div>
		<div class="form-group">
          <label class="d-block tx-11 tx-uppercase tx-medium tx-spacing-1">Phone number</label>
          <div class="row row-xs">
            <div class="col-sm-4">
              <input type="text" class="form-control" placeholder="010" name="jiMobile1" maxlength="3" onkeypress="checkMobile()">
            </div>
            <div class="col-sm-4 mg-t-20 mg-sm-t-0">
              <input type="text" class="form-control" placeholder="1234" name="jiMobile2" maxlength="4" onkeypress="checkMobile()">
            </div>
            <div class="col-sm-4 mg-t-20 mg-sm-t-0">
				<input type="text" class="form-control" placeholder="5678" name="jiMobile3" maxlength="4" onkeypress="checkMobile()">
            </div>
          </div>
        </div>
		<div class="form-group">
          <label class="d-block tx-11 tx-uppercase tx-medium tx-spacing-1">Address & E-MAIL</label>
          <div class="row row-xs">
            <div class="col-sm-6">
              <input type="text" class="form-control" placeholder="ex) 서울시 용산구" name="jiAddress">
            </div>
            <div class="col-sm-6 mg-t-20 mg-sm-t-0">
              <input type="text" class="form-control" placeholder="e-mail" name="jiEmail">
            </div>
          </div>
        </div>
        <button class="btn btn-info btn-block" onclick="check()">회원가입</button>

        <div class="mg-t-40 tx-center">이미 회원이신가요? <a href="/url/sign_in" class="tx-info">로그인</a></div>
      </div>
    </div>

    <script src="/resources/lib/jquery/jquery.js"></script>
    <script src="/resources/lib/popper.js/popper.js"></script>
    <script src="/resources/lib/bootstrap/bootstrap.js"></script>
    <script src="/resources/lib/select2/js/select2.min.js"></script>
    <script>
    var AjaxUtil = function(conf){
    	var xhr = new XMLHttpRequest();
    	var url = conf.url;
    	var method = conf.method?conf.method:'GET';
    	var param = conf.param?conf.param:'{}';
    	var success = conf.success?conf.success:function(res){
    		alert(res);
    	}
    	var error = conf.error?conf.error:function(res){
    		alert(res);
    	}
    	
    	xhr.onreadystatechange = function(){
    		if(xhr.readyState==4){
    			if(xhr.status=="200"){
    				success(xhr.responseText);
    			}else{
    				try{
    					var res = JSON.parse(xhr.responseText);
    					alert(res.errorMsg);
    					return;
    				}catch(e){
    					
    				}
    				error(xhr.responseText);
    			}
    		}
    	}
    	xhr.open(method,url);
    	if(method!='GET'){
    		xhr.setRequestHeader('Content-type','application/json;charset=utf-8');
    	} 
    	this.send = function(){
    		xhr.send(param);
    	}
    }
    
    function checkBirth(){
    	if(document.querySelector('input[name=jiBirth1]').value.length==3){
    		 document.querySelector('input[name=jiBirth2]').focus();
    	}
    	if(document.querySelector('input[name=jiBirth2]').value.length==1){
   		 document.querySelector('input[name=jiBirth3]').focus();
   		}
    	if(document.querySelector('input[name=jiBirth3]').value.length==1){
      		 document.querySelector('input[name="jiMobile1"]').focus();
      	}
    }
    
    function checkMobile(){
    	if(document.querySelector('input[name=jiMobile1]').value.length==2){
    		 document.querySelector('input[name=jiMobile2]').focus();
    	}
    	if(document.querySelector('input[name=jiMobile2]').value.length==3){
   		 document.querySelector('input[name=jiMobile3]').focus();
   		}
    	if(document.querySelector('input[name=jiMobile3]').value.length==3){
      		 document.querySelector('input[name=jiAddress]').focus();
      	}
    }
    
    function check(){
    	var jiId = document.querySelector('input[name="jiId"]').value;
    	var jiPwd = document.querySelector('input[name="jiPwd"]').value;
    	var jiName = document.querySelector('input[name="jiName"]').value;
    	var jiGender = document.querySelector('input[name="jiGender"]:checked').value;
    	var jiLocal = document.querySelector('input[name="jiLocal"]:checked').value;
    	var jiBirth1 = document.querySelector('input[name="jiBirth1"]').value;
    	var jiBirth2 = document.querySelector('input[name="jiBirth2"]').value;
    	var jiBirth3 = document.querySelector('input[name="jiBirth3"]').value;
    	var jiBirth = jiBirth1 + '-' + jiBirth2 + '-' + jiBirth3;
    	var jiMobile1 = document.querySelector('input[name="jiMobile1"]').value;
    	var jiMobile2 = document.querySelector('input[name="jiMobile2"]').value;
    	var jiMobile3 = document.querySelector('input[name="jiMobile3"]').value;
    	var jiMobile = jiMobile1 + '-' + jiMobile2 + '-' + jiMobile3;
    	var jiAddress = document.querySelector('input[name="jiAddress"]').value;
    	var jiEmail = document.querySelector('input[name="jiEmail"]').value;
		var	params = {jiId:jiId,
				jiPwd:jiPwd,
				jiName:jiName,
				jiGender:jiGender,
				jiLocal:jiLocal,
				jiBirth:jiBirth,
				jiMobile:jiMobile,
				jiAddress:jiAddress,
				jiEmail:jiEmail};
		params = JSON.stringify(params);
	var conf = {
			url : '/signup',
			method : 'POST',
			param : params ,
			success : function(res){
				if(res=='1'){
					alert('회원가입 성공');
					location.href="/url/sign_in";
				}
		}
	}
	var au = new AjaxUtil(conf);
	au.send();
    }
    
      $(function(){
        'use strict';

        $('.select2').select2({
          minimumResultsForSearch: Infinity
        });
      })
    </script>
  </body>
</html>