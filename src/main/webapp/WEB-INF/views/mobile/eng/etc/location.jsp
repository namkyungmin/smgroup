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
<%@ include file="/include/eng/mobile/header.jsp" %>
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00c975bfbb360330cd22b2a5a150b233"></script> -->
<meta name="description" content="This page is about directions to get to the SM Group.">
<title>Directions | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub etc location">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Directions</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="section">
                    <!--s: 본사 -->
                    <div class="location_wrap head_office">
                        <p class="company">
                            SM Group
                        </p>
                        <div class="location_info">
                            <div class="info_wrap">
                                <div class="address">
                                    <p class="tit">Address</p>
                                    <p class="cont">
                                        Seoul-si, Ganseo-gu, Magok Jungang 8-ro 78 SM R&D Center
                                    </p>
                                </div>
                                <div class="subway">
                                    <p class="tit">Public Transport</p> 
                                    <p class="cont">
                                        Exit 1, 9 of Balsan Station of Subway Line 5
                                    </p>
                                </div>
                            </div>
                            <div id="map1" class="map_wrap" data-posx="37.560825" data-posy="126.836394"></div>
                        </div>
                    </div>
                    <!--//e: 본사 -->

                    <!--s: tab_wrap -->
                    <div class="tab_wrap">
                        <p class="selected">Manufacturing</p>
                        <ul>
                            <li>
                                <a href="javascript:void(0);">Manufacturing</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">Construction</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">Shipping Industry</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">Media&middot;Service</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">Leisure</a>
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
                                            ${row.NAME_EN}
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">Address</p>
                                                <p class="cont">
                                                    ${row.ADDR_EN}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">TEL</p> 
                                                <p class="cont">
                                                    ${row.TEL_EN}
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
                                            ${row.NAME_EN}
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR_EN}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL_EN}
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
                                            ${row.NAME_EN}
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR_EN}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL_EN}
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
                                            ${row.NAME_EN}
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR_EN}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL_EN}
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
                                            ${row.NAME_EN}
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                    </a>
                                    <div class="location_info">
                                        <div class="info_wrap">
                                            <div class="address">
                                                <p class="tit">주소</p>
                                                <p class="cont">
                                                    ${row.ADDR_EN}
                                                </p>
                                            </div>
                                            <div class="subway">
                                                <p class="tit">전화번호</p> 
                                                <p class="cont">
                                                    ${row.TEL_EN}
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
                <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/mobile/common.jsp" %>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA31HuWfX2TGS9c758hiPS748jph1iRdqE&region=KR&callback=initMap&language=en" async="" defer=""></script>
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

        //아코디언 관련
        $accodianEl.click(function(e){
            e.preventDefault();
            $(this).toggleClass('on').parent().siblings().find('.company').removeClass('on');
            $(this).next().toggleClass('on').parent().siblings().find('.company').next().removeClass('on');
        });

        //계열사
        function initMap() {
            $('.map_wrap').each(function(){
                var mapId = $(this).attr('id');
                var PosX = $(this).attr("data-posx");
                var PosY = $(this).attr("data-posy");
                var dataPosX = Number(PosX);
                var dataPosY = Number(PosY);
                var dataPos = { lat: dataPosX ,lng: dataPosY };
                var map = new google.maps.Map(
                    document.getElementById(mapId), {
                    zoom: 15,
                    center: dataPos
                });   

                // The marker, positioned at Uluru
                const marker = new google.maps.Marker({
                    position: dataPos,
                    map: map,
                });
            });
        };
    </script>
</body>
</html>