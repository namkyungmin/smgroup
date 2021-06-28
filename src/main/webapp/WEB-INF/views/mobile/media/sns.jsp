<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, 미디어, SM그룹 동영상, 동영상, SM 소셜미디어, 에스엠 소셜미디어, 에스엠그룹, 에스엠그룹 소셜미디어">
<meta name="description" content="SM그룹 소셜미디어 페이지입니다. SM그룹의 공식 소셜 채널들을 만나보실 수 있습니다.">
<title>소셜미디어 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub media social">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>소셜미디어</h2>
            </div>
            <!--// e: title -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section sec1">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h3>SM그룹 유튜브</h3>
							<a href="https://www.youtube.com/channel/UCBCCzCTAPrABL7SHMJK-6YA/videos" target="_blank" class="common_btn type03"><span>바로가기</span></a>
						</div>
						<div class="thumb_list">
							<div class="board_list">
								<ul class="board">							
									<c:choose>
										<c:when test="${fn:length(youtube) > 0}">
											<c:forEach items="${youtube }" var="row">
											<li>
												<c:choose>
													<c:when test="${not empty row.VIDEO }">
													<a href="${row.VIDEO }" target="_blank">
													</c:when>
													<c:otherwise>
													<a href="#" target="_blank">
													</c:otherwise>
												</c:choose>
												
													<div class="thumb_area">
														<img src="${domainName}${row.IMG_NAME }" alt="">
													</div>
													<div class="txt_area">
														<p class="tit">${row.TITLE }</p>
													</div>
												</a>
											</li>
											<c:set var="totalCount" value="${row.TOTAL_COUNT }"/>
											</c:forEach>
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="section sec2">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h3>SM그룹 페이스북</h3>
							<a href="https://www.youtube.com/channel/UCBCCzCTAPrABL7SHMJK-6YA/videos" target="_blank" class="common_btn type03">
								<span>바로가기</span>
							</a>
						</div>
						<div class="thumb_list dual">
							<div class="board_list">
								<ul class="board">					
					            <c:choose>
					                <c:when test="${fn:length(facebook) > 0}">
					                    <c:forEach items="${facebook }" var="row">
										<li>
											<c:choose>
												<c:when test="${not empty row.VIDEO }">
												<a href="${row.VIDEO }" target="_blank">
												</c:when>
												<c:otherwise>
												<a href="#" target="_blank">
												</c:otherwise>
											</c:choose>
											
												<div class="thumb_area">
													<img src="${domainName}${row.IMG_NAME }" alt="">
												</div>
												<div class="txt_area">
													<p class="tit">${row.TITLE }</p>
												</div>
											</a>
										</li>
										<c:set var="totalCount" value="${row.TOTAL_COUNT }"/>
					                    </c:forEach>
					                </c:when>
					                <c:otherwise>
					                    
					                </c:otherwise>
					            </c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="section sec3">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h3>SM그룹 인스타그램</h3>
							<a href="https://www.youtube.com/channel/UCBCCzCTAPrABL7SHMJK-6YA/videos" target="_blank" class="common_btn type03">
								<span>바로가기</span>
							</a>
						</div>
						<div class="thumb_list dual">
							<div class="board_list">
								<ul class="board">				
					            <c:choose>
					                <c:when test="${fn:length(instagram) > 0}">
					                    <c:forEach items="${instagram }" var="row">
										<li>
											<c:choose>
												<c:when test="${not empty row.VIDEO }">
												<a href="${row.VIDEO }" target="_blank">
												</c:when>
												<c:otherwise>
												<a href="#" target="_blank">
												</c:otherwise>
											</c:choose>
											
												<div class="thumb_area">
													<img src="${domainName}${row.IMG_NAME }" alt="">
												</div>
												<div class="txt_area">
													<p class="tit">${row.TITLE }</p>
												</div>
											</a>
										</li>
										<c:set var="totalCount" value="${row.TOTAL_COUNT }"/>
					                    </c:forEach>
					                </c:when>
					                <c:otherwise>
					                    
					                </c:otherwise>
					            </c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/include/mobile/floating.jsp" %>
            </div>
			<!--// e: contents -->
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>