<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/mobile/header.jsp" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00c975bfbb360330cd22b2a5a150b233"></script>
<meta name="description" content="SM그룹 오시는 길 페이지입니다.">
<title>오시는 길 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub etc location">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>오시는 길</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="section">
                    <!--s: 본사 -->
                    <div class="location_wrap head_office">
                        <p class="company">
                            SM그룹
                        </p>
                        <div class="location_info">
                            <div class="info_wrap">
                                <div class="address">
                                    <p class="tit">주소</p>
                                    <p class="cont">
                                        서울특별시 강서구 마곡중앙 8로 78<br>
                                        (마곡동, SM R&D 센터)
                                    </p>
                                </div>
                                <div class="subway">
                                    <p class="tit">대중교통</p> 
                                    <p class="cont">
                                        지하철 5호선 발산역 1,9번 출구
                                    </p>
                                </div>
                            </div>
                            <div id="map0" class="map_wrap" data-posx="37.560825" data-posy="126.836394"></div>
                        </div>
                    </div>
                    <!--//e: 본사 -->

                    <!--s: tab_wrap -->
                    <div class="tab_wrap">
                        <p class="selected">제조</p>
                        <ul>
                            <li>
                                <a href="javascript:void(0);">제조</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">건설</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">해운</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">미디어·서비스</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">레저</a>
                            </li>
                        </ul>
                    </div>
                    <!--//e: tab_wrap -->
                    <!--s: 제조 -->
                    <div class="tab_cont on">
                    
                       <c:choose>
                            <c:when test="${fn:length(manu)>0}">
                                <c:forEach items="${manu }" var="row" varStatus="status">
                                <div class="location_wrap">
                                    <a href="#"  class="company">
                                        <p>
                                            ${row.NAME}
                                            <c:if test="${not empty row.NAME_SUB}">
                                            <span>${row.NAME_SUB }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL}
                                                </p>
                                            </div>
                                        </div>
                                        <div id="mapmanu${status.count }" class="map_wrap" data-posx="${row.LAT }" data-posy="${row.LNG }"></div>
                                    </div>
                                </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <!--//e: 제조 -->
                    <!--s: 건설 -->
                    <div class="tab_cont">
                        <c:choose>
                            <c:when test="${fn:length(const2)>0}">
                                <c:forEach items="${const2 }" var="row" varStatus="status">
                                <div class="location_wrap">
                                    <a href="#"  class="company">
                                        <p>
                                            ${row.NAME}
                                            <c:if test="${not empty row.NAME_SUB}">
                                            <span>${row.NAME_SUB }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL}
                                                </p>
                                            </div>
                                        </div>
                                        <div id="mapconst${status.count }" class="map_wrap" data-posx="${row.LAT }" data-posy="${row.LNG }"></div>
                                    </div>
                                </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <!--//e: 건설 -->
                    <!--s: 해운 -->
                    <div class="tab_cont">
                        <c:choose>
                            <c:when test="${fn:length(ship)>0}">
                                <c:forEach items="${ship }" var="row" varStatus="status">
                                <div class="location_wrap">
                                    <a href="#"  class="company">
                                        <p>
                                            ${row.NAME}
                                            <c:if test="${not empty row.NAME_SUB}">
                                            <span>${row.NAME_SUB }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL}
                                                </p>
                                            </div>
                                        </div>
                                        <div id="mapship${status.count }" class="map_wrap" data-posx="${row.LAT }" data-posy="${row.LNG }"></div>
                                    </div>
                                </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <!--//e: 해운 -->
                    <!--s: 미디어 서비스 -->
                    <div class="tab_cont">
                        <c:choose>
                            <c:when test="${fn:length(media)>0}">
                                <c:forEach items="${media }" var="row" varStatus="status">
                                <div class="location_wrap">
                                    <a href="#"  class="company">
                                        <p>
                                            ${row.NAME}
                                            <c:if test="${not empty row.NAME_SUB}">
                                            <span>${row.NAME_SUB }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL}
                                                </p>
                                            </div>
                                        </div>
                                        <div id="mapmedia${status.count }" class="map_wrap" data-posx="${row.LAT }" data-posy="${row.LNG }"></div>
                                    </div>
                                </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <!--//e: 미디어 서비스 -->
                    <!--s: 레저 -->
                    <div class="tab_cont">
                        <c:choose>
                            <c:when test="${fn:length(leisure)>0}">
                                <c:forEach items="${leisure }" var="row" varStatus="status">
                                <div class="location_wrap">
                                    <a href="#"  class="company">
                                        <p>
                                            ${row.NAME}
                                            <c:if test="${not empty row.NAME_SUB}">
                                            <span>${row.NAME_SUB }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL}
                                                </p>
                                            </div>
                                        </div>
                                        <div id="mapleisure${status.count }" class="map_wrap" data-posx="${row.LAT }" data-posy="${row.LNG }"></div>
                                    </div>
                                </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>

                    </div>
                    <!--//e: 레저 -->
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

        var $tabListEl = $('.tab_wrap ul li a');
        var $tabCont =$('.tab_cont');
        var $accodianEl = $tabCont.find('.location_wrap .company');
        
        //탭 관련
        $tabListEl.click(function(e){
            var tabIdx = $(this).parent().index();
            $tabCont.eq(tabIdx).addClass('on').siblings().removeClass('on');
            $accodianEl.removeClass('on').next().removeClass('on');
        });
        
        //map 영역에 지도 뿌리기
        $('.map_wrap').each(function(){
            var mapId = $(this).attr('id');
            var dataPosX = $(this).attr("data-posx");
            var dataPosY = $(this).attr("data-posy");
            mapFunc(dataPosX, dataPosY, mapId);
        });

        //아코디언 관련
        $accodianEl.click(function(e){
            e.preventDefault();
            $(this).toggleClass('on').parent().siblings().find('.company').removeClass('on');
            $(this).next().toggleClass('on').parent().siblings().find('.company').next().removeClass('on');
        });

        //지도 api 함수
        function mapFunc(posX, posY, mapId){
            var mapContainer = document.getElementById(mapId), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(posX, posY), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
	var markerImageUrl = 'https://t1.daumcdn.net/localimg/localimages/07/2012/img/marker_p.png', 
		    markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
		    markerImageOptions = { 
		        offset : new kakao.maps.Point(20, 42)// 마커 좌표에 일치시킬 이미지 안의 좌표
	};
            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);
            // 마커가 표시될 위치입니다 
            var markerPosition  = new kakao.maps.LatLng(posX, posY); 

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition,
	    image : markerImage
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);
        };
    </script>
</body>
</html>