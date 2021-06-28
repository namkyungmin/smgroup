<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/include/eng/header.jsp" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00c975bfbb360330cd22b2a5a150b233"></script>
<meta name="description" content="This page is about directions to get to the SM Group.">
<title>Directions | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub etc location">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Directions</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">Home</li>
                <li class="depth2">Directions</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <div class="location_wrap">
                        <div class="map_wrap">
                            <div id="map"></div>
                            <!-- s: 계열사 정보 -->
                            <div class="location_info">
                                <p class="company">SM Group</p>
                                <div class="info_wrap">
                                    <p class="tit">Address</p>
                                    <p class="cont" id="info_addr">Seoul-si, Ganseo-gu, Magok Jungang 8-ro 78 SM R&D Center</p>
                                </div>
                                <div class="info_wrap">
                                    <p class="tit" id="info_tel_tit">Public Transport</p>
                                    <p class="cont" id="info_tel">Exit 1, 9 of Balsan Station of Subway Line 5</p>
                                </div>
                            </div>
                            <!--// e: 계열사 정보 -->
                        </div>
                        <div class="list_wrap">
                            <!-- s: 계열사 탭 -->
                            <div class="category_wrap">
                                <p class="selected">
                                    <a href="#">All</a> 
                                </p>
                                <ul class="tab_box">
                                    <li>
                                        <a href="#" data-sections="all">All</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="manu">Manufacturing</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="const">Construction</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="ship">Shipping Industry</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="media">Media&middot;Service</a>
                                    </li>
                                    <li>
                                        <a href="#" data-sections="leisure">Leisure</a>
                                    </li>
                                </ul>
                            </div>
                            <!--// e: 계열사 탭 -->
                            <!-- s: 계열사 리스트 -->
                            <div class="list">
                                <ul>
                                    <li>
                                        <a href="#" data-posx="37.560825" data-posy="126.836394" data-sections="all" data-name="SM Group" data-addr="Seoul-si, Ganseo-gu, Magok Jungang 8-ro 78 SM R&D Center" data-tel_title="Public Transport" data-tel="Exit 1, 9 of Balsan Station of Subway Line 5" class="on">SM Group</a>
                                    </li>
                                    <c:choose>
                                        <c:when test="${fn:length(list)>0}">
                                            <c:forEach items="${list }" var="row">
                                            <li>
                                                <a href="#" data-posx="${row.LAT }" data-posy="${row.LNG }" data-sections="${row.SECTIONS=='brand'?'const':row.SECTIONS }" data-name="${row.NAME_EN}" data-addr="${row.ADDR_EN}" data-tel_title="TEL" data-tel="${row.TEL_EN}">
                                                ${row.NAME_EN }
                                                <c:if test="${not empty row.NAME_SUB_EN}">
                                                <span>${row.NAME_SUB_EN }</span>
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
        <%@ include file="/include/eng/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/common.jsp" %>
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

            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

            // 마커가 표시될 위치입니다 
            var markerPosition  = new kakao.maps.LatLng(posX, posY); 

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);
        };

        

    </script>
</body>
</html>