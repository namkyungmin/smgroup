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
<%@ include file="/include/header.jsp" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00c975bfbb360330cd22b2a5a150b233"></script>
<meta name="description" content="SM그룹 오시는 길 페이지입니다.">
<title>오시는 길 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub etc location">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>오시는 길</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">홈</li>
                <!-- <li class="depth1">미디어</li> -->
                <li class="depth2">오시는 길</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <div class="location_wrap">
                        <div class="map_wrap">
                            <div id="map"></div>
                            <!-- s: 계열사 정보 -->
                            <div class="location_info">
                                <p class="company">SM그룹</p>
                                <div class="info_wrap">
                                    <p class="tit">주소</p>
                                    <p class="cont" id="info_addr">서울특별시 강서구 마곡중앙 8로 78(마곡동, SM R&D 센터)</p>
                                </div>
                                <div class="info_wrap">
                                    <p class="tit" id="info_tel_tit">대중교통</p>
                                    <p class="cont" id="info_tel">지하철 5호선 발산역 1,9번 출구</p>
                                </div>
                            </div>
                            <!--// e: 계열사 정보 -->
                        </div>
                        <div class="list_wrap">
                            <!-- s: 계열사 탭 -->
                            <div class="category_wrap">
                                <p class="selected">
                                    <a href="#">전체보기</a> 
                                </p>
                                <ul class="tab_box">
                                    <li>
                                        <a href="#" data-sections="all">전체보기</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="manu">제조</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="const">건설</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="ship">해운</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="media">미디어,서비스</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="leisure">레저</a>
                                    </li>
                                </ul>
                            </div>
                            <!--// e: 계열사 탭 -->
                            <!-- s: 계열사 리스트 -->
                            <div class="list">
                                <ul>
                                    <li>
                                        <a href="#" data-posx="37.560825" data-posy="126.836394" data-sections="all" data-name="SM그룹" data-addr="서울특별시 강서구 마곡중앙 8로 78(마곡동, SM R&D 센터)" data-tel_title="대중교통" data-tel="지하철 5호선 발산역 1,9번 출구" class="on">SM그룹 (본사)</a>
                                    </li>
                                    <c:choose>
                                        <c:when test="${fn:length(list)>0}">
                                            <c:forEach items="${list }" var="row">
                                            <li>
                                                <a href="#" data-posx="${row.LAT }" data-sections="${row.SECTIONS=='brand'?'const':row.SECTIONS }" data-posy="${row.LNG }" data-name="${row.NAME}" data-addr="${row.ADDR}" data-tel_title="전화번호" data-tel="${row.TEL}">
                                                ${row.NAME }
                                                <c:if test="${not empty row.NAME_SUB}">
                                                <span>${row.NAME_SUB }</span>
                                                </c:if>
                                                </a>
                                            </li>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </div>
                            <!--// e: 계열사 리스트 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
    <%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        //본사 map
        mapFunc(37.560825, 126.836394);

        //계열사 tab 
        var $tabBtn = $('.category_wrap .selected a'),
            $tabList = $tabBtn.parent().next('ul'),
            $tabListEl = $tabList.find('li a');
        $tabBtn.click(function(e){
            e.preventDefault();
            $tabBtn.stop().toggleClass('on');
            $tabList.stop().slideToggle(200);
        });
        $tabListEl.click(function(e){
            e.preventDefault();
            var selectVal = $(this).text();
            $tabBtn.text(selectVal);
            var sections = $(this).data('sections');
            if(sections=='all'){
                $('.location_wrap .list_wrap .list li').each(function(){
                    $(this).show();
                });
            }else{
                $('.location_wrap .list_wrap .list li').each(function(){
                    $(this).hide();
                    $(this).find('[data-sections="'+sections+'"]').closest('li').show();
                });
            }
            $tabList.stop().slideUp(200);
        });

        //계열사 list
        var $subBtn = $('.location_wrap .list_wrap .list li a');
        var dataPosX;
        var dataPosY;
        $subBtn.click(function(e){
            e.preventDefault();
            $('.location_info .company').html($(this).data('name'));
            $('.location_info #info_addr').html($(this).data('addr'));
            $('.location_info #info_tel_tit').html($(this).data('tel_title'));
            $('.location_info #info_tel').html($(this).data('tel'));
            
            dataPosX = $(this).attr("data-posx");
            dataPosY = $(this).attr("data-posy");
            mapFunc(dataPosX, dataPosY);
            $subBtn.removeClass('on');
            $(this).addClass('on');
        });

        //지도 api 함수
        function mapFunc(posX, posY){
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
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