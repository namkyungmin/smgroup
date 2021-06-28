<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../include/head.jsp" %>
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
				<div class="page-wrap page-list" data-menu="mgmt|company|sub">
					<div class="page-title">
					    <div class="title_left">
							<h3>계열사 서브페이지 수정 <small></small></h3>
					    </div>
						<div class="title_right">
							<div class="col-md-8 col-sm-8 col-xs-12 form-group pull-right top_search">
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					
					<div class="row">
					
					    <div class="col-md-12 col-sm-12 col-xs-12">
					        <div class="x_panel">
					            <div class="x_title">
					                <h2>${map.NAME}<small>(${fn:substring(map.UPDA_DTM,0,10)})</small></h2>
					            	<a href="javascript:void(0);" data-manager-modify="contentsguide" target="_blank" class="btn btn-sm btn-default pull-right h3 mr-3">가이드 수정</a>
					            	<a href="javascript:void(0);" data-manager="contentsguide" target="_blank" class="btn btn-sm btn-default pull-right h3 mr-3">콘텐츠 등록 가이드</a>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content">
									<form id="write" action="/mgmt/company/sub_modifyProc.do" method="post" encType="multipart/form-data">
								        <input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
										<c:if test="${not empty map.SUBIDX}">
										<input type="hidden" id="SUBIDX" name="SUBIDX" value="${map.SUBIDX }">
										</c:if>
										<input type="hidden" name="currentPageNo" value="${param.currentPageNo }">
										<input type="hidden" name="target" value="${param.target }">

										<input type="hidden" name="krInt" value="${fn:length(mapConKr)}">
										<input type="hidden" name="enInt" value="${fn:length(mapConEn)}">
										
										<ul class="nav nav-tabs nav-tabs-two" role="tablist">
											<li role="presentation" class="active"><a href="#kor" aria-controls="kor" role="tab" data-toggle="tab">KR</a></li>
											<li role="presentation"><a href="#eng" aria-controls="eng" role="tab" data-toggle="tab">EN</a></li>
										</ul>
										<div class="x_panel_wrap">
										<div class="tab-content mt-4">
											<table class="table table-bordered">
												<colgroup>
													<col width="15%">
													<col width="35%">
													<col width="15%">
													<col width="35%">
												</colgroup>
												<tbody>
													<tr>
														<th>사업분야</th>
														<td colspan="3">
														<div class="checkboxes">
															<c:forEach var="entry" items="${sections_list}" varStatus="status">
															<label class="radio-inline">
																<input type="radio" onclick="return(false);" id="${entry.key}" value="${entry.key}" title="사업분야" data-title="사업분야를" ${entry.key==map.SECTIONS?'checked':''}> ${entry.value}
															</label>
															</c:forEach>
														</div>
														</td>
													</tr>
													<tr>
														<th>계열사명</th>
														<td>
															${map.NAME}
														</td>
														<th>계열사명 서브</th>
														<td>
															${map.NAME_SUB}
														</td>
													</tr>
												</tbody>
											</table>
											<%-- ! ANCHOR 한글  --%>
											<div role="tabpanel" class="tab-pane active" id="kor">
												<div class="x_title_sub">
													<h3>상단</h3>
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">계열사 로고*</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.LOGO}">
																			<div class="upload-display"><a href="${map.PATH}${map.LOGO }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.LOGO }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="LOGO" id="LOGO" ${empty map.LOGO?'required':''} class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="계열사 로고" data-title="계열사 로고를">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="LOGO" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하<br>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">계열사 로고 모바일</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.LOGO_MO}">
																			<div class="upload-display"><a href="${map.PATH}${map.LOGO_MO }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.LOGO_MO }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="LOGO_MO" id="LOGO_MO" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="계열사 로고" data-title="계열사 로고를">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="LOGO_MO" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하<br>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="TOP_BODY">상단 대표 텍스트 *</label>
													<textarea id="TOP_BODY" name="TOP_BODY" title="상단 대표 텍스트" data-title="상단 대표 텍스트를" class="form-control texteditor" style="resize: none; height: 150px;">${map.TOP_BODY}</textarea>
												</div>
												<div class="form-group">
													<label for="TOP_BODY_MO">상단 대표 텍스트 모바일</label>
													<textarea id="TOP_BODY_MO" name="TOP_BODY_MO" title="대표 텍스트 모바일" data-title="대표 텍스트 모바일을" class="form-control texteditor" style="resize: none; height: 150px;">${map.TOP_BODY_MO}</textarea>
												</div>

												<div class="form-group">
													<label for="YEAR">설립연도</label>
													<input type="text" name="YEAR" class="form-control"   title="설립연도" data-title="설립연도를" value="${map.YEAR}">
												</div>
												<div class="form-group">
													<label for="BUSINESS">사업영역</label>
													<input type="text" name="BUSINESS" class="form-control" maxlength="1000" title="사업영역 서브" data-title="사업영역 서브를" value="${map.BUSINESS}">
												</div>

												<div class="form-group">
													<label for="CEO">대표</label>
													<input type="text" name="CEO" class="form-control"  title="대표" data-title="대표를" value="${map.CEO}">
												</div>
												<div class="form-group">
													<label for="TOP_ADDR">주소</label>
													<input type="text" name="TOP_ADDR" class="form-control" maxlength="1000" title="주소" data-title="주소를" value="${map.TOP_ADDR}">
												</div>
												<div class="form-group">
													<label for="TOP_TEL">대표번호</label>
													<input type="text" name="TOP_TEL" class="form-control"  title="대표번호" data-title="대표번호를" value="${map.TOP_TEL}">
												</div>
												<div class="form-group">
													<label for="HOMEPAGE">홈페이지 URL</label>
													<input type="text" name="HOMEPAGE" class="form-control" maxlength="1000" title="홈페이지 URL" data-title="홈페이지 URL을" value="${map.HOMEPAGE}">
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">첫번째 콘텐츠 영역 이미지</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.CONTENT_IMGONE}">
																			<div class="upload-display"><a href="${map.PATH}${map.CONTENT_IMGONE }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.CONTENT_IMGONE }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="CONTENT_IMGONE" id="CONTENT_IMGONE" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="CONTENT_IMGONE" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하<br>
																		※ 권장사이즈 : 550 x 300
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="CONTENT_TITLEONE">첫번째 타이틀 영역 텍스트</label>
													<input type="text" name="CONTENT_TITLEONE" class="form-control" maxlength="1000" title="첫번째 타이틀 영역 텍스트" data-title="첫번째 타이틀 영역 텍스트를" value="${map.CONTENT_TITLEONE}">
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYONE">첫번째 콘텐츠 영역 텍스트</label>
													<textarea id="CONTENT_BODYONE" name="CONTENT_BODYONE" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYONE}</textarea>
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYONE_MO">첫번째 콘텐츠 영역 텍스트 모바일</label>
													<textarea id="CONTENT_BODYONE_MO" name="CONTENT_BODYONE_MO" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYONE_MO}</textarea>
												</div>
												<div class="form-group">
													<label for="CONTENT_IMGTWO">두번째 콘텐츠 영역 이미지</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.CONTENT_IMGTWO}">
																			<div class="upload-display"><a href="${map.PATH}${map.CONTENT_IMGTWO }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.CONTENT_IMGTWO }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="CONTENT_IMGTWO" id="CONTENT_IMGTWO" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="CONTENT_IMGTWO" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하<br>
																		※ 권장사이즈 : 550 x 300
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="CONTENT_TITLETWO">두번째 타이틀 영역 텍스트</label>
													<input type="text" name="CONTENT_TITLETWO" class="form-control"  title="두번째 타이틀 영역 텍스트" data-title="두번째 타이틀 영역 텍스트를" value="${map.CONTENT_TITLETWO}">
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYTWO">두번째 콘텐츠 영역 텍스트</label>
													<textarea id="CONTENT_BODYTWO" name="CONTENT_BODYTWO" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYTWO}</textarea>
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYTWO_MO">두번째 콘텐츠 영역 텍스트 모바일</label>
													<textarea id="CONTENT_BODYTWO_MO" name="CONTENT_BODYTWO_MO" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYTWO_MO}</textarea>
												</div>



												<div class="x_title_sub">
													<h3>하단</h3>
												</div>
												<div class="form-group">
													<label for="TITLE">콘텐츠 대 타이틀</label>
													<input type="text" name="TITLE" class="form-control" maxlength="1000" title="콘텐츠 대 타이틀" data-title="콘텐츠 대 타이틀를" value="${map.TITLE}">
												</div>
												
												<div class="x_panel_inline" id="bottom-contents-kr">
													<c:choose>
														<c:when test="${fn:length(mapConKr) > 0}">
															<c:forEach items="${mapConKr }" var="row" varStatus="status">
															<jsp:include page="sub_modify_contents.jsp">
																<jsp:param name="LANG" value="KR"/>
																<jsp:param name="NUM" value="${status.index+1}"/>
																<jsp:param name="CON_TITLE" value="${row.CON_TITLE}"/>
																<jsp:param name="CON_BODY" value="${row.CON_BODY}"/>
																<jsp:param name="CON_IMAGE" value="${row.CON_IMAGE}"/>
																<jsp:param name="CON_IMAGE_FULL" value="/upload/company/${row.CON_IMAGE}"/>
																<jsp:param name="CON_IMAGE_MO" value="${row.CON_IMAGE_MO}"/>
																<jsp:param name="CON_IMAGE_MO_FULL" value="/upload/company/${row.CON_IMAGE_MO}"/>
															</jsp:include>
															</c:forEach>
														</c:when>
														<c:otherwise>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="x_panel_plusminus">
													<div class="btns text-center">
														<a href="javascript:void(0);" data-lang="KR" class="btn btn-default con-plus"><i class="fa fa-plus"></i></a>
														<a href="javascript:void(0);" data-lang="KR" class="btn btn-default con-minus"><i class="fa fa-minus"></i></a>
													</div>
												</div>


												<div class="form-group" >
													<label for="STATUS_SUB">노출여부</label>
													<div id="btnset">
														<div id="STATUS_SUB" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default">
																<input type="radio" name="STATUS_SUB" value="Y" ${map.STATUS_SUB=='Y'?'checked="checked"':''}> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">
																<c:choose>
																	<c:when test="${empty map.STATUS_SUB}">
																	<input type="radio" name="STATUS_SUB" value="N" checked> 비공개
																	</c:when>
																	<c:otherwise>
																	<input type="radio" name="STATUS_SUB" value="N" ${map.STATUS_SUB=='N'?'checked="checked"':''}> 비공개
																	</c:otherwise>
																</c:choose>
															</label>
														</div>
													</div>
												</div>

											</div>
											<%-- ! ANCHOR 영문  --%>
											<div role="tabpanel" class="tab-pane" id="eng">
												<div class="x_title_sub">
													<h3>상단</h3>
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">영문 계열사 로고*</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.LOGO_EN}">
																			<div class="upload-display"><a href="${map.PATH}${map.LOGO_EN }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.LOGO_EN }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="LOGO_EN" id="LOGO_EN" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="LOGO_EN" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">영문 계열사 로고 모바일</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.LOGO_EN_MO}">
																			<div class="upload-display"><a href="${map.PATH}${map.LOGO_EN_MO }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.LOGO_EN_MO }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="LOGO_EN_MO" id="LOGO_EN_MO" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="로고" data-title="로고를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="LOGO_EN_MO" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="TOP_BODY_EN">영문 상단 대표 텍스트</label>
													<textarea id="TOP_BODY_EN" name="TOP_BODY_EN" title="영문 상단 대표 텍스트" data-title="영문 상단 대표 텍스트를" class="form-control texteditor" style="resize: none; height: 150px;">${map.TOP_BODY_EN}</textarea>
												</div>

												<div class="form-group">
													<label for="TOP_BODY_EN_MO">영문 상단 대표 텍스트 모바일</label>
													<textarea id="TOP_BODY_EN_MO" name="TOP_BODY_EN_MO" title="영문 상단 대표 텍스트 모바일" data-title="영문 상단 대표 텍스트 모바일를" class="form-control texteditor" style="resize: none; height: 150px;">${map.TOP_BODY_EN_MO}</textarea>
												</div>

												<div class="form-group">
													<label for="YEAR_EN">영문 설립연도</label>
													<input type="text" name="YEAR_EN" class="form-control"  title="설립연도" data-title="설립연도를" value="${map.YEAR_EN}">
												</div>
												<div class="form-group">
													<label for="BUSINESS_EN">영문 사업영역</label>
													<input type="text" name="BUSINESS_EN" class="form-control" maxlength="1000" title="사업영역 서브" data-title="사업영역 서브를" value="${map.BUSINESS_EN}">
												</div>

												<div class="form-group">
													<label for="CEO_EN">영문 대표</label>
													<input type="text" name="CEO_EN" class="form-control"  title="대표" data-title="대표를" value="${map.CEO_EN}">
												</div>
												<div class="form-group">
													<label for="TOP_ADDR_EN">영문 주소</label>
													<input type="text" name="TOP_ADDR_EN" class="form-control" maxlength="1000" title="주소" data-title="주소를" value="${map.TOP_ADDR_EN}">
												</div>
												<div class="form-group">
													<label for="TOP_TEL_EN">영문 대표번호</label>
													<input type="text" name="TOP_TEL_EN" class="form-control"  title="대표번호" data-title="대표번호를" value="${map.TOP_TEL_EN}">
												</div>
												<div class="form-group">
													<label for="HOMEPAGE_EN">영문 홈페이지 URL</label>
													<input type="text" name="HOMEPAGE_EN" class="form-control" maxlength="1000" title="홈페이지 URL" data-title="홈페이지 URL을" value="${map.HOMEPAGE_EN}">
												</div>
												<div class="form-group">
													<label for="DESCRIPTION">영문 첫번째 콘텐츠 영역 이미지</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.CONTENT_IMGONE_EN}">
																			<div class="upload-display"><a href="${map.PATH}${map.CONTENT_IMGONE_EN }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.CONTENT_IMGONE_EN }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="CONTENT_IMGONE_EN" id="CONTENT_IMGONE_EN" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="CONTENT_IMGONE_EN" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하<br>
																		※ 권장사이즈 : 550 x 300
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="CONTENT_TITLEONE_EN">영문 첫번째 타이틀 영역 텍스트</label>
													<input type="text" name="CONTENT_TITLEONE_EN" class="form-control" maxlength="1000" title="첫번째 타이틀 영역 텍스트" data-title="첫번째 타이틀 영역 텍스트를" value="${map.CONTENT_TITLEONE_EN}">
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYONE_EN">영문 첫번째 콘텐츠 영역 텍스트</label>
													<textarea id="CONTENT_BODYONE_EN" name="CONTENT_BODYONE_EN" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYONE_EN}</textarea>
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYONE_EN_MO">영문 첫번째 콘텐츠 영역 텍스트 모바일</label>
													<textarea id="CONTENT_BODYONE_EN_MO" name="CONTENT_BODYONE_EN_MO" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYONE_EN_MO}</textarea>
												</div>
												<div class="form-group">
													<label for="CONTENT_IMGTWO_EN">영문 두번째 콘텐츠 영역 이미지</label>
													<div class="file_panel">
														<div class="add_img_area">
															<ul class="file_area" data-group="file">
																<li class="item-file">
																	<c:choose>
																		<c:when test="${not empty map.CONTENT_IMGTWO_EN}">
																			<div class="upload-display"><a href="${map.PATH}${map.CONTENT_IMGTWO_EN }" class="upload-thumb-wrap imgpopup"><img src="${map.PATH}${map.CONTENT_IMGTWO_EN }" class="upload-thumb"></a></div>
																		</c:when>
																	</c:choose>
																	<div class="input-group">
																		<span class="input-group-btn hidden">
																			<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																		</span>
																		<input type="file" name="CONTENT_IMGTWO_EN" id="CONTENT_IMGTWO_EN" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
																		<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																		<span class="input-group-btn">
																			<label for="CONTENT_IMGTWO_EN" class="btn btn-dark"><i class="fa fa-upload"></i></label>
																		</span>
																	</div>
																	<div class="input-description">
																		※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하<br>
																		※ 권장사이즈 : 550 x 300
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="CONTENT_TITLETWO_EN">영문 두번째 타이틀 영역 텍스트</label>
													<input type="text" name="CONTENT_TITLETWO_EN" class="form-control" maxlength="1000" title="두번째 타이틀 영역 텍스트" data-title="두번째 타이틀 영역 텍스트를" value="${map.CONTENT_TITLETWO_EN}">
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYTWO_EN">영문 두번째 콘텐츠 영역 텍스트</label>
													<textarea id="CONTENT_BODYTWO_EN" name="CONTENT_BODYTWO_EN" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYTWO_EN}</textarea>
												</div>
												<div class="form-group">
													<label for="CONTENT_BODYTWO_EN_MO">영문 두번째 콘텐츠 영역 텍스트</label>
													<textarea id="CONTENT_BODYTWO_EN_MO" name="CONTENT_BODYTWO_EN_MO" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;">${map.CONTENT_BODYTWO_EN_MO}</textarea>
												</div>


												<div class="x_title_sub">
													<h3>하단</h3>
												</div>
												<div class="form-group">
													<label for="TITLE_EN">영문 콘텐츠 대 타이틀</label>
													<input type="text" name="TITLE_EN" class="form-control" maxlength="1000" title="콘텐츠 대 타이틀" data-title="콘텐츠 대 타이틀를" value="${map.TITLE_EN}">
												</div>

												<div class="x_panel_inline" id="bottom-contents-en">
													<c:choose>
														<c:when test="${fn:length(mapConEn) > 0}">
															<c:forEach items="${mapConEn }" var="row" varStatus="status">
															<jsp:include page="sub_modify_contents.jsp">
																<jsp:param name="LANG" value="EN"/>
																<jsp:param name="NUM" value="${status.index+1}"/>
																<jsp:param name="CON_TITLE" value="${row.CON_TITLE}"/>
																<jsp:param name="CON_BODY" value="${row.CON_BODY}"/>
																<jsp:param name="CON_IMAGE" value="${row.CON_IMAGE}"/>
																<jsp:param name="CON_IMAGE_FULL" value="/upload/company/${row.CON_IMAGE}"/>
																<jsp:param name="CON_IMAGE_MO" value="${row.CON_IMAGE_MO}"/>
																<jsp:param name="CON_IMAGE_MO_FULL" value="/upload/company/${row.CON_IMAGE_MO}"/>
															</jsp:include>
															</c:forEach>
														</c:when>
														<c:otherwise>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="x_panel_plusminus">
													<div class="btns text-center">
														<a href="javascript:void(0);" data-lang="EN" class="btn btn-default con-plus"><i class="fa fa-plus"></i></a>
														<a href="javascript:void(0);" data-lang="EN" class="btn btn-default con-minus"><i class="fa fa-minus"></i></a>
													</div>
												</div>


												<div class="form-group" >
													<label for="STATUS_SUB_EN">영문 노출여부</label>
													<div id="btnset">
														<div id="STATUS_SUB_EN" class="btn-group" data-toggle="buttons">
															<label class="btn btn-default">
																<input type="radio" name="STATUS_SUB_EN" value="Y" ${map.STATUS_SUB_EN=='Y'?'checked="checked"':''}> &nbsp; 공개 &nbsp;
															</label>
															<label class="btn btn-default">

																<c:choose>
																	<c:when test="${empty map.STATUS_SUB_EN}">
																	<input type="radio" name="STATUS_SUB_EN" value="N" checked> 비공개
																	</c:when>
																	<c:otherwise>
																	<input type="radio" name="STATUS_SUB_EN" value="N" ${map.STATUS_SUB_EN=='N'?'checked="checked"':''}> 비공개
																	</c:otherwise>
																</c:choose>
															</label>
														</div>
													</div>
												</div>

											</div>
										</div>
							            </div>
				                        <div class="ln_solid"></div>
										<div class="form-group">
											<a href="#write" onclick="javascript:doSubmit('write');" class="btn btn-info">수정하기</a>
											<a href="list.do" id="list" class="btn btn-primary">목록으로</a>
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

    </div>
    <div id="fileLoad"></div>
    <%@ include file="../include/script.jsp" %>
	<link href="/resource/assets/css/select/select2.min.css" rel="stylesheet">
	<script src="/resource/assets/js/select/select2.full.js"></script>
	<script src="/resource/assets/js/tags/jquery.tagsinput.min.js"></script>
	<script src="/resource/assets/js/forminp.js"></script>
	<script type="text/javascript" src="/resource/assets/js/uploadfile.js" charset="utf-8"></script>
	
	<form id="commonForm" name="commonForm" method="get"></form>

