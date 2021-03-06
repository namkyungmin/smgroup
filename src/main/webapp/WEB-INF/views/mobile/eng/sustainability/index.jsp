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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, Sustainable Management, Ethical Management, Shared Growth Management, Environmental Management, Social Contribution, SM Sustainable Management">
<meta name="description" content="This page introduces SM Group’s sustainable management plan. The SM Group aspires to create shared values in addition to having socially responsible management.">
<title>Sustainable Management | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub sustainability main">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
            <div class="visual">
                <div class="main_tit">
                    <h2>Sustainable Management</h2>
                <p>The SM Group aspires to create shared values in<br> addition to having socially responsible<br> management.</p>
                </div> 
            </div>
            <div class="visual_layer"></div>
            <div id="contents" class="contents">
                <div class="section sec1 sec_full">
                    <div class="title">
                        <h3>Ethical Management</h3>
                    </div>
                    <div class="sec_inner">
                        <p>
                            Establish and practice ethical conduct for the SM Group employees to abide by. We strive for management success within fair and ethical frameworks. 
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/eng/sustainability/ethics/list.do" class="common_btn type04">
                                <span>More</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section sec2 sec_full">
                    <div class="title">
                        <h3>Mutual Growth Management</h3>
                    </div>
                    <div class="sec_inner">
                        <p>
                            The SM Group perceives our partner’s growth as the foundation and source of competitiveness of our own company. We strive for mutual growth with our partners.
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/eng/sustainability/partnership/list.do" class="common_btn type04">
                                <span>More</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section sec3 sec_full">
                    <div class="title">
                        <h3>Environmental Management</h3>
                    </div>
                    <div class="sec_inner">
                        <p>
                            The SM Group promotes green growth for environmentally sustainable practices. For this, we establish, execute, and maintain a green management system.
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/eng/sustainability/environment/list.do" class="common_btn type04">
                                <span>More</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section sec4 sec_full">
                    <div class="title">
                        <h3>Social Contribution</h3>
                    </div>
                    <div class="sec_inner">
                        <p>
                            The SM Group hopes for a better tomorrow. We support our neighbors who are in need, thus creating a hopeful new world. 
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/eng/sustainability/social-contribution/list.do" class="common_btn type04">
                                <span>More</span>
                            </a>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        var $window = $(window),
            scrollTop,
            isScrolling = false,
            $header = $('#header'),
            $subsidiary = $header.find('.subsidiary_wrap'),
            $visual = $(".visual"),
            $visualLayer = $(".visual_layer");

        $window.on("scroll", function () {
            //bg opacity
            scrollTop = $window.scrollTop();
            var windowH = $(window).height();
			var visualOp = (scrollTop / windowH) * 1.3;
            
			if (scrollTop < windowH){
				if(visualOp >= 1) {visualOp = 1;}
	            $visualLayer.css('opacity', visualOp);
			};

            //header
            if ( scrollTop >= windowH - 65 ) {
                isScrolling = true;
                $header.addClass('on');
            } else {
                if ( $('html, body').hasClass('not_scroll') || $subsidiary.hasClass('on')) {
                    isScrolling = true;
                    $header.addClass('on');
                } else {
                    isScrolling = false;
                    $header.removeClass('on');
                }
            }
        });
    </script>
</body>
</html>