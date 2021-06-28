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
<%@ include file="/include/header.jsp" %>
<meta name="keywords" id="keywords" content="">
<meta name="description" id="description" content="">
<title>건설 | SM그룹</title>
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
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
            	<c:choose>
            		<c:when test="${map.SECTIONS=='manu' }">
	                <!--s: 제조 -->
	                <h2>
	                    <span>SM그룹은 친환경 고효율 제품의 연구개발을 최우선</span>으로 하여<br>
	                    미래의 가치를 중심으로 성장해 나아갑니다.
	                </h2>
	                <!--//e: 제조 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='const' }">
	                <!--s: 건설 -->
	                <h2>
	                    <span>SM그룹은 풍부하고 다양한 경험과 신공법, 신기술을 바탕</span>으로<br>
	                    세계적으로 인정받는 글로벌 건설사로 거듭나고자 합니다.
	                </h2>
	                <!--//e: 건설 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='ship' }">
	                <!--s: 해운 -->
	                <h2>
	                    해운업은 단순히 화물을 옮기는 것이 아니라 산업과 문화를 움직입니다.<br>
	                    <span>SM그룹은 해운 문화를 창조하고 개척</span>해 나아갑니다.
	                </h2>
	                <!--//e: 해운 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='media' }">
	                <!--s: 미디어서비스 -->
	                <h2>
	                    <span>SM그룹은 첨단 IT 기술 개발과 신규 시장 개척 시장의 글로벌화</span>를 위한<br>
	                    끊임없는 노력으로 더 넓은 세상을 만들어갑니다.
	                </h2>
	                <!--//e: 미디어서비스 -->
            		</c:when>
            		<c:when test="${map.SECTIONS=='leisure' }">
	                <!--s: 레저 -->
	                <h2>
	                    <span>국내 최고 수준의 프리미엄 브랜드 “TOPS 10”</span>을 통해<br>
	                    세련되고 정교한 품질의 서비스와 시설을 제공하고 있습니다.
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
                        <li class="home">홈</li>
                        <li class="depth1">사업분야</li>
                        <!--
                            [D] 카테고리 텍스트 변경 필요
                        -->
						<c:forEach var="entry" items="${sections_list}" varStatus="status">
						<c:if test="${entry.key==map.SECTIONS}">
							<li class="depth2">${entry.value }</li>
						</c:if>
						</c:forEach>
                       
                    </ul>
                    <!--// e: breadcrumb -->
					<div class="tab_wrap">
                        <!--
                            [D] 사업분야별로 ul > li > a 태그에 on 클래스 추가
                        -->
                        <ul>
                            <li>
                                <a href="manufacturing.do" class="${map.SECTIONS=='manu'?'on':''}">제조</a>
                            </li>
                            <li>
                                <a href="construction.do" class="${map.SECTIONS=='const'?'on':''}">건설</a>
                            </li>
                            <li>
                                <a href="shipping-industry.do" class="${map.SECTIONS=='ship'?'on':''}">해운</a>
                            </li>
                            <li>
                                <a href="media-service.do" class="${map.SECTIONS=='media'?'on':''}">미디어·서비스</a>
                            </li>
                            <li>
                                <a href="leisure.do" class="${map.SECTIONS=='leisure'?'on':''}">레저</a>
                            </li>
                        </ul>
                    </div>
				</div>
                <div class="cont_tit">
                    <div class="inner">
                        <!-- s: 계열사 로고 영역 -->
                        <h3>
                        	<c:if test="${not empty map.LOGO }">
                        	<img src="/upload/company/${map.LOGO }" alt="">
                        	</c:if>
                        	
                            
                        </h3>
                        <!-- //e: 계열사 로고 영역 -->
                        <!-- s: 계열사 타이틀 영역 -->
                        <div class="sub_tit">
                            ${map.TOP_BODY }
                        </div>
                        <!-- //e: 계열사 타이틀 영역 -->
                    </div>
                    <c:if test="${not empty map.HOMEPAGE }">                    
                    <a href="${map.HOMEPAGE }" target="_blank" class="common_btn type02">
                        <span>사이트 바로가기</span>
                    </a>
                    </c:if>
                </div>