<script type="text/javascript" src="/resource/assets/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<!-- Smart Editor -->
<script type="text/javascript">

	var oEditors1 = [];
	var oEditors2 = [];
	var oEditors3 = [];
	var oEditors4 = [];
	var oEditors5 = [];
	var oEditors6 = [];
	var oEditors7 = [];
	var oEditors8 = [];
	var oEditors9 = [];
	var oEditors10 = [];
	var oEditors11 = [];
	var oEditors12 = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors1,
	    elPlaceHolder: "TOP_BODY",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors2,
	    elPlaceHolder: "TOP_BODY_EN",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors3,
	    elPlaceHolder: "CONTENT_BODYONE",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors4,
	    elPlaceHolder: "CONTENT_BODYONE_EN",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors5,
	    elPlaceHolder: "CONTENT_BODYTWO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors6,
	    elPlaceHolder: "CONTENT_BODYTWO_EN",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
 

	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors7,
	    elPlaceHolder: "TOP_BODY_MO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors8,
	    elPlaceHolder: "TOP_BODY_EN_MO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors9,
	    elPlaceHolder: "CONTENT_BODYONE_MO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors10,
	    elPlaceHolder: "CONTENT_BODYONE_EN_MO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors11,
	    elPlaceHolder: "CONTENT_BODYTWO_MO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors12,
	    elPlaceHolder: "CONTENT_BODYTWO_EN_MO",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
 

