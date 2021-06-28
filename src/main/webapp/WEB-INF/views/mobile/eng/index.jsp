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
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no">
		<meta property="og:title" content="SM Group" />
		<meta property="og:description" content="SM Group, the first-rate global group." />
		<meta property="og:image" content="http://www.smgroup.co.kr/resource/images/common/og_img.jpg" />
		<meta name="keywords" content="SM Group, SM Group Businees, SM Group Midea, SM Group News, SM Group Recruitment">
		<meta name="description" content="SM Group, the first-rate global group.">
		<link rel="shortcut icon" href="/resource/images/common/favicon.ico">
		<link rel="stylesheet" href="/resource/eng/mobile/css/jquery-ui.css">
		<link rel="stylesheet" href="/resource/eng/mobile/css/common.css">
		<link rel="stylesheet" href="/resource/eng/mobile/css/index.css">
		<link rel="stylesheet" href="/resource/eng/mobile/css/slick.css">
		<link rel="stylesheet" href="/resource/eng/mobile/css/slick-theme.css">
		<title>SM Group | Mobile</title>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-178669790-2"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());

			gtag('config', 'UA-178669790-2');
		</script>
	</head>
	<body>
		<div id="wrap" class="main">
			<%@ include file="/include/eng/mobile/gnb.jsp" %>
			<div id="container">
				<div class="visual">
					<div class="main_visual">
						<div>
							<img src="/resource/eng/mobile/images/main/img_main_slide01.jpg" alt="">
							<p class="txt">
								<img src="/resource/eng/mobile/images/main/txt_main_slide01.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/eng/mobile/images/main/img_main_slide02.jpg" alt="">
							<p class="txt">
								<img src="/resource/eng/mobile/images/main/txt_main_slide02.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/eng/mobile/images/main/img_main_slide03.jpg" alt="">
							<p class="txt">
								<img src="/resource/eng/mobile/images/main/txt_main_slide03.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/eng/mobile/images/main/img_main_slide04.jpg" alt="">
							<p class="txt">
								<img src="/resource/eng/mobile/images/main/txt_main_slide04.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/eng/mobile/images/main/img_main_slide05.jpg" alt="">
							<p class="txt">
								<img src="/resource/eng/mobile/images/main/txt_main_slide05.png" alt="">
							</p>
						</div>
						<!-- <span class="ico_scroll">
							<img src="/resource/eng/mobile/images/main/ico_scroll.png" alt="">
						</span> -->
					</div>
				</div>
				<div class="section sec01">
					<div class="sec_inner">
						<p class="small_tit">OUR BUSINESS</p>
						<ul class="business_list">
							<li>
								<a href="/mobile/eng/business/manufacturing.do">
									<p class="eng">Manufacturing</p>
								</a>
							</li>
							<li>
								<a href="/mobile/eng/business/construction.do">
									<p class="eng">Construction</p>
								</a>
							</li>
							<li>
								<a href="/mobile/eng/business/shipping-industry.do">
									<p class="eng">Shipping Industry</p>
								</a>
							</li>
							<li>
								<a href="/mobile/eng/business/media-service.do">
									<p class="eng">Media&middot;Service</p>
								</a>
							</li>
							<li>
								<a href="/mobile/eng/business/leisure.do">
									<p class="eng">Leisure</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="section sec02">
					<ul class="cont_wrap">
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR VALUE</span>
								<p class="big_tit">
									We create the value of tomorrow throughout the world
								</p>
							</div>
							<p class="txt">
								For a better future, for bigger growth A global corporation that continues to achieve customer satisfaction; the SM Group defines the values of tomorrow. 
							</p>
							<div class="btn_wrap">
								<a href="/mobile/eng/company/overview.do" class="common_btn type02">
									<span>Go to About Us</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR BEGIN</span>
								<p class="big_tit">
									We lead tomorrow,<br>creating values that move the world
								</p>
							</div>
							<p class="txt">
								Trust from clients is the most important value to us. Today and tomorrow, we create a better life. 
							</p>
							<div class="btn_wrap">
								<a href="/mobile/eng/sustainability/ethics/list.do" class="common_btn type02">
									<span>Go to Ethical Management</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR COMPANION</span>
								<p class="big_tit">
									United SM Group,<br> we lead future success

								</p>
							</div>
							<p class="txt">
								The SM Group sees our partner’s growth as a foundation and source of competitiveness for our own company. We strive for mutual growth with our partners.
							</p>
							<div class="btn_wrap">
								<a href="/mobile/eng/sustainability/partnership/list.do" class="common_btn type02">
									<span>Go to Mutual Growth Management</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR FUTURE</span>
								<p class="big_tit">
									We protect the environment for future generations
								</p>
							</div>
							<p class="txt">
								The SM Group continues to strive for green development to achieve environmentally sustainable growth.  
							</p>
							<div class="btn_wrap">
								<a href="/mobile/eng/sustainability/environment/list.do" class="common_btn type02">
									<span>Go to Environmental Management</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR HOPE</span>
								<p class="big_tit">
									We believe in hope for tomorrow, for a better world
								</p>
							</div>
							<p class="txt">
								A corporation that fulfills its social responsibilities We contribute to a better tomorrow and positive social change.
							</p>
							<div class="btn_wrap">
								<a href="/mobile/eng/sustainability/social-contribution/list.do" class="common_btn type02">
									<span>Go to Social Contributions</span>
								</a>
							</div>
						</li>
					</ul>
					<div class="slide_wrap">
						<div>
							<div class="img_wrap">
								<img src="/resource/eng/mobile/images/main/img_main_sec02_slide01.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/eng/mobile/images/main/img_main_sec02_slide02.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/eng/mobile/images/main/img_main_sec02_slide03.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/eng/mobile/images/main/img_main_sec02_slide04.png" alt="">
								<div class="circle"></div>
							</div>									
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/eng/mobile/images/main/img_main_sec02_slide05.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
					</div>
				</div>  
				<div class="section sec03">
					<div class="sec_inner">
						<div class="tit_wrap">
							<p class="small_tit">WE ARE SM PEOPLE</p>
							<p class="big_tit">
								The SM Group is looking to<br>
								recruit talent.
							</p>
						</div>
						<div class="btn_wrap">
							<a href="/mobile/eng/recruit/sm-resource.do" class="common_btn type02">
								<span>Go to Desired Talents</span>
							</a>
							<img src="/resource/eng/mobile/images/main/img_sec02.png" alt="" class="person">
						</div>
					</div>
				</div>
				<%@ include file="/include/eng/mobile/floating.jsp" %>
			</div>
			<%@ include file="/include/eng/mobile/footer.jsp" %>
			<!-- 메인 팝업 영역 -->
			<c:choose>
				<c:when test="${fn:length(main_popup)>0}">
				<div class="main_popup">
				<!-- 'popup_wrap' 최대 4개까지 생성, id="popup + 'number'" -->

					<c:forEach items="${main_popup }" var="row" varStatus="status">
					
					<div class="popup_wrap" id="popup${row.IDX}" data-popup="main">
						<div class="pop_inner">
							<a href="${empty row.VIDEO?'#none':row.VIDEO}" ${row.RECOM=='Y'?'target="_blank"':''}>
								<img src="${row.IMG_NAME }" alt="">
							</a>
							<div class="close_area">
								<a href="javascript:chkdayClose(${row.IDX});" class="chkday">Do not show for one day</a>
								<a href="javascript:popupClose(${row.IDX});" class="main_pop_close">Close</a>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
			<!-- //메인 팝업 영역 -->
		</div>
		<%@ include file="/include/eng/mobile/common.jsp" %>
	</body>
	<script>
		smGroup.stickyGnb();
		smGroup.popup();

		// 팝업 오늘 하루 보지 않기 설정
		function setCookie(name, value, expiredays) {
            var todayDate = new Date();
            todayDate.setDate( todayDate.getDate() + expiredays );
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
        }

        function getCookie(id){
            var cookiedata = document.cookie;
            if ( cookiedata.indexOf(id + "=done") < 0 ){
                $("#" + id).addClass("on");
            } else {
                $("#" + id).removeClass("on");
            }
		}

		function popupClose(id){
			$("#popup" + id).removeClass("on");
		}

		function chkdayClose(id){
			$("#popup" + id).removeClass("on");
			setCookie("popup" + id, "done", 1);
		}

		$(".main_popup").find(".popup_wrap").each(function(index, item){
			getCookie($(item).attr('id'));
		});
 
		//main slider
		$('.main_visual').slick({
			
			dots : true,
			infinite: true,
			autoplay: true,
			autoplaySpeed: 4000,
			fade: true,
			cssEase: 'linear',
			arrows: false,
		});
		$('.main_visual').on('touchcancel touchmove', e => {
			$('.main_visual').slick('slickPlay');
		});


		//sec02 slider
		$('.sec02 .slide_wrap').slick({
			dots : true,
			infinite: true,
			autoplay: true,
			autoplaySpeed: 4000,
			fade: true,
			cssEase: 'linear',
			arrows: false,
		});
		$('.sec02 .slide_wrap').on('touchcancel touchmove', e => {
			$('.sec02 .slide_wrap').slick('slickPlay');
		});
		var $sec02Cont = $('.sec02 .cont_wrap li');
		var sec02SlideLen = $('.sec02 .slide_wrap .swiper-slide').length-4;
		$('.sec02 .slide_wrap').on('beforeChange', function(event, slick, currentSlide, nextSlide){
			var index = nextSlide;
			$sec02Cont.eq(index).fadeIn().siblings().fadeOut();
		});
	</script>
</html>
