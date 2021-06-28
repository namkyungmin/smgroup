<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<jsp:scriptlet>
pageContext.setAttribute("crlf", "\r\n");
pageContext.setAttribute("lf", "\n");
pageContext.setAttribute("cr", "\r");
</jsp:scriptlet>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/include/eng/mobile/header.jsp" %>
<meta name="keywords" id="keywords" content="">
<meta name="description" id="description" content="">
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
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>
                <c:choose>
                    <c:when test="${map.SECTIONS=='manu' }">
                    Manufacturing
                    </c:when>
                    <c:when test="${map.SECTIONS=='const' }">
                    Construction
                    </c:when>
                    <c:when test="${map.SECTIONS=='ship' }">
                    Shipping industry
                    </c:when>
                    <c:when test="${map.SECTIONS=='media' }">
                    Media&middot;service
                    </c:when>
                    <c:when test="${map.SECTIONS=='leisure' }">
                    Leisure
                    </c:when>
                </c:choose>
                </h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <!--s: tab_wrap -->
                <div class="tab_wrap">
                        <c:choose>
                            <c:when test="${map.SECTIONS=='manu' }">
                            <p class="selected">Manufacturing</p>
                            </c:when>
                            <c:when test="${map.SECTIONS=='const' }">
                            <p class="selected">Construction</p>
                            </c:when>
                            <c:when test="${map.SECTIONS=='ship' }">
                            <p class="selected">Shipping Industry</p>
                            </c:when>
                            <c:when test="${map.SECTIONS=='media' }">
                            <p class="selected">Media&middot;Service</p>
                            </c:when>
                            <c:when test="${map.SECTIONS=='leisure' }">
                            <p class="selected">Leisure</p>
                            </c:when>
                        </c:choose>
                    <ul>
                        <li>
                            <a href="manufacturing.do" class="${map.SECTIONS=='manu'?'on':'' }">Manufacturing</a>
                        </li>
                        <li>
                            <a href="construction.do" class="${map.SECTIONS=='const'?'on':'' }">Construction</a>
                        </li>
                        <li>
                            <a href="shipping-industry.do" class="${map.SECTIONS=='ship'?'on':'' }">Shipping Industry</a>
                        </li>
                        <li>
                            <a href="media-service.do" class="${map.SECTIONS=='media'?'on':'' }">Media&middot;Service</a>
                        </li>
                        <li>
                            <a href="leisure.do" class="${map.SECTIONS=='leisure'?'on':'' }">Leisure</a>
                        </li>
                    </ul>
                </div>
                <!--//e: tab_wrap -->
                <div class="cont_tit">
                    <div class="inner">
                        <!-- s: 계열사 로고 영역 -->
                        <h3>
						<c:choose>
							<c:when test="${not empty map.LOGO_EN_MO}">
								<img src="/upload/company/${map.LOGO_EN_MO }" alt="">
							</c:when>
							<c:otherwise>
	                        	<c:if test="${not empty map.LOGO_EN }">
	                        	<img src="/upload/company/${map.LOGO_EN }" alt="">
	                        	</c:if>
							</c:otherwise>
						</c:choose>
                        </h3>
                        <!-- //e: 계열사 로고 영역 -->
                        <!-- s: 계열사 타이틀 영역 -->
                        <div class="sub_tit">
						<c:choose>
							<c:when test="${not empty map.TOP_BODY_EN_MO}">
								${map.TOP_BODY_EN_MO}
							</c:when>
							<c:otherwise>
							${map.TOP_BODY_EN}
							</c:otherwise>
						</c:choose>
                        </div>
                        <!-- //e: 계열사 타이틀 영역 -->
                    </div>
                    <div class="btn_wrap">
                        <c:if test="${not empty map.HOMEPAGE_EN }">                    
                        <a href="${map.HOMEPAGE_EN }" target="_blank" class="common_btn type02">
                            <span>Go to Web Site</span>
                        </a>
                        </c:if>
                    </div>    
                </div>
<!-- s: 계열사 정보 영역 
                <div class="section sec01 section_full">
                   <div class="sec_inner">
                       <ul>
                            <c:if test="${not empty map.YEAR_EN }">
                            <li>
                                <p class="tit">Established in</p>
                                <p class="cont">${map.YEAR_EN }</p>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.BUSINESS_EN }">
                            <li>
                                <p class="tit">Business Sector</p>
                                <p class="cont">${map.BUSINESS_EN }</p>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.CEO_EN }">
                            <li>
                                <p class="tit">Representative</p>
                                <p class="cont">${map.CEO_EN }</p>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.TOP_ADDR_EN }">
                            <li>
                                <p class="tit">Address</p>
                                <p class="cont">${map.TOP_ADDR_EN }</p>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.TOP_TEL_EN }">
                            <li>
                                <p class="tit">TEL</p>
                                <p class="cont">${map.TOP_TEL_EN }</p>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.HOMEPAGE_EN }">
                            <li>
                                <p class="tit">Website</p>
                                <p class="cont"><a href="${map.HOMEPAGE_EN }" target="_blank">${map.HOMEPAGE_EN }</a></p>
                            </li>
                            </c:if>
                       </ul>
                   </div>
               </div>
