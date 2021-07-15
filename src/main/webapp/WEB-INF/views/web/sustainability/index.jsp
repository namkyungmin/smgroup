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
<meta name="keywords" content="SM그룹, SM그룹 지속가능경영, 지속가능경영, 경영철학, 윤리경영, 상생경영, 환경경영, 사회공헌, SM 지속가능경영, 에스엠 지속가능경영, 에스엠그룹, 에스엠그룹 지속가능경영">
<meta name="description" content="SM그룹 지속가능경영 페이지입니다. SM그룹은 사회책임경영을 넘어서는 공유가치 창출을 추구합니다.">
<title>지속가능경영 | SM그룹</title>
<link rel="stylesheet" type="text/css" href="/resource/css/fullpage.css" />
<style>
	#fp-nav.fp-right{right:50%; margin-right:-700px;}
	#fp-nav ul li a span, .fp-slidesNav ul li a span{width:8px; height:8px; background:none; border:2px solid rgba(255,255,255,.6);}
	#fp-nav ul li a.active span, .fp-slidesNav ul li a.active span, #fp-nav ul li:hover a.active span, .fp-slidesNav ul li:hover a.active span{background:#fff;}
	#fp-nav ul li:last-child{display:none;}
</style>
</head>

<body>
    <div id="wrap" class="sub sustainability main">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<div id="fullpage">
                <div class="section" id="section0">
                    <div class="main_tit">
                        <p class="txt1" data-motion="fadeIn">Sustainable Management</p>
                        <h2 data-motion="fadeIn">지속가능경영</h2>
                        <p data-motion="fadeIn">SM그룹은 사회책임경영을 넘어서는 공유가치 창출을 추구합니다.</p>
                    </div> 
                </div>
                <div class="section" id="section1">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>윤리준법경영</h3>
                            <p>Ethical Compliance Management</p>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    SM그룹 조직 구성원이 지켜야 할 윤리강령을 제정하고 실천합니다.<br>건전한 윤리적 규율 안에서 경영성공을 추구합니다.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/sustainability/ethics/list.do" class="common_btn type04">
                                        <span>자세히 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section2">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>상생경영</h3>
                            <p>Mutual Growth Management</p>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    SM그룹은 협력회사의 성장을 우리 그룹의 경쟁력 원천이자 뿌리로 보고 있으며<br>협력회사와의 동반 성장을 추구합니다.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/sustainability/partnership/list.do" class="common_btn type04">
                                        <span>자세히 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section3">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>환경경영</h3>
                            <p>Environmental Management</p>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    SM그룹은 환경적 지속 가능성 개선을 위해 녹색성장을 추구하고 있습니다. <br>이를 위하여 녹색경영시스템을 수립, 실행, 유지해 나아가고자 합니다.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/sustainability/environment/list.do" class="common_btn type04">
                                        <span>자세히 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section4">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>사회공헌</h3>
                            <p>Social Contribution</p>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    SM그룹은 더 나은 세상을 위한 내일의 희망을 키웁니다.<br>도움이 필요한 이웃에 대한 지원으로 삶의 새희망을 전달하는 세상을 만들어 갑니다.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/sustainability/social-contribution/list.do" class="common_btn type04">
                                        <span>자세히 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="section fp-auto-height" id="section5">
                    <%@ include file="/include/footer.jsp" %>
                </div>
            </div>
            <%@ include file="/include/floating.jsp" %>
        </div>
        
	</div>
    <%@ include file="/include/common.jsp" %>
    <script type="text/javascript" src="/resource/js/lib/fullpage.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.1/TweenMax.min.js"></script>
    <script>
        smGroup.stickyGnb();

        var isScrolling = false;
		var $topSec = $("#section0"), $motionElm = $topSec.find("[data-motion='fadeIn']");
		var topBgTween = new TimelineMax(), topTextTween = new TimelineMax();
        var myFullpage = new fullpage('#fullpage', {
            licenseKey: '498CFFC8-84564252-8A0832C7-81EE6C6B',
            // verticalCentered: false,
            navigation: true,
            navigationPosition: 'right',
            css3:false,
			onLeave: function(origin, destination, direction){ 
				console.log(destination);
				var txt = $(destination.item).find("[data-motion='fadeIn']");
				var tit = $(destination.item).find(".title");
				var target1 = $(destination.item).find(".fp-tableCell").children(".cont_wrap");
				var txtFadeTween = new TimelineMax(), boxTween = new TimelineMax(), titTween = new TimelineMax();
				txtFadeTween.staggerTo(txt, 0.6, {opacity:1}, 0.3);
/*				if(direction == "down"){
					titTween.fromTo(tit, 1, {y:120, opacity : 0},{y:80, opacity:1} , 0.5)
									.to(tit, 0.7, {y:0});
					boxTween.fromTo(target1, 1, {y:500},{y:0} , 1.1);
				};
				setTimeout(function(){
					txtFadeTween.staggerTo(txt, 0.6, {opacity:1}, 0.3);
				},1900);*/
			},
            afterLoad: function(origin, destination, direction){
                var $header = $('#header'),
                    $subsidiaryWrap = $(".subsidiary_wrap"),
                    $btnSubsidiary = $header.find(".util_wrap .subsidiary a"),
                    $btnLang = $header.find(".btn.lang");
                $btnLang.removeClass('on');
                $subsidiaryWrap.removeClass('on');
                $btnSubsidiary.removeClass('on').text("계열사");
                if(destination.index == 0){
                    isScrolling = false;
                    $header.removeClass('on');
                } else {
                    isScrolling = true;
                    $header.addClass('on');
                }
            }
        });
		myFullpage.setScrollingSpeed(1000);
		
		//top motion
		topBgTween.set($motionElm, {opacity:0})
                    .fromTo($topSec, 1, {scale : 1.2}, {scale : 1, ease: Power1.ease0ut})
                    .staggerFromTo($motionElm, 2.5, {opacity:0}, {opacity:1, ease : Power2.easeOut}, 0.4);
    </script>
</body>
</html>