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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, Sustainable Management, Ethical Management, Shared Growth Management, Environmental Management, Social Contribution, SM Sustainable Management">
<meta name="description" content="This page introduces SM Group’s sustainable management plan. The SM Group aspires to create shared values in addition to having socially responsible management.">
<title>Sustainable Management | SM Group</title>
<link rel="stylesheet" type="text/css" href="/resource/eng/css/fullpage.css" />
<style>
	#fp-nav.fp-right{right:50%; margin-right:-700px;}
	#fp-nav ul li a span, .fp-slidesNav ul li a span{width:8px; height:8px; background:none; border:2px solid rgba(255,255,255,.6);}
	#fp-nav ul li a.active span, .fp-slidesNav ul li a.active span, #fp-nav ul li:hover a.active span, .fp-slidesNav ul li:hover a.active span{background:#fff;}
	#fp-nav ul li:last-child{display:none;}
</style>
</head>

<body>
    <div id="wrap" class="sub sustainability main">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<div id="fullpage">
                <div class="section" id="section0">
                    <div class="main_tit">
                        <h2 data-motion="fadeIn">Sustainable Management</h2>
                        <p data-motion="fadeIn">The SM Group aspires to create shared values in addition to having<br>socially responsible management.</p>
                    </div> 
                </div>
                <div class="section" id="section1">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>Ethical Management</h3>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    Establish and practice ethical conduct for the SM Group employees to abide by.<br>We strive for management success within fair and ethical frameworks. 
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/eng/sustainability/ethics/list.do" class="common_btn type04">
                                        <span>More</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section2">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>Mutual Growth Management</h3>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    The SM Group perceives our partner’s growth as the foundation and source of competitiveness of our own company. We strive for mutual growth with our partners.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/eng/sustainability/partnership/list.do" class="common_btn type04">
                                        <span>More</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section3">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>Environmental Management</h3>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    The SM Group promotes green growth for environmentally sustainable practices.<br>
                                    For this, we establish, execute, and maintain a green management system.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/eng/sustainability/environment/list.do" class="common_btn type04">
                                        <span>More</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section4">
                    <div class="tit_wrap">
                        <div class="title">
                            <h3>Social Contribution</h3>
                        </div>
                        
                    </div>
                    <div class="cont_wrap">
                        <div class="inner">
                            <div class="right">
                                <p data-motion="fadeIn">
                                    The SM Group hopes for a better tomorrow. We support our neighbors who are in need, thus creating a hopeful new world.
                                </p>
                                <div class="btn_wrap" data-motion="fadeIn">
                                    <a href="/eng/sustainability/social-contribution/list.do" class="common_btn type04">
                                        <span>More</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="section fp-auto-height" id="section5">
                    <%@ include file="/include/eng/footer.jsp" %>
                </div>
            </div>
            <%@ include file="/include/eng/floating.jsp" %>
        </div>
        
	</div>
    <%@ include file="/include/eng/common.jsp" %>
    <script type="text/javascript" src="/resource/js/lib/fullpage.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.1/TweenMax.min.js"></script>
    <script>
        smGroup.stickyGnb();

        var isScrolling = false;
		var $topSec = $("#section0"), $motionElm = $topSec.find("[data-motion='fadeIn']");
		var topBgTween = new TimelineMax(), topTextTween = new TimelineMax();
        var myFullpage = new fullpage('#fullpage', {
            licenseKey: '498CFFC8-84564252-8A0832C7-81EE6C6B',
            css3:false,
			navigation: true,
            navigationPosition: 'right',
			onLeave: function(origin, destination, direction){
				console.log(destination);
				var txt = $(destination.item).find("[data-motion='fadeIn']");
				var tit = $(destination.item).find(".title");
				var target1 = $(destination.item).find(".fp-tableCell").children(".cont_wrap");
				var txtFadeTween = new TimelineMax(), boxTween = new TimelineMax(), titTween = new TimelineMax();
				txtFadeTween.staggerTo(txt, 0.6, {opacity:1}, 0.3);
				/*if(direction == "down"){
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
                $btnSubsidiary.removeClass('on').text("Subsidiary");
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