-->
               <!-- //e: 계열사 정보 영역 -->
               <!-- s: 계열사 정보 영역2 -->
               <div class="section sec02">
                   <c:if test="${not empty map.CONTENT_IMGONE_EN }">
                   <div class="row">
                    <img src="/upload/company/${map.CONTENT_IMGONE_EN }" alt="">
                        <c:if test="${not empty map.CONTENT_TITLEONE_EN }">
                        <div class="tit">${map.CONTENT_TITLEONE_EN }</div>
                        </c:if>
                        
                        <div class="cont">
						<c:choose>
							<c:when test="${not empty map.CONTENT_BODYONE_EN_MO}">
								${map.CONTENT_BODYONE_EN_MO}
							</c:when>
							<c:otherwise>
							<c:if test="${not empty map.CONTENT_BODYONE_EN }">
							${map.CONTENT_BODYONE_EN}
							</c:if>
							</c:otherwise>
						</c:choose>
                        </div>
                   </div>
                   </c:if>
                   <c:if test="${not empty map.CONTENT_IMGTWO_EN }">
                   <div class="row">
                       <img src="/upload/company/${map.CONTENT_IMGTWO_EN }" alt="">
                       <c:if test="${not empty map.CONTENT_TITLETWO_EN }">
                       <div class="tit">${map.CONTENT_TITLETWO_EN }</div>
                       </c:if>
                        <div class="cont">
						<c:choose>
							<c:when test="${not empty map.CONTENT_BODYTWO_EN_MO}">
								${map.CONTENT_BODYTWO_EN_MO}
							</c:when>
							<c:otherwise>
							<c:if test="${not empty map.CONTENT_BODYTWO_EN }">
							${map.CONTENT_BODYTWO_EN}
							</c:if>
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
                           <h4>${map.TITLE_EN }</h4>
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
                            Go to affiliates in the 
                            <c:choose>
                                <c:when test="${map.SECTIONS=='manu' }">
                                <span class="category">manufacturing </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='const' }">
                                <span class="category">construction </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='ship' }">
                                <span class="category">shipping industry </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='media' }">
                                <span class="category">media&middot;service </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='leisure' }">
                                <span class="category">leisure </span>
                                </c:when>
                                <c:otherwise>
                                <span class="category"></span>
                                </c:otherwise>
                            </c:choose>
                            sector
                        </h4>
                    </div>
                   <!-- s: 계열사 바로가기 리스트 -->
                   <div class="thumb_list">
                       <div class="board_list">
                           <ul class="board">
								<c:choose>
									<c:when test="${fn:length(list) > 0}">
										<c:forEach items="${list }" var="row">
		                                <li>
		                                	<c:choose>
		                                		<c:when test="${row.STATUS_SUB_EN=='Y' }">
		                                		<a href="view.do?IDX=${row.IDX }">
		                                		</c:when>
		                                		<c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${not empty row.URL_EN}">
                                                        <a href="${row.URL_EN }" target="_blank">
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="#none">
                                                        </c:otherwise>
		                                	        </c:choose>
		                                		</c:otherwise>
		                                	</c:choose>
		                                        <div class="thumb_area">
		                                            <img src="${row.PATH}${row.THUMB_EN }" alt="">
		                                        </div>
		                                        <div class="txt_area">
		                                            <p class="cate">
		                                            	${row.NAME_EN }
														<c:if test="${not empty row.NAME_SUB_EN}">
														<span>${row.NAME_SUB_EN }</span>
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
               <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
        smGroup.tab();

        //브라우저 타이틀, 메타태그
        var metaKeywords = $("#keywords");
        var metaDesc = $("#description");
        var $wrap = $("#wrap");
        if ( $wrap.hasClass('manufacture')){
            document.title = "Manufacturing  | SM Group | Mobile" ; 
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Manufacturing, Manufacturing, Businees, SM Manufacturing");
            metaDesc.attr("content","This page describes SM Group’s manufacturing business. We introduce many subsidiary companies in the manufacturing sector.");
        } else if ( $wrap.hasClass('construction')){
            document.title = "Construction  | SM Group | Mobile" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Construction, Construction, Businees, SM Construction");
            metaDesc.attr("content","This page describes SM Group’s construction business. We introduce many subsidiary companies in the construction sector.");
        } else if ( $wrap.hasClass('shipping')){
            document.title = "Shipping Industry | SM Group | Mobile" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Shipping, Shipping, Businees, SM Shipping");
            metaDesc.attr("content","This page describes SM Group’s construction business. We introduce many subsidiary companies in the shipping sector.");
        } else if ( $wrap.hasClass('media')){
            document.title = "Media·Service  | SM Group | Mobile" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Media·Service, Media·Service, Businees, SM Media·Service");
            metaDesc.attr("content","This page describes SM Group’s media·service business. We introduce many subsidiary companies in the media·service sector.");
        } else if ( $wrap.hasClass('reisure')){
            document.title = "Leisure | SM Group | Mobile" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Leisure, Leisure, Businees, SM Leisure");
            metaDesc.attr("content","This page describes SM Group’s leisure business. We introduce many subsidiary companies in the leisure sector.");
        }
    </script>
</body>
</html>