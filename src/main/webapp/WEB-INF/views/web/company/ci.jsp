<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, SM그룹 CI, CI, SM CI, 에스엠 CI, 에스엠그룹, 에스엠그룹 CI">
<meta name="description" content="SM그룹 CI 페이지입니다.">
<title>CI | SM그룹</title>
</head>
<body>
    <div id="wrap" class="sub ci">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>CI</h2>
            </div>
            <!--// e: title -->
            <!-- s: breadcrumb -->
                <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">SM그룹</li>
                <li class="depth2">CI</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section sec1">
                    <div class="tit_wrap">
                        <h4>Signature</h4>
                    </div>
                    <div class="img_wrap">
                        <img src="/resource/images/company/img_ci01.jpg" alt="">
                    </div>
                    <p class="sub_tit">
                        SM그룹의 워터마크는 끊임없는 도전과 열정, 혁신을 추구하는 SM그룹의 장기 경영 전략을 반영하여 개발되었으며, SM의 붉은색 톤 컬러는 창의적인 도전정신과 변화와 혁신을 두려워하지 않는 마음으로 항상 새로운 분야를 개척하는 SM People의 자세를 표현합니다.<br>
                        SM 워터마크의 음영 부분은 태양이 떠오르는 지구를 표현하며, 이는 고객만족과 신뢰로 삼라만상(세상)을 널리 이롭게 하겠다는 SM그룹의 의지를 담았습니다.
                    </p>
                </div>
                <div class="section sec2 section_full">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>Color System</h4>
                            <p class="sub_tit">
                                SM그룹 규정 색상은 두 가지로 구성되어 있습니다. (SM Red, SM Black)<br>단일 브랜드 이미지 형성을 위해 브랜드 색상의 일관된 구현이 필요합니다.
                            </p>
                        </div>
                        <div class="color">
                            <div class="red">
                                <p><em>SM Red</em><br>PANTONE 3546C</p>
                                <span>C:5 M:100 Y:100 K:0<br> R:227 G:31 B:38</span>
                            </div>
                            <div class="black">
                                <p><em>SM Black</em><br>PANTONE Black 6 C</p>
                                <span>C:0 M:0 Y:0 K:0<br>R:0 G:0 B:0</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section sec3">
                    <div class="tit_wrap">
                        <h4>Gradation</h4>
                    </div>
                    <div class="img_wrap">
                        <img src="/resource/images/company/img_ci02.jpg" alt="">
                    </div>
                    <div class="btn_wrap two">
                        <a href="/resource/file/SM CI_JPG.zip" class="common_btn download" target="_blank" title="새 창 바로 열기"><span>JPG 다운로드</span></a>
                        <a href="/resource/file/SM CI_AI.zip" class="common_btn download" target="_blank" title="새 창 바로 열기"><span>AI 다운로드</span></a>
                    </div>
                </div>
                <%@ include file="/include/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>