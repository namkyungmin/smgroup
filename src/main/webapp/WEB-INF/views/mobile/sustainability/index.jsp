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
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, SM그룹 지속가능경영, 지속가능경영, 경영철학, 윤리경영, 상생경영, 환경경영, 사회공헌, SM 지속가능경영, 에스엠 지속가능경영, 에스엠그룹, 에스엠그룹 지속가능경영">
<meta name="description" content="SM그룹 지속가능경영 페이지입니다. SM그룹은 사회책임경영을 넘어서는 공유가치 창출을 추구합니다.">
<title>지속가능경영 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub sustainability main">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
            <div class="visual">
                <div class="main_tit">
                    <p class="txt1">Sustainable Management</p>
                    <h2>지속가능경영</h2>
                    <p>SM그룹은 사회책임경영을 넘어서는<br> 공유가치 창출을 추구합니다.</p>
                </div> 
            </div>
            <div class="visual_layer"></div>
            <div id="contents" class="contents">
                <div class="section sec1 sec_full">
                    <div class="title">
                        <h3>윤리경영</h3>
                        <p>Ethical Management</p>
                    </div>
                    <div class="sec_inner">
                        <p>
                            SM그룹 조직 구성원이 지켜야 할 윤리강령을 제정하고 실천합니다. 건전한 윤리적 규율 안에서 경영성공을 추구합니다.
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/sustainability/ethics/list.do" class="common_btn type04">
                                <span>자세히 보기</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section sec2 sec_full">
                    <div class="title">
                        <h3>상생경영</h3>
                        <p>Mutual Growth Management</p>
                    </div>
                    <div class="sec_inner">
                        <p>
                            SM그룹은 협력회사의 성장을 우리 그룹의 경쟁력 원천이자 뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/sustainability/partnership/list.do" class="common_btn type04">
                                <span>자세히 보기</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section sec3 sec_full">
                    <div class="title">
                        <h3>환경경영</h3>
                        <p>Environmental Management</p>
                    </div>
                    <div class="sec_inner">
                        <p>
                            SM그룹은 환경적 지속 가능성 개선을 위해 녹색성장을 추구하고 있습니다. 이를 위하여 녹색경영시스템을 수립, 실행, 유지해 나아가고자 합니다.
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/sustainability/environment/list.do" class="common_btn type04">
                                <span>자세히 보기</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section sec4 sec_full">
                    <div class="title">
                        <h3>사회공헌</h3>
                        <p>Social Contribution</p>
                    </div>
                    <div class="sec_inner">
                        <p>
                            SM그룹은 더 나은 세상을 위한 내일의 희망을 키웁니다. 도움이 필요한 이웃에 대한 지원으로 삶의 새희망을 전달하는 세상을 만들어 갑니다.
                        </p>
                        <div class="btn_wrap">
                            <a href="/mobile/sustainability/social-contribution/list.do" class="common_btn type04">
                                <span>자세히 보기</span>
                            </a>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
    <%@ include file="/include/mobile/common.jsp" %>
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