//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors1.getById["TOP_BODY"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors2.getById["TOP_BODY_EN"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors3.getById["CONTENT_BODYONE"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors4.getById["CONTENT_BODYONE_EN"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors5.getById["CONTENT_BODYTWO"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors6.getById["CONTENT_BODYTWO_EN"].exec("UPDATE_CONTENTS_FIELD", [ ]);
 
    oEditors7.getById["TOP_BODY_MO"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors8.getById["TOP_BODY_EN_MO"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors9.getById["CONTENT_BODYONE_MO"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors10.getById["CONTENT_BODYONE_EN_MO"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors11.getById["CONTENT_BODYTWO_MO"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors12.getById["CONTENT_BODYTWO_EN_MO"].exec("UPDATE_CONTENTS_FIELD", [ ]);

    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
	var ir1 = $("#TOP_BODY").val();
	var ir2 = $("#TOP_BODY_EN").val();
	var ir3 = $("#CONTENT_BODYONE").val();
	var ir4 = $("#CONTENT_BODYONE_EN").val();
	var ir5 = $("#CONTENT_BODYTWO").val();
	var ir6 = $("#CONTENT_BODYTWO_EN").val();
    
	var ir7 = $("#TOP_BODY_MO").val();
	var ir8 = $("#TOP_BODY_EN_MO").val();
	var ir9 = $("#CONTENT_BODYONE_MO").val();
	var ir10 = $("#CONTENT_BODYONE_EN_MO").val();
	var ir11 = $("#CONTENT_BODYTWO_MO").val();
	var ir12 = $("#CONTENT_BODYTWO_EN_MO").val();

	console.log('ir1',ir1);
	if( ir1 == ""  || ir1 == null || ir1 == '&nbsp;' || ir1 == '<p>&nbsp;</p>' || ir1 == '<br>')  {

    	alert("상단 대표 텍스트를 입력하세요.");

	    return false;	 
	}
	if( ir2 == ""  || ir2 == null || ir2 == '&nbsp;' || ir2 == '<p>&nbsp;</p>' || ir2 == '<br>')  {
	     if($("#TOP_BODY_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#TOP_BODY_EN").val('');
	     }
	}
	if( ir3 == ""  || ir3 == null || ir3 == '&nbsp;' || ir3 == '<p>&nbsp;</p>' || ir3 == '<br>')  {
	     if($("#CONTENT_BODYONE").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYONE").val('');
	     }
	}
	if( ir4 == ""  || ir4 == null || ir4 == '&nbsp;' || ir4 == '<p>&nbsp;</p>' || ir4 == '<br>')  {
	     if($("#CONTENT_BODYONE_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYONE_EN").val('');
	     }
	}
	if( ir5 == ""  || ir5 == null || ir5 == '&nbsp;' || ir5 == '<p>&nbsp;</p>' || ir5 == '<br>')  {
	     if($("#CONTENT_BODYONE").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYTWO").val('');
	     }
	}
	if( ir6 == ""  || ir6 == null || ir6 == '&nbsp;' || ir6 == '<p>&nbsp;</p>' || ir6 == '<br>')  {
	     if($("#CONTENT_BODYONE_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYTWO_EN").val('');
	     }
	}


	if( ir7 == ""  || ir7 == null || ir7 == '&nbsp;' || ir7 == '<p>&nbsp;</p>' || ir7 == '<br>')  {
	     if($("#TOP_BODY_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#TOP_BODY_EN").val('');
	     }
	}
	if( ir8 == ""  || ir8 == null || ir8 == '&nbsp;' || ir8 == '<p>&nbsp;</p>' || ir8 == '<br>')  {
	     if($("#TOP_BODY_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#TOP_BODY_EN").val('');
	     }
	}
	if( ir9 == ""  || ir9 == null || ir9 == '&nbsp;' || ir9 == '<p>&nbsp;</p>' || ir9 == '<br>')  {
	     if($("#CONTENT_BODYONE").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYONE").val('');
	     }
	}
	if( ir10 == ""  || ir10 == null || ir10 == '&nbsp;' || ir10 == '<p>&nbsp;</p>' || ir10 == '<br>')  {
	     if($("#CONTENT_BODYONE_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYONE_EN").val('');
	     }
	}
	if( ir11 == ""  || ir11 == null || ir11 == '&nbsp;' || ir11 == '<p>&nbsp;</p>' || ir11 == '<br>')  {
	     if($("#CONTENT_BODYONE").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYTWO").val('');
	     }
	}
	if( ir12 == ""  || ir12 == null || ir12 == '&nbsp;' || ir12 == '<p>&nbsp;</p>' || ir12 == '<br>')  {
	     if($("#CONTENT_BODYONE_EN").attr('required')){
	    	alert("내용을 입력하세요.");
		    
		    return false;	    	 
	     }else{
	    	 $("#CONTENT_BODYTWO_EN").val('');
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
	if(byid=='TOP_BODY'){
	oEditors1.getById[byid].exec("PASTE_HTML", [sHTML]);
	}else if(byid=='TOP_BODY_EN'){
	oEditors2.getById[byid].exec("PASTE_HTML", [sHTML]);
	}else if(byid=='CONTENT_BODYONE'){
	oEditors3.getById[byid].exec("PASTE_HTML", [sHTML]);
	}else if(byid=='CONTENT_BODYONE_EN'){
	oEditors4.getById[byid].exec("PASTE_HTML", [sHTML]);
	}else if(byid=='CONTENT_BODYTWO'){
	oEditors5.getById[byid].exec("PASTE_HTML", [sHTML]);
	}else if(byid=='CONTENT_BODYTWO_EN'){
	oEditors6.getById[byid].exec("PASTE_HTML", [sHTML]);
	}
 
}

</script>

<script>
(function($){
	var krInt = $('[name="krInt"]').val();
	var enInt = $('[name="enInt"]').val();
	
	
	if($('#bottom-contents-kr').find('.contents-inner-line').length>0){
		krInt++;
	}else{
		krInt++;
		contentsHTML('KR');
	}
	if($('#bottom-contents-en').find('.contents-inner-line').length>0){
		enInt++;
	}else{
		enInt++;
		contentsHTML('EN');	
	}

	$('.con-plus').click(function(){
		if($(this).data('lang')=='KR'){
			contentsHTML($(this).data('lang'));
		}else{
			contentsHTML($(this).data('lang'));
		}
	});
	$('.con-minus').click(function(){
		if($(this).data('lang')=='KR'){
			$('#bottom-contents-kr .contents-inner-line').last().remove();
		}else{
			$('#bottom-contents-en .contents-inner-line').last().remove();
		}
	});
	function contentsHTML(lang){
		var postData = {};
		postData['LANG'] = lang;
		if(lang=='KR'){
			postData['NUM'] = krInt;
		}else{
			postData['NUM'] = enInt;
		}
		$.ajax({ 
			type: 'post' , 
			data: postData,
			url: '/mgmt/company/sub_modify_contents.do' , 
			dataType : 'html' , 
			success: function(data) { 
				if(lang=='KR'){
					$("#bottom-contents-kr").append(data); 
					krInt++;
					$('[name=krInt]').val(krInt);
				}else{
					$("#bottom-contents-en").append(data);
					enInt++;
					$('[name=enInt]').val(enInt);
				}
				
			} 
		});
	}
	if($('[name=STATUS_SUB]')){
		$('[name=STATUS_SUB][value='+$('[name=STATUS_SUB]:checked').val()+']').parent().addClass('active');
	}
	if($('[name=STATUS_SUB_EN]')){
		$('[name=STATUS_SUB_EN][value='+$('[name=STATUS_SUB_EN]:checked').val()+']').parent().addClass('active');
	}
	
    $("#list").on("click", function(e){ //목록으로 버튼
        e.preventDefault();
        fn_openBoardList();
    });
     
    $("a[name^='delete']").on("click", function(e){ //파일 삭제 버튼
        e.preventDefault();
        fn_deleteFile($(this));
    });
    $("a[name='file']").on("click", function(e){ //파일 이름
        e.preventDefault();
        fn_downloadFile($(this));
    });
    $(".delete-file").click(function(){
    		var deleteFile = $(this);
		if(confirm("파일을 삭제하시겠습니까?")){
			$.post( "/mgmt/company/fileDelete.do", { FILE_IDX: $(this).data('seq') }).done(function( data ) {
				if(data.result=='ok'){
					if(deleteFile.parents('.add_img_area').find('.file_area').children('li').length<1){
						deleteFile.parents('.add_img_area').find('#btnAddFile2').click();
					}
					deleteFile.parents('.item-file').remove();
					alert('삭제 되었습니다.');
					
					//window.location.href="";
				}else{
					alert( "파일이 없거나 삭제된 파일입니다." );
				}
			}).fail(function() {
				alert( "관리자에게 문의하시기 바랍니다." );
			});
		}
    });
	if($('[data-manager]').length>0){
		$('[data-manager]').each(function(){
			$manager = $(this);
		    $.post( "/mgmt/board/fileDetail.do", { SLUG: $manager.data('manager') }).done(function( data ) {
				if(data.result=='ok'){
					/* if(data.map){
						$('#managerModal .modal-title').html(data.map.TITLE);
					} */
					if(data.files){
						//$manager.attr('href','/downloadFile.do?IDX='+data.files.IDX);
						$manager.attr('href',data.files.PATH_NAME+''+data.files.STORED_FILE_NAME);
						$('[data-manager-modify="'+$manager.data('manager')+'"]').attr('href','/mgmt/board/modify_slug.do?SLUG='+$manager.data('manager'));
					}
				}else{
					alert( "파일이 없거나 삭제된 파일입니다." );
				}
			}).fail(function() {
				alert( "관리자에게 문의하시기 바랍니다." );
				//$('#managerModal').modal('toggle');
			});
		});
	}
    
})(jQuery);

function doSubmit(frm){
	if(checkValidation(frm)){
		var submitHtml = true;
		submitHtml = submitContents($('form#'+frm));
		if(submitHtml){
			$('form#'+frm).submit();
		}
	}
}
         
function fn_openBoardList(){
    var comSubmit = new ComSubmit();
    comSubmit.setUrl("/mgmt/company/sub_list.do");
    comSubmit.addParam("currentPageNo", "${currentPageNo}");
	if("${!empty PID}"=="true"){
		comSubmit.addParam("PID", "${PID}");
	}
	if("${!empty target}"=="true"){
		comSubmit.addParam("target", "${target}");
	}
	if("${!empty keyword}"=="true"){
		comSubmit.addParam("keyword", "${keyword}");
	}
	if("${!empty param.GUBUN}"=="true"){
		comSubmit.addParam("GUBUN", "${param.GUBUN}");
	}
    comSubmit.submit();
}
function fn_downloadFile(obj){
    var comSubmit = new ComSubmit();
    comSubmit.setUrl("/downloadFile.do");
    comSubmit.addParam("IDX", obj.data("idx"));
    comSubmit.addParam("BOARD_NAME", "BOARD");
    comSubmit.submit();
}
</script>
</body>

</html>