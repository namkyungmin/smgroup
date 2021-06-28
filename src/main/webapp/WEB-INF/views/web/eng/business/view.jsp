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
<html lang="en">
<head>
<%@ include file="/include/eng/header.jsp" %>
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
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
            	<c:choose>
            		<c:when test="${map.SECTIONS=='manu' }">
	                <!--s: 제조 -->
	                <h2>
                    SM Group puts the <span>R&amp;D of eco-friendly, high-efficiency products</span><br>
                    as a top priority, and grows around future values.
	                </h2>
	                <!--//e: 제조 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='const' }">
	                <!--s: 건설 -->
	                <h2>
	                    SM Group wants to become a globally recognized global construction<br>
                        company based on <span>its rich and diverse experience, new construction</span><br>
                        <span>methods, and new technologies.</span> 
	                </h2>
	                <!--//e: 건설 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='ship' }">
	                <!--s: 해운 -->
	                <h2>
                        Shipping is not about just moving cargo, its about moving industry and<br>
                        culture. <span>SM Group creates and pioneers shipping culture.</span> 
	                </h2>
	                <!--//e: 해운 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='media' }">
	                <!--s: 미디어서비스 -->
	                <h2>
	                    The SM Group is creating a bigger world with endless efforts to<br>
                        <span>develop advanced IT technologies, pioneer new markets</span>, and globalize<br>
                        the market.
	                </h2>
	                <!--//e: 미디어서비스 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='leisure' }">
	                <!--s: 레저 -->
	                <h2>
	                    SM Groups provide sophisticated and sophisticated quality services and<br>
                        facilities through the top-notch <span>premium brand in Korea, “TOPS 10”</span>.
	                </h2>
	                <!--//e: 레저 -->
            		</c:when>
            	</c:choose>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="contents_top">
					<!-- s: breadcrumb -->
                    <ul class="breadcrumb">
                        <li class="home">Home</li>
                        <li class="depth1">Business</li>
                        <!--
                            [D] 카테고리 텍스트 변경 필요
                                제조 : Manufacturing
                                건설 : Construction
                                해운 : Shipping Industry
                                미디어서비스 : Media&middot;Service
                                레저 : Leisure
                        -->
                        <c:choose>
                            <c:when test="${map.SECTIONS=='manu' }">
                            <li class="depth2">Manufacturing</li>
                            </c:when>
                            <c:when test="${map.SECTIONS=='const' }">
                            <li class="depth2">Construction</li>
                            </c:when>
                            <c:when test="${map.SECTIONS=='ship' }">
                            <li class="depth2">Shipping Industry</li>
                            </c:when>
                            <c:when test="${map.SECTIONS=='media' }">
                            <li class="depth2">Media&middot;Service</li>
                            </c:when>
                            <c:when test="${map.SECTIONS=='leisure' }">
                            <li class="depth2">Leisure</li>
                            </c:when>
                        </c:choose>
                    </ul>
                    <!--// e: breadcrumb -->
					<div class="tab_wrap">
                        <!--
                            [D] 사업분야별로 ul > li > a 태그에 on 클래스 추가
                        -->
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
				</div>
                <div class="cont_tit">
                    <div class="inner">
                        <!-- s: 계열사 로고 영역 -->
                        <h3>
                        	<c:if test="${not empty map.LOGO_EN }">
                        	<img src="/upload/company/${map.LOGO_EN }" alt="">
                        	</c:if>
                        </h3>
                        <!-- //e: 계열사 로고 영역 -->
                        <!-- s: 계열사 타이틀 영역 -->
                        <div class="sub_tit">
                            ${map.TOP_BODY_EN }
                        </div>
                        <!-- //e: 계열사 타이틀 영역 -->
                    </div>
                    <c:if test="${not empty map.HOMEPAGE_EN }">                    
                    <a href="${map.HOMEPAGE_EN }" target="_blank" class="common_btn type02">
                        <span>Go to Web Site</span>
                    </a>
                    </c:if>
                </div>
                <!-- s: 계열사 정보 영역 
                <div class="section sec01">
                    <div class="box">
                       <ul>
                            <c:if test="${not empty map.YEAR_EN }">
                           <li>
                               <span class="tit">Established in</span>
                               <span class="cont">${map.YEAR_EN }</span>
                           </li>
                            </c:if>
                            <c:if test="${not empty map.CEO_EN }">
                           <li>
                                <span class="tit">Representative</span>
                                <span class="cont">${map.CEO_EN }</span>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.TOP_TEL_EN }">
                            <li>
                                <span class="tit">TEL</span>
                                <span class="cont">${map.TOP_TEL_EN }</span>
                            </li>
                            </c:if>
                       </ul>
                       <ul>
                            <c:if test="${not empty map.BUSINESS_EN }">
                            <li>
                                <span class="tit">Business Sector</span>
                                <span class="cont">${map.BUSINESS_EN }</span>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.TOP_ADDR_EN }">
                            <li>
                                <span class="tit">Address</span>
                                <span class="cont">${map.TOP_ADDR_EN }</span>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.HOMEPAGE_EN }">
                            <li>
                                <span class="tit">Website</span>
                                <span class="cont">
                                    <a href="${map.HOMEPAGE_EN }" target="_blank">${map.HOMEPAGE_EN }</a>
                                </span>
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
                    <div class="row top">
                        <div class="left">
                            <img src="/upload/company/${map.CONTENT_IMGONE_EN }" alt="">
                        </div>
                        <div class="right text">
                        	<!--<c:if test="${not empty map.CONTENT_TITLEONE_EN }">
                            <div class="tit">${map.CONTENT_TITLEONE_EN }</div>
                            </c:if>-->
                            <c:if test="${not empty map.CONTENT_BODYONE_EN }">
                            <div class="cont">
                                ${map.CONTENT_BODYONE_EN }
                            </div>
                            </c:if>
                            
                        </div>
                    </div>
                    </c:if>
                	<c:if test="${not empty map.CONTENT_IMGTWO_EN }">
                    <div class="row">
                        <div class="left text">
                        	<!--<c:if test="${not empty map.CONTENT_TITLETWO_EN }">
                            <div class="tit">${map.CONTENT_TITLETWO_EN }</div>
                            </c:if>-->
                            <c:if test="${not empty map.CONTENT_BODYTWO_EN }">
                            <div class="cont">
                                ${map.CONTENT_BODYTWO_EN }
                            </div>
                            </c:if>
                        </div>
                        <div class="right">
                            <img src="/upload/company/${map.CONTENT_IMGTWO_EN }" alt="">
                        </div>
                    </div>
                    </c:if>
                </div>
                <!-- //e: 계열사 정보 영역2 -->
                <c:if test="${fn:length(mapConKr) > 0}">
                <div class="section sec03 section_full">
                    <div class="sec_inner">
                        <div class="tit_wrap">
							<h4>${map.TITLE_EN }<%-- 사업 소개 --%></h4>
                        </div>
                        <!--
                            사업 갯수별로 .thumb_list에 class변경
                            1개 : col01
                            2개 : col02
                            3개 : col03
                            3개이상 : many
                        -->
                        <c:choose>
						<c:when test="${fn:length(mapConKr) == 0}">
						<div class="thumb_list">	
						</c:when>
						<c:when test="${fn:length(mapConKr) == 1}">
						<div class="thumb_list col01">	
						</c:when>
						<c:when test="${fn:length(mapConKr) == 2}">
						<div class="thumb_list col02">
						</c:when>
						<c:when test="${fn:length(mapConKr) == 3}">
						<div class="thumb_list col03">
						</c:when>
						<c:otherwise>
						<div class="thumb_list many">
						</c:otherwise>
                        </c:choose>
                            <div class="board_list">
                                <ul class="board">
									<c:choose>
										<c:when test="${fn:length(mapConKr) > 0}">
											<c:forEach items="${mapConKr }" var="row" end="${fn:length(mapConKr)}" varStatus="status">
			                                    <li>
			                                        <div class="thumb_area">
			                                            <img src="/upload/company/${row.CON_IMAGE}" alt="">
			                                        </div>
			                                        <div class="txt_area">
			                                            <p class="cate">${row.CON_TITLE}</p>
			                                            <p class="tit">
                                            			${fn:replace(row.CON_BODY,lf,'<br>')}
			                                            </p>
			                                        </div>
			                                    </li>
                                                <c:if test="${status.count%3==0&&status.count<status.end}">
                                                </ul>
                                                <ul class="board">
                                                </c:if>
											</c:forEach>
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
                                </ul>
                            </div>
                        </div>
                        <!-- //e: 사업소개 리스트 - 3개이상일 때 -->
                    </div>
                </div>
                </c:if>
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
                                <span class="category">Manufacturing </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='const' }">
                                <span class="category">Construction </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='ship' }">
                                <span class="category">Shipping Industry </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='media' }">
                                <span class="category">Media&middot;Service </span>
                                </c:when>
                                <c:when test="${map.SECTIONS=='leisure' }">
                                <span class="category">Leisure </span>
                                </c:when>
                                <c:otherwise>
                                <span class="category"></span>
                                </c:otherwise>
                            </c:choose>
                            sector</h4>
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
                <%@ include file="/include/eng/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        //브라우저 타이틀, 메타태그
        var metaKeywords = $("#keywords");
        var metaDesc = $("#description");
        var $wrap = $("#wrap");
        if ( $wrap.hasClass('manufacture')){
            document.title = "Manufacturing  | SM Group" ; 
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Manufacturing, Manufacturing, Businees, SM Manufacturing");
            metaDesc.attr("content","This page describes SM Group’s manufacturing business. We introduce many subsidiary companies in the manufacturing sector.");
        } else if ( $wrap.hasClass('construction')){
            document.title = "Construction  | SM Group" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Construction, Construction, Businees, SM Construction");
            metaDesc.attr("content","This page describes SM Group’s construction business. We introduce many subsidiary companies in the construction sector.");
        } else if ( $wrap.hasClass('shipping')){
            document.title = "Shipping Industry | SM Group" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Shipping, Shipping, Businees, SM Shipping");
            metaDesc.attr("content","This page describes SM Group’s construction business. We introduce many subsidiary companies in the shipping sector.");
        } else if ( $wrap.hasClass('media')){
            document.title = "Media·Service  | SM Group" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Media·Service, Media·Service, Businees, SM Media·Service");
            metaDesc.attr("content","This page describes SM Group’s media·service business. We introduce many subsidiary companies in the media·service sector.");
        } else if ( $wrap.hasClass('reisure')){
            document.title = "Leisure | SM Group" ;
            metaKeywords.attr("content", "SM Group, SM Group Businees, SM Group Leisure, Leisure, Businees, SM Leisure");
            metaDesc.attr("content","This page describes SM Group’s leisure business. We introduce many subsidiary companies in the leisure sector.");
        }
    </script>
</body>
</html>