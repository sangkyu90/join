<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  	
    <title>User Information</title>

    <link href="/resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/resources/lib/Ionicons/css/ionicons.css" rel="stylesheet">
    <link href="/resources/lib/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
    <link href="/resources/lib/jquery-switchbutton/jquery.switchButton.css" rel="stylesheet">
    <link href="/resources/lib/highlightjs/github.css" rel="stylesheet">
    <link href="/resources/lib/datatables/jquery.dataTables.css" rel="stylesheet">
    <link href="/resources/lib/select2/css/select2.min.css" rel="stylesheet">

    <link rel="stylesheet" href="/resources/css/bracket.css">
  </head>
  <style>
  	#datatable2 .tableHead {text-align:center !important;}
  	th.no-arrow {background:none !important;}
  	table thead .no-arrow:before {content:none !important;width:0 !important;height:0 !important;}
  	table thead .no-arrow:after {content:none !important;width:0 !important;height:0 !important;}
  	
  	.sch input {border-right:none;border-top:none;border-left:none;}
  	.sch img {cursor:pointer;width:20px;}
  	
  	.btn_edit {background:#DCDCDC;border-width:1px !important;border-color: #aaa !important;text-align:center;cursor:pointer;}
  	
  	#jiBody .table-row .jiGender {width:10px !important;}
  	#jiBody .table-row input {width:80%;}
  	
  </style>

<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <div class="br-mainpanel">
      <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
        <h4 class="tx-gray-800 mg-b-5">Membership Information</h4>
        <p class="mg-b-0">등록된 사용자를 관리할 수 있습니다</p>
      </div>
      <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-b-10">User List</h6>
          <div class="table-wrapper">
			<div class="del-line">
				<div class="del" onclick="deleteInfo()">삭제</div>
				<div class="sch">
					<input type="text" id="searchName" placeholder="이름으로 검색">
					<img src="/resources/img/icon_search.png" onclick="search()">
				</div>
			</div>
            <table id="datatable2" class="table display responsive nowrap">
              <thead id="jiHead" class="tableHead">
                <tr>
				  <th class="wd-5p"><input type="checkbox" onclick="allChk(this)"></th>
                  <th class="wd-5p">Num</th>
                  <th class="wd-10p">ID</th>
                  <th class="wd-10p">Password</th>
                  <th class="wd-10p">Name</th>
				  <th class="wd-10p">Date of birth</th>
				  <th class="wd-10p">Gender</th>
                  <th class="wd-10p">Nationality</th>
				  <th class="wd-10p">Phone Number</th>
				  <th class="wd-10p">Address</th>
                  <th class="wd-15p">E-mail</th>
                  <th class="wd-5p">Edit</th>
                </tr>
              </thead>
              <tbody id="jiBody">
              
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<jsp:include page="common/footer.jsp"></jsp:include>

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
window.addEventListener('load',initList);

function initList(){
	document.querySelector('#jiBody').innerHTML = '';
	var conf = {
			url : '/infolist',
			success : function(res){
				res = JSON.parse(res);
				var html = '';
				for(var ji of res){
					html += '<tr class="table-row">';
					html += '<td><input type="checkbox" id="check" value="'+ji.jiNum+'"></td>';
					html += '<td>' + ji.jiNum + '</td>';
					html += '<td>'+ji.jiId+'</td>';
					html += '<td>'+ji.jiPwd+'</td>';
					html += '<td>'+ji.jiName+'</td>';
					html += '<td>'+ji.jiBirth+'</td>';
					html += '<td>'+ji.jiGender+'</td>';
					html += '<td>'+ji.jiLocal+'</td>';
					html += '<td>'+ji.jiMobile+'</td>';
					html += '<td>'+ji.jiAddress+'</td>';
					html += '<td>'+ji.jiEmail+'</td>';
					html += '<td><button type="button" onclick="updateInfo('+ji.jiNum+')">Edit</button></td>';
					html += '</tr>';
				} 
				document.querySelector('#jiBody').insertAdjacentHTML('beforeend',html);
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}

function updateInfo(jiNum){
	document.querySelector('#jiBody').innerHTML = '';
	document.querySelector('#jiHead').innerHTML = '';
	var conf = {
			url : '/infolist/'+jiNum,
			success : function(res){
				res = JSON.parse(res);
				var head = '';
					head += '<tr>';
					head += '<th class="wd-5p">Num</th>';
					head += '<th class="wd-10p">ID</th>';
					head += '<th class="wd-10p">Password</th>';
					head += '<th class="wd-10p">Name</th>';
					head += '<th class="wd-10p">Date of birth</th>';
					head += '<th class="wd-10p">Gender</th>';
					head += '<th class="wd-10p">Nationality</th>';
					head += '<th class="wd-10p">Phone Number</th>';
					head += '<th class="wd-10p">Address</th>';
					head += '<th class="wd-15p">E-mail</th>';
					head += '<th class="wd-5p">Save</th>';
					head += '</tr>';
				document.querySelector('#jiHead').insertAdjacentHTML('beforeend',head);
				var html = '';
					html += '<tr class="table-row" name="table-row">';
					html += '<td>' + res.jiNum + '</td>';
					html += '<td><input type="text" name="jiId" value="'+res.jiId+'"></td>';
					html += '<td><input type="text" name="jiPwd" value="'+res.jiPwd+'"></td>';
					html += '<td><input type="text" name="jiName" value="'+res.jiName+'"></td>';
					html += '<td><input type="text" name="jiBirth" value="'+res.jiBirth+'"></td>';
					html += '<td><input type="text" name="jiGender" value="'+res.jiGender+'"></td>';
					html += '<td><input type="text" name="jiLocal" value="'+res.jiLocal+'"></td>';
					html += '<td><input type="text" name="jiMobile" value="'+res.jiMobile+'"></td>';
					html += '<td><input type="text" name="jiAddress" value="'+res.jiAddress+'"></td>';
					html += '<td><input type="text" name="jiEmail" value="'+res.jiEmail+'"></td>';
					html += '<td><div class="btn_edit" onclick="saveInfo('+res.jiNum+')">Save</div></td>';
					html += '</tr>';
				document.querySelector('#jiBody').insertAdjacentHTML('beforeend',html);
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}

function saveInfo(jiNum){
	var jiId = document.querySelector('input[name="jiId"]').value;
	var jiPwd = document.querySelector('input[name="jiPwd"]').value;
	var jiName = document.querySelector('input[name="jiName"]').value;
	var jiGender = document.querySelector('input[name="jiGender"]').value;
	var jiLocal = document.querySelector('input[name="jiMobile"]').value;
	var jiBirth = document.querySelector('input[name="jiBirth"]').value;
	var jiMobile = document.querySelector('input[name="jiMobile"]').value;
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
	alert(params);
	var conf = {
			url : '/updateinfo/' + jiNum,
			method : 'PUT',
			param : params ,
			success : function(res){
				if(res=='1'){
					alert('저장 성공');
					location.href="/url/list";
				}
		}
	}
	var au = new AjaxUtil(conf);
	au.send();
}

function deleteInfo(){
	var deleteNum = document.querySelector('input[type=checkbox]:checked').value;
	var conf = {
			url : '/deleteinfo/' + deleteNum,
			method : 'DELETE',
			success : function(res){
				if(res=='1'){
					alert('삭제완료');
					initList();
				}
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}

function allChk(allChk){
	var checkboxes = document.querySelectorAll('#check');
	var rowCnt = checkboxes.length - 1;
	var allChk = allChk.checked;
	if(allChk){		
		for(var i=0; i<=rowCnt; i++){
			if(checkboxes[i].type == 'checkbox'){
				checkboxes[i].checked = true;
			}
		}
	}else {
		for(var i=0; i<=rowCnt; i++){
			if(checkboxes[i].type == 'checkbox'){
				checkboxes[i].checked = false;
			}
		}
	}
}
</script>

</body>
</html>