<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:scriptlet>
pageContext.setAttribute("crlf", "\r\n");
pageContext.setAttribute("lf", "\n");
pageContext.setAttribute("cr", "\r");
</jsp:scriptlet>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="">
<meta name="description" content="">
<title></title>
</head>

<body>
    <!--
        [D] 사업분야별로 #wrap에 class변경 (상단 이미지 변경)
            제조 : manufacture
            건설 : construction
            해운 : shipping
            미디어서비스 : media
            레저 : reisure
    -->
   	<c:choose>
   		<c:when test="${map.SECTIONS=='manu' }">
        <div id="wrap" class="business view manufacture">
   		</c:when>
   		<c:when test="${map.SECTIONS=='const' }">
        <div id="wrap" class="business view construction">
   		</c:when>
   		<c:when test="${map.SECTIONS=='ship' }">
        <div id="wrap" class="business view shipping">
   		</c:when>
   		<c:when test="${map.SECTIONS=='media' }">
        <div id="wrap" class="business view media">
   		</c:when>
   		<c:when test="${map.SECTIONS=='leisure' }">
    	<div id="wrap" class="business view reisure">
   		</c:when>
   		<c:otherwise>
    	<div id="wrap" class="business view">
   		</c:otherwise>
   	</c:choose>
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>
                <c:choose>
                    <c:when test="${map.SECTIONS=='manu' }">
                    제조
                    </c:when>
                    <c:when test="${map.SECTIONS=='const' }">
                    건설
                    </c:when>
                    <c:when test="${map.SECTIONS=='ship' }">
                    해운
                    </c:when>
                    <c:when test="${map.SECTIONS=='media' }">
                    미디어&middot서비스
                    </c:when>
                    <c:when test="${map.SECTIONS=='leisure' }">
                    레저
                    </c:when>
                </c:choose>
                </h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <!--s: tab_wrap -->
                <div class="tab_wrap">
                    <p class="selected">
                    <c:choose>
                        <c:when test="${map.SECTIONS=='manu' }">
                        제조
                        </c:when>
                        <c:when test="${map.SECTIONS=='const' }">
                        건설
                        </c:when>
                        <c:when test="${map.SECTIONS=='ship' }">
                        해운
                        </c:when>
                        <c:when test="${map.SECTIONS=='media' }">
                        미디어&middot서비스
                        </c:when>
                        <c:when test="${map.SECTIONS=='leisure' }">
                        레저
                        </c:when>
                    </c:choose>
                    </p>
                    <ul>
                        <li>
                            <a href="manufacturing.do">제조</a>
                        </li>
                        <li>
                            <a href="construction.do">건설</a>
                        </li>
                        <li>
                            <a href="shipping-industry.do">해운</a>
                        </li>
                        <li>
                            <a href="media-service.do">미디어·서비스</a>
                        </li>
                        <li>
                            <a href="leisure.do">레저</a>
                        </li>
                    </ul>
                </div>
                <!--//e: tab_wrap -->
                <div class="cont_tit">
                    <div class="inner">
                        <!-- s: 계열사 로고 영역 -->
                        <h3>
						<c:choose>
							<c:when test="${not empty map.LOGO_MO}">
								<img src="/upload/company/${map.LOGO_MO }" alt="">
							</c:when>
							<c:otherwise>
	                        	<c:if test="${not empty map.LOGO }">
	                        	<img src="/upload/company/${map.LOGO }" alt="">
	                        	</c:if>
							</c:otherwise>
						</c:choose>
                        </h3>
                        <!-- //e: 계열사 로고 영역 -->
                        <!-- s: 계열사 타이틀 영역 -->
                        <div class="sub_tit">
						<c:choose>
							<c:when test="${not empty map.TOP_BODY_MO}">
								${map.TOP_BODY_MO}
							</c:when>
							<c:otherwise>
							${map.TOP_BODY}
							</c:otherwise>
						</c:choose>
                        </div>
                        <!-- //e: 계열사 타이틀 영역 -->
                    </div>
                    <div class="btn_wrap">
                    <c:if test="${not empty map.HOMEPAGE }">                    
                    <a href="${map.HOMEPAGE }" target="_blank" class="common_btn type02">
                        <span>사이트 바로가기</span>
                    </a>
                    </c:if>
                    </div>    
                </div>
