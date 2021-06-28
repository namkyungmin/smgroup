<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:set var="req" value="${pageContext.request}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../include/head.jsp" %>
	<link href="/resource/assets/css/select/select2.min.css" rel="stylesheet">
</head>
<body class="nav-md">

    <div class="container body">


        <div class="main_container">
			
            <div class="col-md-3 left_col">
                <%@ include file="../include/sidebar.jsp" %>
            </div>
            <!-- top navigation -->
            <div class="top_nav">
                <%@ include file="../include/top.jsp" %>
            </div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-wrap page-list" data-menu="mgmt|company|list">
					<div class="page-title">
						<div class="title_left">
							<h3>계열사 관리<small></small></h3>
						</div>
						<div class="title_right">
							<div class="col-md-8 col-sm-8 col-xs-12 form-group pull-right top_search">
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<!-- Nav tabs -->
							<div class="x_panel">
								<div class="x_title">
									<h2>글쓰기<small></small></h2>
									<div class="clearfix"></div>
								</div>
					            <div class="x_content">
									<form method="post" id="write" name="frmSubmit" action="writeProc.do" enctype="multipart/form-data">
										<ul class="nav nav-tabs nav-tabs-two" role="tablist">
											<li role="presentation" class="active"><a href="#kor" aria-controls="kor" role="tab" data-toggle="tab">KR</a></li>
											<li role="presentation"><a href="#eng" aria-controls="eng" role="tab" data-toggle="tab">EN</a></li>
										</ul>
										<div class="x_panel_inline">
										<div class="tab-content mt-4">
											<div class="form-group">
												<label for="SECTION">사업분야 *</label>
												<div class="checkboxes">
													<c:forEach var="entry" items="${sections_list}" varStatus="status">
													<label class="radio-inline">
														<input type="radio" name="SECTIONS" id="${entry.key}" value="${entry.key}" title="사업분야" data-title="사업분야를" ${status.index==0?'checked':''}> ${entry.value}
													</label>
													</c:forEach>
												</div>
											</div>
											<%-- ! ANCHOR 한글  --%>
											<div role="tabpanel" class="tab-pane active" id="kor">
												<div class="form-group">
													<label for="NAME">계열사명 *</label>
													<input type="text" name="NAME" class="form-control" required value="" maxlength="100" title="계열사명" data-title="계열사명을">
												</div>
												<div class="form-group">
													<label for="NAME_SUB">계열사명 서브</label>
													<input type="text" name="NAME_SUB" class="form-control" value="" maxlength="100" title="계열사명 서브" data-title="계열사명 서브을">
												</div>
												<div class="form-group">
													<label for="URL">홈폐이지 URL</label>
													<input type="text" name="URL" class="form-control" value="" maxlength="100" title="URL" data-title="URL을">
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">계열사 설명 *</label>
													<textarea id="DESCRIPTION" name="DESCRIPTION" class="form-control texteditor required" style="resize: none; height: 150px;"></textarea>
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">썸네일 등록 *</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="THUMB" id="THUMB" required class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="썸네일" data-title="썸네일을">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="THUMB" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하 <br>
																		※ 권장사이즈 : 333 x 200 <br>
																		※  이미지 적용 시 사업분야, 사업분야 상세페이지, 계열사 전체보기에 모두사용
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>

												<div class="x_title_sub">
													<h3>오시는 길<small></small></h3>
												</div>
												<div class="form-group">
													<label for="NAME">주소</label>
													<input type="text" name="ADDR" class="form-control" value="" maxlength="100" title="주소" data-title="주소을">
												</div>
												<div class="form-group">
													<label for="NAME">전화번호</label>
													<input type="text" name="TEL" class="form-control" value="" maxlength="100" title="전화번호" data-title="전화번호을">
												</div>
												<div class="form-group">
													<label for="NAME">좌표값 (위도)</label>
													<input type="text" name="LAT" class="form-control" value="" maxlength="100" title="좌표값 (위도)" data-title="좌표값 (위도)을">
												</div>
												<div class="form-group">
													<label for="NAME">좌표값 (경도)</label>
													<input type="text" name="LNG" class="form-control" value="" maxlength="100" title="좌표값 (경도)" data-title="좌표값 (경도)을">
												</div>
												<div class="form-group" >
													<label for="STATUS_ADDR">오시는 길 노출여부</label>
													<div id="btnset">
														<div id="STATUS_ADDR" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default active">
																<input type="radio" name="STATUS_ADDR" value="Y" checked="checked"> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<input type="radio" name="STATUS_ADDR" value="N" > 비공개
															</label>
														</div>
													</div>
												</div>
												<div class="form-group" >
													<label for="STATUS">계열사 전체보기 노출여부</label>
													<div id="btnset">
														<div id="STATUS" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default active">
																<input type="radio" name="STATUS" value="Y" checked="checked"> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<input type="radio" name="STATUS" value="N" > 비공개
															</label>
														</div>
													</div>
												</div>
												<div class="form-group" >
													<label for="STATUS_COMPANY">사업분야 노출 여부 </label>
													<div id="btnset">
														<div id="STATUS_COMPANY" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default active">
																<input type="radio" name="STATUS_COMPANY" value="Y" checked="checked"> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<input type="radio" name="STATUS_COMPANY" value="N" > 비공개
															</label>
														</div>
													</div>
												</div>

											</div>
											<%-- ! ANCHOR 영문  --%>
											<div role="tabpanel" class="tab-pane" id="eng">
												<div class="form-group">
													<label for="NAME">영문 계열사명</label>
													<input type="text" name="NAME_EN" class="form-control" value="" maxlength="100" title="영문 계열사명" data-title="영문 계열사명을">
												</div>
												<div class="form-group">
													<label for="NAME_SUB">영문 계열사명 서브</label>
													<input type="text" name="NAME_SUB_EN" class="form-control" value="" maxlength="100" title="영문 계열사명 서브" data-title="영문 계열사명 서브을">
												</div>
												<div class="form-group">
													<label for="URL_EN">영문 홈페이지 URL</label>
													<input type="text" name="URL_EN" class="form-control" value="" maxlength="100" title="영문 계열사명 서브" data-title="영문 계열사명 서브을">
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">영문 계열사 설명</label>
													<textarea id="DESCRIPTION_EN" name="DESCRIPTION_EN" class="form-control texteditor" style="resize: none; height: 150px;"></textarea>
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">영문 썸네일 등록</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="THUMB_EN" id="THUMB_EN" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="THUMB_EN" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하 <br>
																		※ 권장사이즈 : 333 x 200 <br>
																		※  이미지 적용 시 사업분야, 사업분야 상세페이지, 계열사 전체보기에 모두사용
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>

												<div class="x_title_sub">
													<h3>오시는 길<small></small></h3>
												</div>
												<div class="form-group">
													<label for="ADDR_EN">영문 주소</label>
													<input type="text" name="ADDR_EN" class="form-control" value="" maxlength="100" title="영문 주소" data-title="영문 주소을">
												</div>
												<div class="form-group">
													<label for="TEL_EN">영문 전화번호</label>
													<input type="text" name="TEL_EN" class="form-control" value="" maxlength="100" title="영문 전화번호" data-title="영문 전화번호을">
												</div>
												<div class="form-group">
													<label for="LAT_EN">영문 좌표값 (위도)</label>
													<input type="text" name="LAT_EN" class="form-control" value="" placeholder="미입력 시 국문 좌표값 사용" maxlength="100" title="영문 좌표값 (위도)" data-title="영문 좌표값 (위도)을">
												</div>
												<div class="form-group">
													<label for="LNG_EN">영문 좌표값 (경도)</label>
													<input type="text" name="LNG_EN" class="form-control" value="" placeholder="미입력 시 국문 좌표값 사용" maxlength="100" title="영문 좌표값 (경도)" data-title="영문 좌표값 (경도)을">
												</div>
												<div class="form-group" >
													<label for="STATUS_ADDR_EN">영문 오시는길 노출여부</label>
													<div id="btnset">
														<div id="STATUS_ADDR_EN" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default active">
																<input type="radio" name="STATUS_ADDR_EN" value="Y" checked="checked"> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<input type="radio" name="STATUS_ADDR_EN" value="N" > 비공개
															</label>
														</div>
													</div>
												</div>
												<div class="form-group" >
													<label for="STATUS_EN">영문 계열사 전체보기 노출여부</label>
													<div id="btnset">
														<div id="STATUS_EN" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default active">
																<input type="radio" name="STATUS_EN" value="Y" checked="checked"> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<input type="radio" name="STATUS_EN" value="N" > 비공개
															</label>
														</div>
													</div>
												</div>
												<div class="form-group" >
													<label for="STATUS_COMPANY_EN">영문 사업분야 노출 여부 </label>
													<div id="btnset">
														<div id="STATUS_COMPANY_EN" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default active">
																<input type="radio" name="STATUS_COMPANY_EN" value="Y" checked="checked"> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<input type="radio" name="STATUS_COMPANY_EN" value="N" > 비공개
															</label>
														</div>
													</div>
												</div>

											</div>
										</div>
							            </div>
				                        <div class="ln_solid"></div>
									    <div class="form-group">
									        <a href="javascript:;" class="btn btn-info" onclick="doSubmit('write');">등록하기</a>
											<a href="javascript:;" id="list" class="btn btn-primary"> 목록으로 </a>
									    </div>
									</form>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
                <!-- footer content -->
                <%@ include file="../include/footer.jsp" %>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>
        <div id="fileLoad"></div>
    </div>
    <%@ include file="../include/script.jsp" %>
	<script src="/resource/assets/js/select/select2.full.js"></script>
	<script src="/resource/assets/js/moment.min.js"></script>
	<script src="/resource/assets/js/datepicker/daterangepicker.js"></script>
	<script src="/resource/assets/js/tags/jquery.tagsinput.min.js"></script>
	<script src="/resource/assets/js/forminp.js"></script>
	<script type="text/javascript" src="/resource/assets/js/uploadfile.js" charset="utf-8"></script>
	<form id="commonForm" name="commonForm" method="get"></form>