<!-- s: 계열사 정보 영역 
                <div class="section sec01">
                    <div class="box">
                       <ul>
                            <c:if test="${not empty map.YEAR }">
                           <li>
                               <span class="tit">설립연도</span>
                               <span class="cont">${map.YEAR }</span>
                           </li>
                            </c:if>
                            <c:if test="${not empty map.CEO }">
                           <li>
                                <span class="tit">대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;표</span>
                                <span class="cont">${map.CEO }</span>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.TOP_TEL }">
                            <li>
                                <span class="tit">대표번호</span>
                                <span class="cont">${map.TOP_TEL }</span>
                            </li>
                            </c:if>
                       </ul>
                       <ul>
                            <c:if test="${not empty map.BUSINESS }">
                            <li>
                                <span class="tit">사업영역</span>
                                <span class="cont">${map.BUSINESS }</span>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.TOP_ADDR }">
                            <li>
                                <span class="tit">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</span>
                                <span class="cont">${map.TOP_ADDR }</span>
                            </li>
                            </c:if>
                            <c:if test="${not empty map.HOMEPAGE }">
                            <li>
                                <span class="tit">홈페이지</span>
                                <span class="cont">
                                    <a href="${map.HOMEPAGE }" target="_blank">${map.HOMEPAGE }</a>
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
                	<c:if test="${not empty map.CONTENT_IMGONE }">
                    <div class="row top">
                        <div class="left">
                            <img src="/upload/company/${map.CONTENT_IMGONE }" alt="">
                        </div>
                        <div class="right text">
<!--                        	<c:if test="${not empty map.CONTENT_TITLEONE }">
                            <div class="tit">${map.CONTENT_TITLEONE }</div>
                            </c:if> -->
                            <c:if test="${not empty map.CONTENT_BODYONE }">
                            <div class="cont">
                                ${map.CONTENT_BODYONE }
                            </div>
                            </c:if>
                            
                        </div>
                    </div>
                    </c:if>
                	<c:if test="${not empty map.CONTENT_IMGTWO }">
                    <div class="row">
                        <div class="left text">
<!--                        	<c:if test="${not empty map.CONTENT_TITLETWO }">
                            <div class="tit">${map.CONTENT_TITLETWO }</div>
                            </c:if>-->
                            <c:if test="${not empty map.CONTENT_BODYTWO }">
                            <div class="cont">
                                ${map.CONTENT_BODYTWO }
                            </div>
                            </c:if>
                        </div>
                        <div class="right">
                            <img src="/upload/company/${map.CONTENT_IMGTWO }" alt="">
                        </div>
                    </div>
                    </c:if>
                </div>
                <c:if test="${fn:length(mapConKr) > 0}">
                <!-- //e: 계열사 정보 영역2 -->
                <div class="section sec03 section_full">
                    <div class="sec_inner">
                        <div class="tit_wrap">
							<h4>${map.TITLE }<%-- 사업 소개 --%></h4>
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
                            <ul class="board">
								<c:choose>
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
                <%@ include file="/include/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        //브라우저 타이틀, 메타태그
        var metaKeywords = $("#keywords");
        var metaDesc = $("#description");
        var $wrap = $("#wrap");
        if ( $wrap.hasClass('manufacture')){
            document.title = "제조 | SM그룹" ; 
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 제조, 제조, 사업분야, SM제조, 에스엠 제조, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 제조, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 제조");
            metaDesc.attr("content","SM그룹 사업분야 중 제조부문 페이지 입니다. 다양한 제조 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('construction')){
            document.title = "건설 | SM그룹" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 건설, 건설, 사업분야, SM건설, 에스엠 건설, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 건설");
            metaDesc.attr("content","SM그룹 사업분야 중 건설부문 페이지 입니다. 다양한 건설 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('shipping')){
            document.title = "해운 | SM그룹" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 해운, 해운, 사업분야, SM해운, 에스엠 해운, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 해운");
            metaDesc.attr("content","SM그룹 사업분야 중 해운부문 페이지 입니다. 다양한 해운 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('media')){
            document.title = "미디어·서비스 | SM그룹" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 미디어·서비스, 미디어·서비스, 사업분야, SM미디어, SM 서비스, 에스엠 미디어, 에스엠 서비스, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 미디어·서비스");
            metaDesc.attr("content","SM그룹 사업분야 중 미디어·서비스부문 페이지 입니다. 다양한 미디어·서비스 관련 계열사를 소개합니다.");
        } else if ( $wrap.hasClass('reisure')){
            document.title = "레저 | SM그룹" ;
            metaKeywords.attr("content", "SM그룹, SM그룹 사업분야, SM그룹 레저, 레저, 사업분야, SM레저, 에스엠 레저, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 레저");
            metaDesc.attr("content","SM그룹의 사업분야 중 레저부문 페이지 입니다. 다양한 레저 관련 계열사를 소개합니다.");
        }

    </script>
</body>
</html>