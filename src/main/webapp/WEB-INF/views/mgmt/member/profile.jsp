<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><c:set var="req" value="${pageContext.request}" />
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../include/head.jsp" %>
</head>
<form id="golfReservForm" name="golfReservForm" method="post">
    <input type="hidden" id="gPageIndex1" name="gPageIndex1" value="${glofReservationVO.pageIndex1}"/>
    <input type="hidden" id="gPageIndex2" name="gPageIndex2" value="${glofReservationVO.pageIndex2}"/>
    <input type="hidden" id="memberName" name="memberName" value="${memberName}">
    <input type="hidden" id="memberCd" name="memberCd" value="${condoVO.memberCd}">
</form>

<!-- 콘도 객실 예약 -->
<form:form commandName="condoReservationVO" id="condoReservForm" name="condoReservForm" method="post" >
    <input type="hidden" id="pageIndex1" name="pageIndex1" value="${condoVO.pageIndex1}"/>
    <input type="hidden" id="pageIndex2" name="pageIndex2" value="${condoVO.pageIndex2}"/>
    <input type="hidden" id="memberNo" name="memberNo" value="${condoVO.memberNo}">
	<input type="hidden" id="memberName" name="memberName" value="${memberName}">
</form:form>

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
				<div class="page-wrap page-profile"  data-menu="mgmt|member">
					<div class="page-title">
						<div class="title_left">
							<h3>회원 상세<small></small></h3>
						</div>
						<div class="title_right">
							<div class="col-md-5 col-sm-6 col-xs-12 form-group pull-right top_search">
								<form name="frmSearch" action="/mgmt/admin/list.do">
									<input type="hidden" name="lang" value=""/>
									<input type="hidden" name="target" value="all"/>
									<div class="input-group">
										<input type="text" name="keyword" class="form-control" id="txt" value="${keyword}" placeholder="검색어 입력" />
										<span class="input-group-btn">
											<button class="btn btn-default" type="submit">Go!</button>
										</span>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					
					<div class="row">
					
					    <div class="col-md-12 col-sm-12 col-xs-12">
					        <div class="x_panel">
					            <div class="x_title">
					                <h2>${member.MEMBER_NAME }<small>[#: ${member.MEMBER_NO }] <span>( 회원 아이디: ${member.ID } )</small></h2>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content">
									<ul class="list-unstyled timeline">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>핸드폰 번호</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title">${member.HANDPHONE1 }-${member.HANDPHONE2 }-${member.HANDPHONE3 }</h2>
									                
									            </div>
									        </div>
									    </li>
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>이메일</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title">${member.EMAIL }</h2>
									                
									            </div>
									        </div>
									    </li>
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>주소</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title">
				                                    
													<c:choose>
														<c:when test="${memberView.POST_WHERE=='2'}">
														(${member.COMPANY_ZIP_CD1 }${member.COMPANY_ZIP_CD2 }) ${member.COMPANY_ADDR1 } ${member.COMPANY_ADDR2 }
														</c:when>
														<c:otherwise>
														(${member.HOME_ZIP_CD1 }${member.HOME_ZIP_CD2 }) ${member.HOME_ADDR1 } ${member.HOME_ADDR2 }				
														</c:otherwise>
													</c:choose>
												
				                                    
				                                    </h2>
									                
									            </div>
									        </div>
									    </li>
									</ul>
									<div class="x_panel">
										<div class="x_title">
						                    <h2>- 객실 예약 현황</h2>
						                    <div class="clearfix"></div>
						                 </div>
										<div class="x_content">
										<table class="table table-hover on">
											<colgroup>
												<col width="78px" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>주중/주말</th>
													<th>입실일</th>
													<th>퇴실일</th>
													<th>숙박일 수</th>
													<th>객실명</th>
													<th>객실타입</th>
													<th>예약 현황</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${!empty condoList}">
														<c:forEach items="${condoList}" var="list" varStatus="status">
															<tr>
																<td><c:out value="${paginationInfo1.totalRecordCount+1 - ((condoVO.pageIndex1-1) * condoVO.pageSize + status.count)}"/></td>
																<td>
																	<c:choose>
																		<c:when test="${list.dayKind eq '1'}">
																			주중
																		</c:when>
																		<c:when test="${list.dayKind eq '2' }">
																			주말
																		</c:when>
																		<c:when test="${list.dayKind eq '3' }">
																			성수기
																		</c:when>
																	</c:choose>
																</td>
																<td>
																	<c:if test="${!empty list.checkIn}">
																		${fn:substring(list.checkIn,0,4)}.${fn:substring(list.checkIn,4,6)}.${fn:substring(list.checkIn,6,9)}(${list.dateNm})
																	</c:if>
																</td>
																<td>
																	<c:if test="${!empty list.checkOut}">
																		${fn:substring(list.checkOut,0,4)}.${fn:substring(list.checkOut,4,6)}.${fn:substring(list.checkOut,6,9)}(${list.dateEndNm})
																	</c:if>
																</td>
																<td>${list.fewDay}박</td>
																<td>${list.pyusuName}</td>
																<td>${list.pyusuGubun}</td>
																<td>
																<c:choose>
																	<c:when test="${list.chkinYn eq 'N'}">
																		예약 완료
																	</c:when>
																	<c:otherwise>
																		이용 완료
																	</c:otherwise>
																</c:choose>
																</td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="9">등록된 예약이  없습니다.</td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
											<tfoot>
												<td colspan="8">
													<div class="pull-right">
														<ul class="pagination">
													    <c:if test="${not empty paginationInfo1}">
													        <ui:pagination paginationInfo = "${paginationInfo1}" type="image" jsFunction="fnCondoLinkPage1" />
													    </c:if>
													    </ul>
													    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
													</div>
													
												</td>
											</tfoot>
										</table>
							            </div>
							        </div>
									<div class="x_panel">
										<div class="x_title">
						                    <h2>- 객실 접수 현황</h2>
						                    <div class="clearfix"></div>
						                 </div>
							            <div class="x_content">
							            <table class="table table-hover">
											<colgroup>
												<col width="78px" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>주중/주말</th>
													<th>입실일</th>
													<th>퇴실일</th>
													<th>숙박일 수</th>
													<th>객실명</th>
													<th>객실타입</th>
													<th>접수 현황</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${!empty condoLotList}">
														<c:forEach items="${condoLotList}" var="list" varStatus="status">
															<tr>
																<td><c:out value="${paginationInfo2.totalRecordCount+1 - ((condoVO.pageIndex2-1) * condoVO.pageSize + status.count)}"/></td>
																<td>
																	<c:choose>
																		<c:when test="${list.dayKind eq '1'}">
																			주중
																		</c:when>
																		<c:when test="${list.dayKind eq '2' }">
																			주말
																		</c:when>
																		<c:when test="${list.dayKind eq '3' }">
																			성수기
																		</c:when>
																	</c:choose>
																</td>
																<td>
																	<c:if test="${!empty list.checkIn}">
																		${fn:substring(list.checkIn,0,4)}.${fn:substring(list.checkIn,4,6)}.${fn:substring(list.checkIn,6,9)}(${list.dateNm})
																	</c:if>
																</td>
																<td>
																	<c:if test="${!empty list.checkOut}">
																		${fn:substring(list.checkOut,0,4)}.${fn:substring(list.checkOut,4,6)}.${fn:substring(list.checkOut,6,9)}(${list.dateEndNm})
																	</c:if>
																</td>
																<td>${list.fewDay}박</td>
																<td>${list.pyusuName}</td>
																<td>${list.pyusuGubun}</td>
																<td class="accepting">
																	<c:choose>
																		<c:when test="${list.stateGbn eq 'WAIT'}">
																			대기중
																		</c:when>
																		<c:when test="${list.stateGbn eq 'OUT'}">
																			다음 기회에
																		</c:when>
																		<c:when test="${list.stateGbn eq 'SELECTED'}">
																			확정
																		</c:when>
																		<c:when test="${list.stateGbn eq 'AVAIL'}">
																			접수중
																		</c:when>
																		<c:when test="${list.stateGbn eq 'END'}">
																			접수완료
																		</c:when>
																	</c:choose>
																</td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="9">등록된 예약이  없습니다.</td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
											<tfoot>
												<td colspan="8">
													<div class="pull-right">
														<ul class="pagination">
							                         <c:if test="${condoLotCnt != 0}">
							                             <ui:pagination paginationInfo = "${paginationInfo2}" type="image" jsFunction="fnCondoLinkPage2" />
							                         </c:if>
													    </ul>
													    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
													</div>
													
												</td>
											</tfoot>
										</table>
							            </div>
							        </div>
									<div class="x_panel">
										<div class="x_title">
						                    <h2>- 골프 예약 현황</h2>
						                    <div class="clearfix"></div>
						                 </div>
							            <div class="x_content">
							            
										 <table class="table table-hover on">
											<colgroup>
												<col width="78px" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>주중/주말</th>
													<th>라운딩 날짜</th>
													<th>라운딩 시간</th>
													<th>코스</th>
													<th>홀</th>
													<th>예약 현황</th>
												</tr>
											</thead>
											<tbody>
						                    <c:choose>
						                            <c:when test="${!empty myGolftList}">
						                                <c:forEach items="${myGolftList}" var="result" varStatus="status">
						                                 <c:set var="dayname" value=""/>
						                                  <c:choose>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '1'}">
						                                         <c:set var="dayname" value="일"/>
						                                     </c:when>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '2'}">
						                                         <c:set var="dayname" value="월"/>
						                                     </c:when>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '3'}">
						                                         <c:set var="dayname" value="화"/>
						                                     </c:when>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '4'}">
						                                         <c:set var="dayname" value="수"/>
						                                     </c:when>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '5'}">
						                                         <c:set var="dayname" value="목"/>
						                                     </c:when>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '6'}">
						                                         <c:set var="dayname" value="금"/>
						                                     </c:when>
						                                     <c:when test = "${result.BOOKG_DATE_WD eq '7'}">
						                                         <c:set var="dayname" value="토"/>
						                                     </c:when>
						                                 </c:choose>
						                                    <tr>
						                                        <td><c:out value="${golfpaginationInfo1.totalRecordCount+1 - ((glofReservationVO.gPageIndex1-1) * glofReservationVO.pageSize + status.count)}"/></td>
						                                        <td><c:out value="${result.OPEN0_YN_NM}"/></td>
						                                        <td><c:out value="${fn:substring(result.BOOKG_DATE,0,4)}."/>
						                                               <c:out value="${fn:substring(result.BOOKG_DATE,4,6)}."/>
						                                               <c:out value="${fn:substring(result.BOOKG_DATE,6,9)}"/>(<c:out value="${dayname}"/>)</td>
						                                        <td><c:out value="${fn:substring(result.BOOKG_TIME,0,2)}:"/><c:out value="${fn:substring(result.BOOKG_TIME,2,4)}"/></td>
						                                        <td>
						                                        	${result.BOOKG_COURSE_NM}
						                                        </td>
						                                        <td><c:out value="${result.HOLE_GUBUN}"/></td>
						                                        <td class="complete">예약 완료</td>
						                                    </tr>
						                                 </c:forEach>
						                            </c:when>
						                            <c:otherwise>
						                                 <tr>
						                                    <td colspan="9">등록된 예약이  없습니다.</td>
						                                 </tr>
						                            </c:otherwise>
						                   </c:choose>
											</tbody>
											<tfoot>
												<td colspan="8">
													<div class="pull-right">
														<ul class="pagination">
							                            <c:if test="${golfCnt != 0}">
							                                <ui:pagination paginationInfo = "${golfpaginationInfo1}" type="image" jsFunction="fnGolfLinkPage1" />
							                            </c:if>
													    </ul>
													    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
													</div>
													
												</td>
											</tfoot>
										</table>
										</div>
									</div>
									
									<div class="x_panel">
										<div class="x_title">
						                    <h2>- 골프 접수 현황</h2>
						                    <div class="clearfix"></div>
						                 </div>
							            <div class="x_content">
							            
										
										<table class="table table-hover">
											<colgroup>
												<col width="78px" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
												<col width="*" />
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>주중/주말</th>
													<th>희망 라운딩 날짜</th>
													<th>희망 라운딩 시간 1</th>
													<th>희망 라운딩 시간 2</th>
													<th>홀</th>
													<th>접수 현황</th>
												</tr>
											</thead>
											<tbody>
						                    
						                    <c:choose>
						                            <c:when test="${!empty myLotGolftList}">
						                                   <c:forEach items="${myLotGolftList}" var="result" varStatus="status">
						                                     <c:set var="dayname" value=""/>
						                                      <c:choose>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '1'}">
						                                             <c:set var="dayname" value="일"/>
						                                         </c:when>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '2'}">
						                                             <c:set var="dayname" value="월"/>
						                                         </c:when>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '3'}">
						                                             <c:set var="dayname" value="화"/>
						                                         </c:when>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '4'}">
						                                             <c:set var="dayname" value="수"/>
						                                         </c:when>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '5'}">
						                                             <c:set var="dayname" value="목"/>
						                                         </c:when>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '6'}">
						                                             <c:set var="dayname" value="금"/>
						                                         </c:when>
						                                         <c:when test = "${result.BOOKG_DATE_WD eq '7'}">
						                                             <c:set var="dayname" value="토"/>
						                                         </c:when>
						                                     </c:choose>
						                                        <tr>
						                                            <td><c:out value="${golfpaginationInfo2.totalRecordCount+1 - ((glofReservationVO.gPageIndex2-1) * glofReservationVO.pageSize + status.count)}"/></td>
						                                            <td><c:out value="${result.OPEN0_YN_NM}"/></td>
						                                            <td><c:out value="${fn:substring(result.WAIT_DATE,0,4)}."/>
						                                                   <c:out value="${fn:substring(result.WAIT_DATE,4,6)}."/>
						                                                   <c:out value="${fn:substring(result.WAIT_DATE,6,9)}"/>(<c:out value="${dayname}"/>)</td>
						                                            <td>
						                                            <c:out value="${result.REQ_TIME1_NM}"/>
						                                            </td>
						                                            <td>
						                                                 <c:choose>
						                                                    <c:when test="${result.REQ_TIME2_NM eq null}">선택하지 않음</c:when>
						                                                    <c:otherwise><c:out value="${result.REQ_TIME2_NM}"/></c:otherwise>
						                                                </c:choose>
						                                            </td>
						                                            <td>18홀</td>
						                                            <td class="accepting">
						                                                 <c:choose>
						                                                    <c:when test="${result.STATE_GBN  eq 'SELECTED'}">확정</c:when>
						                                                    <c:when test="${result.STATE_GBN  eq 'WAIT'}">접수중</c:when>
						                                                    <c:when test="${result.STATE_GBN  eq 'OUT'}">탈락</c:when>
						                                                    <c:when test="${result.STATE_GBN  eq 'AVAIL'}">접수중</c:when>
						                                                    <c:when test="${result.STATE_GBN  eq 'END'}">접수완료</c:when>
						                                                </c:choose>
						                                            </td>
						                                        </tr>
						                                     </c:forEach>
						                            </c:when>
						                            <c:otherwise>
						                                <tr>
						                                    <td colspan="9">등록된 예약이  없습니다.</td>
						                                </tr>
						                            </c:otherwise>
						                     </c:choose>
											</tbody>
											<tfoot>
												<td colspan="8">
													<div class="pull-right">
														<ul class="pagination">
							                                <c:if test="${golfLotCnt != 0}">
							                                    <ui:pagination paginationInfo = "${golfpaginationInfo2}" type="image" jsFunction="fnGolfLinkPage2" />
							                                </c:if>
													    </ul>
													    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
													</div>
													
												</td>
											</tfoot>
										</table>
									</div>
									</div>
									</div>
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
    <%@ include file="../include/script.jsp" %>
	<form id="commonForm" name="commonForm" method="get"></form>
	<script>
	(function($){
	    $("#list").on("click", function(e){ //목록으로 버튼
	        e.preventDefault();
	        fn_openBoardList();
	    });
	     
	    $("#modify").on("click", function(e){
	        e.preventDefault();
	        fn_openBoardUpdate();
	    });
	
	    $("#delete").on("click", function(e){ //삭제하기 버튼
	    	if(confirm("삭제하시겠습니까?")){
		        e.preventDefault();
		        fn_deleteBoard();
	    	}
	    });
	})(jQuery);
	         
	function fn_openBoardList(){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/admin/list.do");
	    comSubmit.addParam("currentPageNo", "${currentPageNo}");
		if("${!empty target}"=="true"){
			comSubmit.addParam("target", "${target}");
		}
		if("${!empty keyword}"=="true"){
			comSubmit.addParam("keyword", "${keyword}");
		}
	    comSubmit.submit();
	}
	 
	function fn_openBoardUpdate(){
	    var idx = "${map.IDX}";
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/admin/modify.do");
	    comSubmit.addParam("IDX", idx);
	    comSubmit.addParam("currentPageNo", "${currentPageNo}");
		if("${!empty target}"=="true"){
			comSubmit.addParam("target", "${target}");
		}
		if("${!empty keyword}"=="true"){
			comSubmit.addParam("keyword", "${keyword}");
		}
	    comSubmit.submit();
	}
	function fn_deleteBoard(){
	    var idx = "${map.IDX}";
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/admin/deleteProc.do");
	    comSubmit.addParam("IDX", idx);
	    comSubmit.submit();
	     
	}
	
	/* pagination 페이지 링크 function */
	function fnCondoLinkPage1(pageNo){
	    $("#pageIndex1").val(pageNo);
	    
	    var f = document.condoReservForm;
	    f.action = "<c:url value='/mgmt/member/view.do'/>";
	    f.submit();
	}

	function fnCondoLinkPage2(pageNo){
	    $("#pageIndex2").val(pageNo);
	    
	    var f = document.condoReservForm;
	    f.action = "<c:url value='/mgmt/member/view.do'/>";
	    f.submit();
	}

	/* pagination 페이지 링크 function */
	function fnGolfLinkPage1(pageNo){
	    $("#gPageIndex1").val(pageNo);
	    
	    var f = document.golfReservForm;
	    f.action = "<c:url value='/mgmt/member/view.do'/>";
	    f.submit();
	}

	function fnGolfLinkPage2(pageNo){
	    $("#gPageIndex2").val(pageNo);
	    
	    var f = document.golfReservForm;
	    f.action = "<c:url value='/mgmt/member/view.do'/>";
	    f.submit();
	}

	
	</script>
</body>

</html>