<c:if test="${category.HTML=='Y' }">
<!-- Smart Editor -->
<script type="text/javascript" src="/resource/assets/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">

var oEditors1 = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors1,
    elPlaceHolder: "DESCRIPTION",
    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
 
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors1.getById["DESCRIPTION"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
	var ir1 = $("#DESCRIPTION").val();
    
	if( ir1 == ""  || ir1 == null || ir1 == '&nbsp;' || ir1 == '<p>&nbsp;</p>' || ir1 == '<br>')  {
	     if($("#DESCRIPTION").attr('required')){
	    	 	alert("내용을 입력하세요.");
		    oEditors.getById["ir1"].exec("FOCUS"); //포커싱
		    return false;	    	 
	     }else{
	    	 $("#DESCRIPTION").val('');
	     }
	}
    try {
        //elClickedObj.form.submit();
        return true;
    	elClickedObj.submit();
    } catch(e) {
     
    }
}

//textArea에 이미지 첨부
function pasteHTML(filepath,byid){
var sHTML = '<img src="/upload/editor/'+filepath+'">';
oEditors1.getById[byid].exec("PASTE_HTML", [sHTML]);
}
</script>
</c:if>
<script>
(function($){
	var main_count=0;
	main_count='${MAIN_COUNT }';
	if($.isNumeric(main_count)){
		main_count = parseInt(main_count);
	}
	$('[name=MAINSTATUS]').change(function(){
		if(main_count>0){
			if($(this).val()=='Y'){
				if(!confirm('이미 메인에 공지된 게시글이 있습니다. 변경하시겠습니까?')){
					$('[name=MAINSTATUS][value=N]').prop('checked',true);
				}
			}
		}
	});
    $("#list").on("click", function(e){ //목록으로 버튼
        e.preventDefault();
        fn_openBoardList();
    });
    $('[name=UPDA_DTM]').daterangepicker({
		"singleDatePicker": true,
		"timePicker": true,
		"timePicker24Hour": true,
		"timePickerSeconds": true,
		"locale": {
	        "format": "YYYY-MM-DD HH:mm:ss",
	        "separator": " - "
		}
    }, function (start, end, label) {
        
    });
    $('[name=START_DTM]').daterangepicker({
		"singleDatePicker": true,
		"timePicker": true,
		"timePicker24Hour": true,
		"timePickerSeconds": true,
		"locale": {
	        "format": "YYYY-MM-DD HH:mm:ss",
	        "separator": " - "
		}
    }, function (start, end, label) {
        
    });
    $('[name=END_DTM]').daterangepicker({
		"singleDatePicker": true,
		"timePicker": true,
		"timePicker24Hour": true,
		"timePickerSeconds": true,
		"locale": {
	        "format": "YYYY-MM-DD HH:mm:ss",
	        "separator": " - "
		}
    }, function (start, end, label) {
        
    });
})(jQuery);
function fn_openBoardList(){
    var comSubmit = new ComSubmit();
    comSubmit.setUrl("list.do");
	if("${!empty currentPageNo}"=="true"){
		comSubmit.addParam("currentPageNo", "${currentPageNo}");
	}
	if("${!empty target}"=="true"){
		comSubmit.addParam("target", "${target}");
	}
	if("${!empty keyword}"=="true"){
		comSubmit.addParam("keyword", "${keyword}");
	}
	if("${!empty PID}"=="true"){
		comSubmit.addParam("PID", "${PID}");
	}
    comSubmit.submit();
}
function doSubmit(frm){
	if(checkValidation(frm)){
		var submitHtml = true;
		<c:if test="${category.HTML=='Y' }">
		submitHtml = submitContents($('form#'+frm));
		</c:if>
		if(submitHtml){
			var tags = "";
			var tags_index = 0;
			$('.rk-tags').each(function(index){
				if($(this).is(':checked')){
					if(tags_index==0){
						tags += ""+$(this).val();
					}else{
						tags += ","+$(this).val();
					}
					tags_index++;
				}
			});
			$('[name=TAGS]').val(tags);
			$('form#'+frm).submit();
		}
		
	}
}
</script>
</body>

</html>