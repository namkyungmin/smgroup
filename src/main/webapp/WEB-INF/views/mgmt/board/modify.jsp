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
				<div class="page-wrap page-list"data-menu="mgmt|board|pid|${PID }">
					<div class="page-title">
					    <div class="title_left">
							<h3>${category.DESCRIPTION } <small class="hidden">${category.SLUG}</small></h3>
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
					                <h2>${map.TITLE}<small>${map.NAME} <span>(${fn:substring(map.UPDA_DTM,0,10)})</small></h2>
					            	<div class="langright">
					            	</div>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content">
									<form id="write" action="/mgmt/board/modifyProc.do" method="post" encType="multipart/form-data">
								        <input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
										<input type="hidden" name="PID" value="${PID}">
										<input type="hidden" name="currentPageNo" value="${param.currentPageNo }">
										<input type="hidden" name="target" value="${param.target }">
										<input type="hidden" name="keyword" value="${param.keyword }">
										<c:if test="${not empty returnUrl }">
										<input type="hidden" name="returnUrl" value="${returnUrl }">
										</c:if>
										<c:choose>
									    <c:when test="${category.SLUG!='environment'&&category.SLUG!='responsibility'&&category.SLUG!='admininfo'}">
									    <div class="form-group">
									        <label name="LANG" for="TITLE">언어</label>
											<select name="LANG" class="form-control">
												<option value="KO" ${'KO'==map.LANG?'selected="selected"':'' }>한국어</option>
												<option value="EN" ${'EN'==map.LANG?'selected="selected"':'' }>영어</option>
											</select>
									    </div>
									    </c:when>
									    <c:otherwise>
									    <input type="hidden" name="LANG" value="KO">
									    </c:otherwise>
										</c:choose>
										
									    <c:if test="${category.SLUG=='popup'}">
									    <div class="form-group">
									        <label name="SECTION" for="SECTION">웹/모바일 선택</label>
											<select name="SECTION" class="form-control">
												<option value="ALL" ${'ALL'==map.SECTION?'selected="selected"':'' }>전체</option>
												<option value="WEB" ${'WEB'==map.SECTION?'selected="selected"':'' }>웹</option>
												<option value="MOBILE" ${'MOBILE'==map.SECTION?'selected="selected"':'' }>모바일</option>
											</select>
									    </div>
									    </c:if>
						            	<c:if test="${category.SLUG=='media'||category.SLUG=='news'||category.SLUG=='environment'||category.SLUG=='responsibility'}">
										<div class="form-group">
											<label for="SECTION">계열사명</label>
											<input type="text" name="SECTION" class="form-control" value="${map.SECTION}">
										</div>
										</c:if>
										<c:if test="${category.SLUG=='admininfo'}">
										<div class="form-group">
											<label for="SLUG">SLUG</label>
											<input type="text" name="SLUG" class="form-control" value="${map.SLUG}">
										</div>
										</c:if>
									    <c:if test="${fn:length(category.TYPES) > 0}">
										<div class="form-group">
											<label for="GUBUN">구분</label>
											<select name="GUBUN" class="form-control">
												<c:forTokens items="${category.TYPES}" delims="," var="item">
												<option value="${item}" ${item==map.GUBUN?'selected="selected"':'' }>${item}</option>
												</c:forTokens>
											</select>
										</div>
									    </c:if>
										<div class="form-group">
											<label name="title" for="title">제목</label>
											<input type="text" id="TITLE" name="TITLE" value="${fn:escapeXml(map.TITLE) }" class="form-control" required maxlength="100" title="제목" data-title="제목을">
										</div>
									    <c:if test="${category.SLUG=='sustainability'}">
									    <div class="form-group">
									        <label name="title" for="TITLE_SUB">서브 타이틀</label>
									        <input type="text" id="TITLE_SUB" name="TITLE_SUB" value="${fn:escapeXml(map.TITLE_SUB) }" class="form-control" maxlength="1000" title="제목" data-title="제목을">
									    </div>
									    </c:if>
										<c:choose>
										<c:when test="${category.CODE=='social'||category.SLUG=='social'||category.SLUG=='popup'}">
										<div class="form-group">
											<label for="VIDEO">URL</label>
									        <input type="text" name="VIDEO" class="form-control" value="${map.VIDEO }" maxlength="100">
										</div>
										</c:when>
										</c:choose>
										<c:if test="${category.SLUG=='popup'}">
									    <div class="form-group" >
									        <label for="RECOM">새창여부</label>
									        <div id="btnset">
					                            <div id="RECOM" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default">
					                                    <input type="radio" name="RECOM" value="Y" ${map.RECOM=='Y'?'checked="checked"':''}> &nbsp; 새창 &nbsp;
					                                </label>
					                                <label class="btn btn-default">
					                                    <input type="radio" name="RECOM" value="N" ${map.RECOM=='N'?'checked="checked"':''}> 현재창
					                                </label>
					                            </div>
									        </div>
									    </div>
										</c:if>
										<c:if test="${category.SLUG!='social'&&category.SLUG!='popup'&&category.SLUG!='admininfo'}">
									    <div class="form-group">
									        <label name="CONTENTS" for="body">내용</label>
									        <textarea id="CONTENTS" name="CONTENTS" class="form-control texteditor" style="resize: none; height: 300px;">${map.CONTENTS}</textarea>
									    </div>
									    <div class="form-group">
									        <label name="CONTENTS" for="body">모바일 내용 <small>(웹내용과 모바일 내용이 동일할 때 웹내용을 복사하여 모바일내용에 붙여넣기 해주세요.)</small></label>
									        <textarea id="CONTENTS_MOBILE" name="CONTENTS_MOBILE" class="form-control texteditor" style="resize: none; height: 300px;">${map.CONTENTS_MOBILE}</textarea>
									    </div>
									    </c:if>
									    <c:if test="${category.SLUG=='sustainability'}">
									    <div class="form-group">
									        <label name="title" for="TAGS">썸네일 노출 내용</label>
									        <textarea id=TAGS" name="TAGS" class="form-control" style="resize: none; height: 60px;">${map.TAGS}</textarea>
									    </div>
									    </c:if>
									    <c:if test="${category.SLUG=='gallery'}">
										<div class="form-group">
											<label for="VIDEO">VIDEO</label>
									        <input type="text" name="VIDEO" class="form-control" value="${map.VIDEO }" maxlength="100">
										</div>
										</c:if>
										
									    <c:if test="${category.CODE=='event'||category.SLUG=='popup'}">
									    <div class="form-group" >
									        <label for="MAINSTATUS">시작일 종료일 사용여부</label>
									        <div id="btnset">
					                            <div id="MAINSTATUS" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default">
					                                    <input type="radio" name="MAINSTATUS" value="Y" ${map.MAINSTATUS=='Y'?'checked="checked"':''}> &nbsp; 사용 &nbsp;
					                                </label>
					                                <label class="btn btn-default">
					                                    <input type="radio" name="MAINSTATUS" value="N" ${map.MAINSTATUS=='N'?'checked="checked"':''}> 사용안함
					                                </label>
					                            </div>
									        </div>
									    </div>
									    <div class="form-group">
									        <label name="title" for="START_DTM">시작일</label>
									        <div class="xdisplay_inputx form-group has-feedback">
										        <input type="text" name="START_DTM" class="form-control has-feedback-left" value="${map.START_DTM }"/>
										        <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
									        </div>
									    </div>
									    <div class="form-group">
									        <label name="title" for="END_DTM">종료일</label>
									        <div class="xdisplay_inputx form-group has-feedback">
										        <input type="text" name="END_DTM" class="form-control has-feedback-left" value="${map.END_DTM }"/>
										        <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
									        </div>
									    </div>
									    </c:if>
									    <c:if test="${category.SLUG=='media'||category.SLUG=='news'}">
									    <div class="form-group" >
									        <label for="RECOM">상단 노출여부</label>
									        <div id="btnset">
					                            <div id="RECOM" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default">
					                                    <input type="radio" name="RECOM" value="Y" ${map.RECOM=='Y'?'checked="checked"':''}> &nbsp; 공개 &nbsp;
					                                </label>
					                                <label class="btn btn-default">
					                                    <input type="radio" name="RECOM" value="N" ${map.RECOM=='N'?'checked="checked"':''}> 비공개
					                                </label>
					                            </div>
					                            &nbsp;&nbsp;
					                            <div id="status" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default ${map.SORT==0?'active':''}">
					                                    <input type="radio" name="SORT" value="0" ${map.SORT==0?'checked="checked"':''}> &nbsp; 비노출 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.SORT==1?'active':''}">
					                                    <input type="radio" name="SORT" value="1" ${map.SORT==1?'checked="checked"':''}> &nbsp; 1 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.SORT==2?'active':''}">
					                                    <input type="radio" name="SORT" value="2" ${map.SORT==2?'checked="checked"':''}> &nbsp; 2 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.SORT==3?'active':''}">
					                                    <input type="radio" name="SORT" value="3" ${map.SORT==3?'checked="checked"':''}> &nbsp; 3 &nbsp;
					                                </label>
					                            </div>
									        </div>
									    </div> 
									    <div class="form-group" >
									        <label for="status">메인 노출여부</label>
									        <div id="btnset">
					                            <div id="status" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default ${map.MAINSTATUS=='Y'?'active':''}">
					                                    <input type="radio" name="MAINSTATUS" value="Y" ${map.MAINSTATUS=='Y'?'checked="checked"':''}> &nbsp; 공개 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.MAINSTATUS=='N'?'active':''}">
					                                    <input type="radio" name="MAINSTATUS" value="N" ${map.MAINSTATUS=='N'?'checked="checked"':''}> 비공개
					                                </label>
					                            </div>
					                            &nbsp;&nbsp;
					                            <div id="MAINSORT" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default ${map.MAINSORT==0?'active':''}">
					                                    <input type="radio" name="MAINSORT" value="0" ${map.MAINSORT==0?'checked="checked"':''}> &nbsp; 비노출 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.MAINSORT==1?'active':''}">
					                                    <input type="radio" name="MAINSORT" value="1" ${map.MAINSORT==1?'checked="checked"':''}> &nbsp; 1 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.MAINSORT==2?'active':''}">
					                                    <input type="radio" name="MAINSORT" value="2" ${map.MAINSORT==2?'checked="checked"':''}> &nbsp; 2 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.MAINSORT==3?'active':''}">
					                                    <input type="radio" name="MAINSORT" value="3" ${map.MAINSORT==3?'checked="checked"':''}> &nbsp; 3 &nbsp;
					                                </label>
					                                
						                    		<c:choose>
			                    						<c:when test="${category.SLUG=='media'}">
						                                <label class="btn btn-default ${map.MAINSORT==4?'active':''}">
						                                    <input type="radio" name="MAINSORT" value="4" ${map.MAINSORT==4?'checked="checked"':''}> &nbsp; 4 &nbsp;
						                                </label>
			                    						</c:when>
			                    					</c:choose>
					                            </div>
									        </div>
									    </div>
									    </c:if>
									    <div class="form-group" >
									    <c:choose>
									    <c:when test="${category.SLUG=='media'||category.SLUG=='news'}">
									        <label for="STATUS">하단 노출여부</label>
									    </c:when>
									    <c:otherwise>
									    <label for="STATUS">노출여부</label>
									    </c:otherwise>
									    </c:choose>
									        <div id="btnset">
					                            <div id="status" class="btn-group" data-toggle="buttons">
					                                <label class="btn btn-default">
					                                    <input type="radio" name="STATUS" value="Y" ${map.STATUS=='Y'?'checked="checked"':''}> &nbsp; 공개 &nbsp;
					                                </label>
					                                <label class="btn btn-default">
					                                    <input type="radio" name="STATUS" value="N" ${map.STATUS=='N'?'checked="checked"':''}> 비공개
					                                </label>
					                            </div>
									        </div>
									    </div>
									    <div class="form-group">
									        <label name="title" for="UPDA_DTM">배포일 <small>소팅으로 사용 (일자가 최근일수록 최신 게시물)</small></label>
									        <div class="xdisplay_inputx form-group has-feedback">
										        <input type="text" name="UPDA_DTM" class="form-control has-feedback-left" value="${map.UPDA_DTM }"/>
										        <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
									        </div>
									    </div>
										<c:if test="${fn:length(category.IMAGES) > 0}">
										<div class="row fileupload-wrap">
									        <div class="col-md-6 col-xs-12">
							            			<c:forTokens items="${category.IMAGES}" delims="," var="item">
							            			<c:set var="itemName" value="${item }" />
						                    		<c:choose>
						                    			<c:when test="${item == 'thumb'}">
						                    			<c:set var="itemTitle" value="썸네일" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:when test="${item == 'file'}">
						                    			<c:set var="itemTitle" value="파일" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" />
						                    			</c:when>
						                    			<c:when test="${item == 'gallery'}">
						                    			<c:set var="itemTitle" value="이미지" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:when test="${item == 'slide'}">
						                    			<c:set var="itemTitle" value="슬라이드" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:when test="${item == 'main'}">
						                    			<c:set var="itemTitle" value="메인  썸네일" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:otherwise>
						                    			<c:set var="itemTitle" value="${item}" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" />
						                    			</c:otherwise>
						                    		</c:choose>
												<div class="x_panel">
									                <div class="x_title">
									                    <h2>웹 ${itemTitle }
									                    		<c:choose>
						                    						<c:when test="${item=='main' && category.SLUG=='news'}">
						                    						<small>330x330</small>
						                    						</c:when>
						                    						<c:when test="${item=='thumb' && category.SLUG=='news'}">
						                    						<small>684x376</small>
						                    						</c:when>
						                    						<c:when test="${item=='main' && category.SLUG=='media'}">
						                    						<small>260x168</small>
						                    						</c:when>
						                    						<c:when test="${item=='thumb' && category.SLUG=='media'}">
						                    						<small>668x376</small>
						                    						</c:when>
																	<c:when test="${item=='thumb' && (category.SLUG=='sustainability'||category.SLUG=='environment'||category.SLUG=='responsibility')}">
																	<small>334 x 450</small>
																	</c:when>
						                    						<c:when test="${item=='thumb' && category.SLUG=='social'}">
						                    						<small>유튜브 : 525 x 315, 페이스북/인스타그램 : 334 x 167</small>
						                    						</c:when>
																	<c:when test="${item=='thumb' && category.SLUG=='popup'}">
																	<small>326 x 489 </small>
																	</c:when>
						                    						<c:otherwise>
						                    						<small></small>
						                    						</c:otherwise>
						                    					</c:choose>
									                    		
									                    	</h2>
									                    <div class="clearfix"></div>
									                </div>
									                <div class="x_content add_img_area">
									                    <br>
												        <ul class="file_area" data-group="${itemName}">
												        <c:choose>
												        		<c:when test="${fn:length(files[itemName])>0}">
													        		<c:forEach var="row" items="${files[itemName] }" varStatus="var">
																	<li class="item-file">
												        					<c:choose>
												        					<c:when test="${item=='file' }">
																		<div class="upload-display"><div class="upload-thumb-wrap"><i class="fa fa-file-o"></i></div></div>
												        					</c:when>
												        					<c:otherwise>
																		<div class="upload-display"><a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" class="upload-thumb-wrap imgpopup"><img src="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" class="upload-thumb"></a></div>
												        					</c:otherwise>
												        					</c:choose>
																		<div class="input-group">
																			<span class="input-group-btn">
																				<button type="button" data-seq="${row.IDX }" class="btn btn-primary delete-file"><i class="fa fa-close"></i></button>
																			</span>
																			<input type="hidden" id="${itemName}IDX" name="${itemName}IDX_${var.index }" value="${row.IDX }">
																			<input type="file" name="${itemName}_${var.index }" id="${itemName}_${var.index }" class="upload-hidden" accept="${itemAccept }" title="썸네일 이미지" data-title="썸네일 이미지를">
																			<input type="text" class="form-control upload-name" value="${row.ORIGINAL_FILE_NAME }" placeholder="업로드" readonly="readonly">
																			<span class="input-group-btn">
											                                     <label for="${itemName}_${var.index }" class="btn btn-dark"><i class="fa fa-upload"></i></label>
											                                 </span>
																		</div>
																    </li>
													        		</c:forEach>
												        		</c:when>
													        	<c:otherwise>
																	<li class="item-file">
																		<div class="input-group">
																			<span class="input-group-btn hidden">
																				<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																			</span>
																			<input type="file" name="${itemName}_0" id="${itemName}_0" class="upload-hidden" accept="${itemAccept }" <%-- ${itemName=="thumb"?'required':''} --%> title="${itemTitle }" data-title="${itemTitle }를(을)">
																			<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																			<span class="input-group-btn">
											                                     <label for="${itemName}_0" class="btn btn-dark"><i class="fa fa-upload"></i></label>
											                                 </span>
																		</div>
																    </li>
															</c:otherwise>
												        	</c:choose>
														</ul>
														<c:if test="${category.SLUG!='admininfo' }">
														<div class="ln_solid"></div>
														<div class="form-group">
									                          <button type="button" id="btnAddFile2" class="btn btn-success">파일 추가</button>
									                      </div>
									                    </c:if>
									                </div>
									            </div>
												</c:forTokens>
							            		</div>
							            		<c:if test="${category.SLUG!='admininfo' }">
									        <div class="col-md-6 col-xs-12">
							            			<c:forTokens items="${category.IMAGES}" delims="," var="item">
							            			<c:set var="itemName" value="mob${item }" />
						                    		<c:choose>
						                    			<c:when test="${item == 'thumb'}">
						                    			<c:set var="itemTitle" value="썸네일" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:when test="${item == 'file'}">
						                    			<c:set var="itemTitle" value="파일" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" />
						                    			</c:when>
						                    			<c:when test="${item == 'gallery'}">
						                    			<c:set var="itemTitle" value="이미지" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:when test="${item == 'slide'}">
						                    			<c:set var="itemTitle" value="슬라이드" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:when test="${item == 'main'}">
						                    			<c:set var="itemTitle" value="메인  썸네일" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png" />
						                    			</c:when>
						                    			<c:otherwise>
						                    			<c:set var="itemTitle" value="${item}" />
						                    			<c:set var="itemAccept" value=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" />
						                    			</c:otherwise>
						                    		</c:choose>
												<div class="x_panel">
									                <div class="x_title">
									                    <h2>모바일 ${itemTitle }
									                    		<c:choose>
						                    						<c:when test="${item=='main' && category.SLUG=='news'}">
						                    						<small>330x330</small>
						                    						</c:when>
						                    						<c:when test="${item=='thumb' && category.SLUG=='news'}">
						                    						<small>684x376</small>
						                    						</c:when>
						                    						<c:when test="${item=='main' && category.SLUG=='media'}">
						                    						<small>260x168</small>
						                    						</c:when>
						                    						<c:when test="${item=='thumb' && category.SLUG=='media'}">
						                    						<small>668x376</small>
						                    						</c:when>
																	<c:when test="${item=='thumb' && (category.SLUG=='sustainability'||category.SLUG=='environment'||category.SLUG=='responsibility')}">
																	<small>650 x 600</small>
																	</c:when>
																	<c:when test="${item=='thumb' && category.SLUG=='popup'}">
																	<small>326 x 489 </small>
																	</c:when>
						                    						<c:otherwise>
						                    						<small></small>
						                    						</c:otherwise>
						                    					</c:choose>
									                    	</h2>
									                    <div class="clearfix"></div>
									                </div>
									                <div class="x_content add_img_area">
									                    <br>
												        <ul class="file_area" data-group="${itemName}">
												        <c:choose>
												        		<c:when test="${fn:length(mobfiles[itemName])>0}">
													        		<c:forEach var="row" items="${mobfiles[itemName] }" varStatus="var">
																	<li class="item-file">
												        					<c:choose>
												        					<c:when test="${item=='file' }">
																		<div class="upload-display"><div class="upload-thumb-wrap"><i class="fa fa-file-o"></i></div></div>
												        					</c:when>
												        					<c:otherwise>
																		<div class="upload-display"><a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" class="upload-thumb-wrap imgpopup"><img src="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" class="upload-thumb"></a></div>
												        					</c:otherwise>
												        					</c:choose>
																		<div class="input-group">
																			<span class="input-group-btn">
																				<button type="button" data-seq="${row.IDX }" class="btn btn-primary delete-file"><i class="fa fa-close"></i></button>
																			</span>
																			<input type="hidden" id="${itemName}IDX" name="${itemName}IDX_${var.index }" value="${row.IDX }">
																			<input type="file" name="${itemName}_${var.index }" id="${itemName}_${var.index }" class="upload-hidden" accept="${itemAccept }" title="썸네일 이미지" data-title="썸네일 이미지를">
																			<input type="text" class="form-control upload-name" value="${row.ORIGINAL_FILE_NAME }" placeholder="업로드" readonly="readonly">
																			<span class="input-group-btn">
											                                     <label for="${itemName}_${var.index }" class="btn btn-dark"><i class="fa fa-upload"></i></label>
											                                 </span>
																		</div>
																    </li>
													        		</c:forEach>
												        		</c:when>
													        	<c:otherwise>
																	<li class="item-file">
																		<div class="input-group">
																			<span class="input-group-btn hidden">
																				<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
																			</span>
																			<input type="file" name="${itemName}_0" id="${itemName}_0" class="upload-hidden" accept="${itemAccept }" <%-- ${itemName=="thumb"?'required':''} --%> title="${itemTitle }" data-title="${itemTitle }를(을)">
																			<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
																			<span class="input-group-btn">
											                                     <label for="${itemName}_0" class="btn btn-dark"><i class="fa fa-upload"></i></label>
											                                 </span>
																		</div>
																    </li>
															</c:otherwise>
												        	</c:choose>
														</ul>
														<div class="ln_solid"></div>
														<div class="form-group">
									                          <button type="button" id="btnAddFile2" class="btn btn-success">파일 추가</button>
									                      </div>
									                </div>
									            </div>
												</c:forTokens>
							            		</div>
							            </c:if>
							            </div>
							            </c:if>
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
<c:if test="${category.HTML=='Y'&&category.SLUG!='social'&&category.SLUG!='popup'&&category.SLUG!='admininfo'}">
<script type="text/javascript" src="/resource/assets/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<!-- Smart Editor -->
<script type="text/javascript">

	var oEditors1 = [];
	var oEditors2 = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors1,
	    elPlaceHolder: "CONTENTS",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors2,
	    elPlaceHolder: "CONTENTS_MOBILE",
	    sSkinURI: "/resource/assets/editor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
 
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors1.getById["CONTENTS"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    oEditors2.getById["CONTENTS_MOBILE"].exec("UPDATE_CONTENTS_FIELD", [ ]);
 
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
	var ir1 = $("#CONTENTS").val();
	var ir2 = $("#CONTENTS_MOBILE").val();
    
	if( ir1 == ""  || ir1 == null || ir1 == '&nbsp;' || ir1 == '<p>&nbsp;</p>' || ir1 == '<br>')  {
	     if($("#CONTENTS").attr('required')){
	    	alert("내용을 입력하세요.");
		    oEditors1.getById["ir1"].exec("FOCUS"); //포커싱
		    return false;	    	 
	     }else{
	    	 $("#CONTENTS").val('');
	     }
	}
	if( ir2 == ""  || ir2 == null || ir2 == '&nbsp;' || ir2 == '<p>&nbsp;</p>' || ir2 == '<br>')  {
	     if($("#CONTENTS_MOBILE").attr('required')){
	    	alert("내용을 입력하세요.");
		    oEditors2.getById["ir2"].exec("FOCUS"); //포커싱
		    return false;	    	 
	     }else{
	    	 $("#CONTENTS_MOBILE").val('');
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
 if(byid=='CONTENTS'){
	oEditors1.getById[byid].exec("PASTE_HTML", [sHTML]);
 }else{
 	oEditors2.getById[byid].exec("PASTE_HTML", [sHTML]);
 }
 
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
	 <c:if test="${category.SLUG!='popup'}">
	$('[name=MAINSTATUS]').change(function(){
		if(main_count>0){
			if($(this).val()=='Y'){
				if(!confirm('이미 메인에 공지된 게시글이 있습니다. 변경하시겠습니까?')){
					$(this).val('N');
				}
			}
		}
	});
	</c:if>
	$('[name=MAINSTATUS][value='+$('[name=MAINSTATUS]:checked').val()+']').parent().addClass('active');
	$('[name=STATUS][value='+$('[name=STATUS]:checked').val()+']').parent().addClass('active');
	if($('[name=RECOM]')){
		$('[name=RECOM][value='+$('[name=RECOM]:checked').val()+']').parent().addClass('active');
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
			$.post( "/mgmt/board/fileDelete.do", { FILE_IDX: $(this).data('seq') }).done(function( data ) {
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
    
    <c:if test="${not empty param.ALERT }">
    alert('${param.ALERT}')
    </c:if>
})(jQuery);
function doSubmit(frm){
	if(checkValidation(frm)){
		var submitHtml = true;
		<c:if test="${category.HTML=='Y'&&category.SLUG!='social'&&category.SLUG!='popup'&&category.SLUG!='admininfo'}">
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
			$('form#'+frm).submit();
		}
	}
}
         
function fn_openBoardList(){
    var comSubmit = new ComSubmit();
    comSubmit.setUrl("/mgmt/board/list.do");
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
    comSubmit.setUrl("/common/downloadFile.do");
    comSubmit.addParam("IDX", obj.data("idx"));
    comSubmit.addParam("BOARD_NAME", "BOARD");
    comSubmit.submit();
}
</script>
</body>

</html>