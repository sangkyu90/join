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
  	th.no-arrow {background:none !important;}
  	table thead .no-arrow:before {content:none !important;width:0 !important;height:0 !important;}
  	table thead .no-arrow:after {content:none !important;width:0 !important;height:0 !important;}
  	
  	.sch input {border-right:none;border-top:none;border-left:none;}
  	.sch img {cursor:pointer;width:20px;}
  	
  	.btn_edit {background:#DCDCDC;border-width:1px !important;border-color: #aaa !important;text-align:center;cursor:pointer;}
  </style>

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

function initInfo(){
	document.querySelector('#jiBody').innerHTML = '';
	var conf = {
			url : '/joinInfo',
			success : function(res){
				res = JSON.parse(res);
				var html = '';
				for(var ji of res){
					html += '<tr>';
					html += '<td><input type="checkbox"></td>';
					html += '<td>' + ji.jiNum + '</td>';
					html += '<td>' + ji.jiId + '</td>';
					html += '<td>' + ji.jiPwd + '</td>';
					html += '<td>' + ji.jiName + '</td>';
					html += '<td>' + ji.jiBirth + '</td>';
					html += '<td>' + ji.jiGender + '</td>';
					html += '<td>' + ji.jiLocal + '</td>';
					html += '<td>' + ji.jiMobile + '</td>';
					html += '<td>' + ji.jiAddress + '</td>';
					html += '<td>' + ji.jiEmail + '</td>';
					html += '<td><div class="btn_edit">Save</div></td>';
					html += '</tr>';
				} 
				document.querySelector('#jiBody').insertAdjacentHTML('beforeend',html);
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}
</script>

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
				<div class="del">삭제</div>
				<div class="sch">
					<input type="text" id="searchName" placeholder="이름으로 검색">
					<img src="/resources/img/icon_search.png" onclick="search()">
				</div>
			</div>
            <table id="datatable2" class="table display responsive nowrap">
              <thead>
                <tr>
				  <th class="wd-5p ck-all no-arrow"><input type="checkbox" name="allChk" onclick="allChk(this)"></th>
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
                  <th class="wd-5p no-arrow">Edit</th>
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

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="/resources/lib/jquery/jquery.js"></script>
    <script src="/resources/lib/popper.js/popper.js"></script>
    <script src="/resources/lib/bootstrap/bootstrap.js"></script>
    <script src="/resources/lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
    <script src="/resources/lib/moment/moment.js"></script>
    <script src="/resources/lib/jquery-ui/jquery-ui.js"></script>
    <script src="/resources/lib/jquery-switchbutton/jquery.switchButton.js"></script>
    <script src="/resources/lib/peity/jquery.peity.js"></script>
    <script src="/resources/lib/highlightjs/highlight.pack.js"></script>
    <script src="/resources/lib/datatables/jquery.dataTables.js"></script>
    <script src="/resources/lib/datatables-responsive/dataTables.responsive.js"></script>
    <script src="/resources/lib/select2/js/select2.min.js"></script>
    <script src="/resources/js/bracket.js"></script>
    <script>
    function allChk(allChk){
    	var allChk = allChk.checked;
    	var allChkBox = document.querySelectorAll('input[type="checkbox"]');
    	allChkBox.checked = allChk.checked;
    }
    
      $(function(){
        'use strict';

        $('#datatable2').DataTable({
          bLengthChange: false,
          searching: false,
          responsive: true,
          info: true,
          paging: true
        });

        // Select2
        $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

      }
    </script>
  </body>
</html>