<!-- s: 계열사 정보 영역
                <div class="section sec01 section_full">
                   <div class="sec_inner">
                       <table>
                           <colgroup>
                                <col width="90px">
                                <col width="*"> 
                           </colgroup>
                           <tbody>
                                <c:if test="${not empty map.YEAR }">
                                <tr>
                                    <th>설립연도</th>
                                    <td>${map.YEAR }</td>
                                </tr>
                                </c:if>
                                <c:if test="${not empty map.BUSINESS }">
                                <tr>
                                    <th>사업영역</th>
                                    <td>${map.BUSINESS }</td>
                                </tr>
                                </c:if>
                                <c:if test="${not empty map.CEO }">
                                <tr>
                                    <th>대표이사</th>
                                    <td>${map.CEO }</td>
                                </tr>
                                </c:if>
                                <c:if test="${not empty map.TOP_ADDR }">
                                <tr>
                                    <th>주소</th>
                                    <td>${map.TOP_ADDR }</td>
                                </tr>
                                </c:if>
                                <c:if test="${not empty map.TOP_TEL }">
                                <tr>
                                    <th>대표번호</th>
                                    <td>${map.TOP_TEL }</td>
                                </tr>
                                </c:if>
                                <c:if test="${not empty map.HOMEPAGE }">
                                <tr>
                                    <th>홈페이지</th>
                                    <td><a href="${map.HOMEPAGE }" target="_blank">${map.HOMEPAGE }</a></td>
                                </tr>
                                </c:if>
                           </tbody>
                       </table>
                   </div>
               </div>
 -->
               <!-- //e: 계열사 정보 영역 -->
               <!-- s: 계열사 정보 영역2 -->
               <div class="section sec02">
                   <c:if test="${not empty map.CONTENT_IMGONE }">
                   <div class="row">
                    <img src="/upload/company/${map.CONTENT_IMGONE }" alt="">
                    	<c:if test="${not empty map.CONTENT_TITLETWO }">
                        <div class="tit">${map.CONTENT_TITLEONE }</div>
                        </c:if>
                        <div class="cont">
						<c:choose>
							<c:when test="${not empty map.CONTENT_BODYONE_MO}">
								${map.CONTENT_BODYONE_MO}
							</c:when>
							<c:otherwise>
							${map.CONTENT_BODYONE}
							</c:otherwise>
						</c:choose>
                        </div>
                   </div>
                   </c:if>
                	<c:if test="${not empty map.CONTENT_IMGTWO }">
                   <div class="row">
                       <img src="/upload/company/${map.CONTENT_IMGTWO }" alt="">
                       <div class="tit">${map.CONTENT_TITLETWO }</div>
                        <div class="cont">
						<c:choose>
							<c:when test="${not empty map.CONTENT_BODYTWO_MO}">
								${map.CONTENT_BODYTWO_MO}
							</c:when>
							<c:otherwise>
							${map.CONTENT_BODYTWO}
							</c:otherwise>
						</c:choose>
                        </div>
                   </div>
                   </c:if>
               </div>
               <!-- //e: 계열사 정보 영역2 -->
               <div class="section sec03 section_full">
                   <div class="sec_inner">
                       <div class="tit_wrap">
                           <h4>${map.TITLE }</h4>
                       </div>
                       <ul class="board_list">
                            <c:choose>
                                <c:when test="${fn:length(mapConKr) > 0}">
                                    <c:forEach items="${mapConKr }" var="row" varStatus="status">
                                        <li>
                                            <c:choose>
                                                <c:when test="${not empty row.CON_IMAGE_MO}">
                                                    <img src="/upload/company/${row.CON_IMAGE_MO}" alt="">
                                                </c:when>
                                                <c:otherwise>
                                                <img src="/upload/company/${row.CON_IMAGE}" alt="">
                                                </c:otherwise>
                                            </c:choose>
                                            <p class="cate">${row.CON_TITLE}</p>
                                            <p class="tit">
                                            ${fn:replace(row.CON_BODY,lf,'<br>')}
                                            </p>
                                        </li>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                   </div>
               </div>
               <div class="section sec04">
                    <div class="tit_wrap">
                        <!--
                            [D] 사업분야별로 span.category 텍스트 변경
                            1) 제조
                            2) 건설
                            3) 해운
                            4) 미디어&middot서비스
                            5) 레저
                        -->
                        <h4>
                        <c:choose>
                            <c:when test="${map.SECTIONS=='manu' }">
                            <span class="category">제조</span>
                            </c:when>
                            <c:when test="${map.SECTIONS=='const' }">
                            <span class="category">건설</span>
                            </c:when>
                            <c:when test="${map.SECTIONS=='ship' }">
                            <span class="category">해운</span>
                            </c:when>
                            <c:when test="${map.SECTIONS=='media' }">
                            <span class="category">미디어&middot서비스</span>
                            </c:when>
                            <c:when test="${map.SECTIONS=='leisure' }">
                            <span class="category">레저</span>
                            </c:when>
                            <c:otherwise>
                            <span class="category"></span>
                            </c:otherwise>
                        </c:choose>
                        부문 계열사 바로가기</h4>
                    </div>
                   <!-- s: 계열사 바로가기 리스트 -->
                   <div class="thumb_list">
                       <div class="board_list">
                           <ul class="board"><c:choose>
									<c:when test="${fn:length(list) > 0}">
										<c:forEach items="${list }" var="row">
		                                <li>
		                                	<c:choose>
		                                		<c:when test="${row.STATUS_SUB=='Y' }">
		                                		<a href="view.do?IDX=${row.IDX }">
		                                		</c:when>
		                                		<c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${not empty row.URL}">
                                                        <a href="${row.URL }" target="_blank">
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="#none">
                                                        </c:otherwise>
		                                	        </c:choose>
		                                		</c:otherwise>
		                                	</c:choose>
		                                        <div class="thumb_area">
		                                           
                                            <img src="${row.PATH}${row.THUMB }" alt="">
		                                        </div>
		                                        <div class="txt_area">
		                                            <p class="cate">
		                                            	${row.NAME }
														<c:if test="${not empty row.NAME_SUB}">
														<span>${row.NAME_SUB }</span>
														</c:if>
		                                            </p>
		                                        </div>
		                                    </a>
		                                </li>
										</c:forEach>
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
                           </ul>
                       </div>
                   </div>
                   <!-- //e: 계열사 바로가기 리스트 -->
               </div>
               <%@ include file="/include/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
        smGroup.tab();

        //브라우저 타이틀, 메타태그
        var metaKeywords = $("#keywords");
        var metaDesc = $("#description");
        var $wrap = $("#wrap");
        if ( $wrap.hasClass('manufacture')){
            document.title = "제조 | SM그룹 | 모바일" ; 
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 제조, 제조, 사업분야, SM제조, 에스엠 제조, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 제조, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 제조");
            metaDesc.attr("content","SM그룹 사업분야 중 제조부문 페이지 입니다. 다양한 제조 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('construction')){
            document.title = "건설 | SM그룹 | 모바일" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 건설, 건설, 사업분야, SM건설, 에스엠 건설, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 건설");
            metaDesc.attr("content","SM그룹 사업분야 중 건설부문 페이지 입니다. 다양한 건설 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('shipping')){
            document.title = "해운 | SM그룹 | 모바일" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 해운, 해운, 사업분야, SM해운, 에스엠 해운, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 해운");
            metaDesc.attr("content","SM그룹 사업분야 중 해운부문 페이지 입니다. 다양한 해운 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('media')){
            document.title = "미디어·서비스 | SM그룹 | 모바일" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 미디어·서비스, 미디어·서비스, 사업분야, SM미디어, SM 서비스, 에스엠 미디어, 에스엠 서비스, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 미디어·서비스");
            metaDesc.attr("content","SM그룹 사업분야 중 미디어·서비스부문 페이지 입니다. 다양한 미디어·서비스 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('reisure')){
            document.title = "레저 | SM그룹 | 모바일" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 레저, 레저, 사업분야, SM레저, 에스엠 레저, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 레저");
            metaDesc.attr("content","SM그룹의 사업분야 중 레저부문 페이지 입니다. 다양한 레저 관련 계열사를 소개합니다.");
        }
    </script>
</body>
</html>