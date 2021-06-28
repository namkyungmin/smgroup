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
<meta name="keywords" content="SM Group, SM Group CI, CI, SM CI">
<meta name="description" content="This is SM Group’s CI. ">
<title>CI | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub ci">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>CI</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="section sec1">
                    <div class="tit_wrap">
                        <h4>Signature</h4>
                    </div>
                    <img src="/resource/eng/mobile/images/company/ci_img01.jpg" alt="">
                    <p>
                        The SM Group's watermark reflects its long-term management strategy focusing on unrelenting challenge, passion, and innovation. The red symbolizes SM people’s positive attitude toward creative challenge and not being afraid of change or innovation. <br>The shaded part of the SM watermark represents the sunrise, embodying the SM Group's will to benefit the whole world as built on a foundation of customer satisfaction and trust.
                    </p>
                </div>
                <div class="section sec2 sec_full">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>Color System</h4>
                            <p class="sub_tit">
                                The SM Group color system consists of two colors (SM Red, SM Black) For a unified brand image, the two brand colors must be used in a consistent manner.
                            </p>
                        </div>
                        <div class="color">
                            <div class="red">
                                <p><em>SM Red</em><br>PANTONE 3546C</p>
                                <span>C:5 M:100 Y:100 K:0 R:227 G:31 B:38</span>
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
                        <img src="/resource/eng/mobile/images/company/ci_img02.jpg" alt="">
                        <ul>
                            <li class="el1">
                                <i>01</i>
                                <span>C:5  M:100  Y:100  K:0<br>R:227  G:31  B:38</span>
                            </li>
                            <li class="el2">
                                <i>02</i>
                                <span>C:5  M:100  Y:100  K:0<br>R:227  G:31  B:38</span>
                            </li>
                            <li class="el3">
                                <i>03</i>
                                <span>C:5  M:50  Y:100  K:0<br>R:247  G:148  B:29</span>
                            </li>
                        </ul>
                    </div>
                    <div class="btn_wrap two">
                        <a href="/resource/eng/mobile/file/SM CI_JPG.zip" class="common_btn download small" target="_blank" title="새 창 바로 열기"><span>JPG File Download</span></a>
                        <a href="/resource/eng/mobile/file/SM CI_AI.zip" class="common_btn download small"><span>AI File Download</span></a>
                    </div>
                </div>
                <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>