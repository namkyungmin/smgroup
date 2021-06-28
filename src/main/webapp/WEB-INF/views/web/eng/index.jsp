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
		<meta name="viewport" content="width=1400" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta property="og:title" content="SM그룹" />
		<meta property="og:description" content="SM Group, the first-rate global group." />
		<meta property="og:image" content="http://www.smgroup.co.kr/resource/eng/images/common/og_img.jpg" />
		<meta name="keywords" content="SM Group, SM Group Businees, SM Group Midea, SM Group News, SM Group Recruitment">
		<meta name="description" content="SM Group, the first-rate global group.">
		<link rel="shortcut icon" href="/resource/eng/images/common/favicon.ico">
		<link rel="stylesheet" href="/resource/eng/css/jquery-ui.css">
		<link rel="stylesheet" href="/resource/eng/css/common.css">
		<link rel="stylesheet" href="/resource/eng/css/index.css">
		<link rel="stylesheet" href="/resource/eng/css/swiper.css">
		<title>SM Group</title>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-178669790-1"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());

			gtag('config', 'UA-178669790-1');
		</script>
	</head>
	<body>
		<div id="wrap" class="main">
			<%@ include file="/include/eng/gnb.jsp" %>
			<div id="container">
				<div class="main_visual">
					<div class="title_wrap">
						<div class="top_tit">WE ARE</div>
						<div class="btm_tit">
							<div class="front">
								INNOVATORS
							</div>
							<div class="bottom">
								CREATORS
							</div>    
							<div class="bottom">
								CHALLENGERS
							</div>    
							<div class="bottom">
								PARTNERS
							</div>    
							<div class="bottom">
								COMPANIONS
							</div> 
						</div>   
					</div>
					<div class="slide_wrap">
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video1" class="main_video">
								<source src="/resource/eng/images/main/video/main_video1.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video2" class="main_video">
								<source src="/resource/eng/images/main/video/main_video2.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video3" class="main_video">
								<source src="/resource/eng/images/main/video/main_video3.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video3" class="main_video">
								<source src="/resource/eng/images/main/video/main_video4.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video3" class="main_video">
								<source src="/resource/eng/images/main/video/main_video5.mp4" type="video/mp4">
							</video>
						</div>
					</div>
					<div class="controls control_area">
						<ul class="paging">
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/eng/business/manufacturing.do" class="category">
									Manufacturing
									<div class="hover_area">
										<div class="effect">
											<p class="tit">Manufacturing</p>
											<!-- <p class="eng_tit">Manufacture</p> -->
											<p class="ico_area"></p>
											<p class="cont">
												We make research and development of eco-friendly, high-efficiency products a priority, and we focus on future value.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/eng/business/construction.do" class="category">
									Construction
									<div class="hover_area">
										<div class="effect">
											<p class="tit">Construction</p>
											<!-- <p class="eng_tit">Construction</p> -->
											<p class="ico_area"></p>
											<p class="cont">
												We create the future as a global construction company; we are recognized around the world for our diverse experience and new technologies.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/eng/business/shipping-industry.do" class="category">
									Shipping Industry
									<div class="hover_area">
										<div class="effect">
											<p class="tit">Shipping Industry</p>
											<!-- <p class="eng_tit">Shipping Industry</p> -->
											<p class="ico_area"></p>
											<p class="cont">
												The SM Group creates and pioneers shipping culture through fast and safe delivery.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/eng/business/media-service.do" class="category">
									Media&middot;Service
									<div class="hover_area">
										<div class="effect">
											<p class="tit">Media&middot;Service</p>
											<!-- <p class="eng_tit">Media Service</p> -->
											<p class="ico_area"></p>
											<p class="cont">
												We are creating a better world by developing  advanced IT technologies and new markets.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/eng/business/leisure.do" class="category">
									Leisure
									<div class="hover_area">
										<div class="effect">
											<p class="tit">Leisure</p>
											<!-- <p class="eng_tit">Leisure</p> -->
											<p class="ico_area"></p>
											<p class="cont">
												We provide sophisticated and trendy services and facilities through 'TOPS 10’, a premium brand in Korea.
											</p>
										</div>
									</div>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="section sec01">
					<div class="sec_inner">
						<div class="bg_area">
							<div class="back">
								<img src="/resource/eng/images/main/bg_sec01.jpg" alt="">
							</div>
							<img src="/resource/eng/images/main/circle_sec01.png" alt="" class="front_img">
						</div>
						<div class="deco_area"></div>
						<div class="inner_top">
							<div class="tab_wrap">
								<a href="#" class="on">About Us</a>
								<a href="#">Ethical<br>Management</a>
								<a href="#">Mutual Growth<br>Management</a>
								<a href="#">Environmental<br>Management</a>
								<a href="#">Social<br>Contributions</a>
							</div>
							<ul class="cont_wrap">
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR VALUE</span>
											<p class="obj obj02">
												<span class="box"><span>We create the value</span></span>
												<span class="box"><span>of tomorrow</span></span>
												<span class="box"><span>throughout the world</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											For a better future, for bigger growth A global corporation that continues to achieve customer satisfaction; the SM Group defines the values of tomorrow.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR BEGIN</span>
											<p class="obj obj02">
												<span class="box"><span>We lead tomorrow,</span></span>
												<span class="box"><span>creating values that</span></span>
												<span class="box"><span>move the world</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											Trust from clients is the most important value to us. Today and tomorrow, we create a better life.</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR COMPANION</span>
											<p class="obj obj02">
												<span class="box"><span>United SM Group,</span></span>
												<span class="box"><span>we lead future success</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											The SM Group sees our partner’s growth as a foundation and source of competitiveness for our own company. We strive for mutual growth with our partners.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR FUTURE</span>
											<p class="obj obj02">
												<span class="box"><span>We protect the</span></span>
												<span class="box"><span>environment for</span></span>
												<span class="box"><span>future generations</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											The SM Group continues to strive for green development to achieve environmentally sustainable growth.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR HOPE</span>
											<p class="obj obj02">
												<span class="box"><span>We believe in hope</span></span>
												<span class="box"><span>for tomorrow, for a</span></span>
												<span class="box"><span>better world</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											A corporation that fulfills its social responsibilities<br>
											We contribute to a better tomorrow and positive social change. 
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="slide_wrap">
							<div class="track">
								<ul class="slide1 slide">
									<li class="pd01">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value1_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value1_2.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value1_3.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/eng/company/overview.do" class="common_btn type02">
												<span>Go to About Us</span>
											</a>
										</div>
									</li>
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value1_4.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide2 slide">
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value2_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value2_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/eng/sustainability/ethics/list.do" class="common_btn type02">
												<span>Go to Ethical Management</span>
											</a>
										</div>
									</li>
									<li class="pd03">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value2_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide3 slide">
									<li class="pd04">
										<div class="box">
											<img src="/resource/eng/images/main/value3_1_finger.png" alt="" class="finger">
											<div class="bg"><img src="/resource/eng/images/main/value3_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<img src="/resource/eng/images/main/value3_2_finger.png" alt="" class="finger">
											<div class="bg"><img src="/resource/eng/images/main/value3_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/eng/sustainability/partnership/list.do" class="common_btn type02">
												<span>Go to Mutual Growth Management</span>
											</a>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value3_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide4 slide">
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value4_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value4_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/eng/sustainability/environment/list.do" class="common_btn type02">
												<span>Go to Environmental Management</span>
											</a>
										</div>
									</li>
									<li class="pd01">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value4_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide5 slide">
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value5_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value5_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<div class="bg"></div>
											<a href="/eng/sustainability/social-contribution/list.do" class="common_btn type02">
												<span>Go to Social Contributions</span>
											</a>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/eng/images/main/value5_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="section sec02 parallax-background">
					<div class="sec_inner">
						<p class="small_tit obj obj01">WE ARE SM PEOPLE</p>
						<p class="big_tit obj obj02">
							The SM Group is looking to<br>
							recruit talent.
						</p>
						<div class="btn_wrap obj obj03">
							<a href="/eng/recruit/sm-resource.do" class="common_btn type03">
								<span>Go to Desired Talents</span>
							</a>
						</div>
						<img src="/resource/eng/images/main/img_sec01.png" alt="" class="person obj obj04">
					</div>
				</div>
			</div>
			<%@ include file="/include/eng/footer.jsp" %>
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
		<%@ include file="/include/eng/common.jsp" %>
		
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

		var winW = $(window).width();
		// 비쥬얼 슬라이드 관련 변수
		var $visualSlide = $('.main_visual .slide_wrap'),
			visualSlide_len = $visualSlide.find('.slide').length,
			visualSlideIndex = 0,
			videos = document.getElementsByTagName('video'),
			videoTarget,
			$progress = $(".main_visual .controls .paging li"),
			$visualCategory = $('.main_visual .controls .paging li .category');
		var durationArr = [];

		window.onload = function() {
			setTimeout(function(){
				for ( var i = 0 ; i < videos.length ; i++ ){
					var tt = videos[i].duration * 1000;
					durationArr.push(tt);
				}
			},100)

			// 비쥬얼 슬라이드 초기화
			if ( $visualSlide.length > 0 ) {
				slideInit ();
				setTimeout(function(){
					visualSlideFunc(visualSlideIndex);
				},200);
			};
		};

		/** 
			*visual 영역
		**/
		// 비쥬얼 hover영역 마우스 진입 시
		$visualCategory.mouseenter(function(){
			$(this).find('.hover_area').addClass('on').closest('li').siblings().find('.hover_area').removeClass('on');
		}).mouseleave(function(){
			$(this).find('.hover_area').removeClass('on');
		});

		// 비쥬얼 슬라이드 초기화 함수
		function slideInit () {
			$progress.eq(0).find(".progress .fill").css('width', '0');
		};

		// 비쥬얼 슬라이드 실행 함수
		function visualSlideFunc (visualSlideIndex) {
			videoFunc(visualSlideIndex);
			setTimeout(function(){
				$visualSlide.find('.slide').removeClass('active');
				$visualSlide.find('.slide').eq(visualSlideIndex).addClass('active');
			},100);
			$('.paging li').removeClass('active');
			$('.paging li').eq(visualSlideIndex).addClass('active');
		};

		

		// 비쥬얼 슬라이드 비디오 재생관련 함수
		function videoFunc(index){
			videoTarget = videos[index];
			videoTarget.play();
			$progress.find(".progress .fill").stop(true, true).animate({width:"0"}, 100);
			$progress.eq(index).find(".progress .fill").stop(true, true).animate({width: "100%"}, durationArr[index]);

			if(videoTarget.currentTime > 0){ videoTarget.currentTime = 0; };
			videoTarget.onended = function(e) {
				$('.title_wrap .btm_tit > div').removeClass().addClass('bottom');
				if ( visualSlideIndex > visualSlide_len-2 ) { 
					visualSlideIndex = 0;
					$('.title_wrap .btm_tit > div').eq(4).removeClass().addClass('top');
				} else { 
					visualSlideIndex += 1;
					$('.title_wrap .btm_tit > div').eq(visualSlideIndex-1).removeClass().addClass('top');
				}
				$('.title_wrap .btm_tit > div').eq(visualSlideIndex).removeClass().addClass('front');
				
				visualSlideFunc(visualSlideIndex);
			};
		};

		function videoPause(index) {
			videoTarget = videos[index];
			$progress.eq(index).find(".progress .fill").stop(true, true).animate({width:"0"}, 100);
			videoTarget.pause();
			videoTarget.currentTime = 0;
		}

		/** 
			*visual 영역
		**/
		// sec01 슬라이드 관련 변수
		var $SlideTab = $('.sec01 .tab_wrap a'),
			$track = $(".sec01 .slide_wrap .track"),
			$slideUl,$slideLi,$textLi = $('.sec01 .cont_wrap li');
		var slidePosArr = [],
			initWidth,
			plusNum = 0,
			slideCnt = 0,
			tabCnt = 0,
			slideLeng = $SlideTab.length,
			slideInterval;


		/* sec01 슬라이드 초기화 */
		initWidth = $('.sec01 .slide_wrap .track ul').eq(0).find('li').eq(0).outerWidth();
		$track.append($track.html());
		$slideUl = $track.find('ul');
		$slideLi = $slideUl.find('li');
		$slideUl.each(function(index,item){
			// sec01 슬라이드 animate 위치 저장 
			if (index == 0) {
				slidePosArr.push(initWidth);
			}else{
				plusNum += $slideUl.eq(index-1).width();
				(index == slideLeng) ? ( slidePosArr.push(plusNum + initWidth) ) :  (slidePosArr.push(plusNum) ); // 첫번째 slide의 경우 슬라이드내 첫 이미지 넓이만큼 추가
			};
		});


		/* sec01 슬라이드 탭 클릭 시 */
		$SlideTab.on("click" , function(e){
			e.preventDefault();
			clearInterval(slideInterval);
			$(this).addClass('on').siblings().removeClass('on');
			slideCnt = tabCnt = $(this).index();
			sec01SlideFunc();
			slideInterval = setInterval(function(){
				slideCnt += 1;	
				sec01SlideFunc();
			},5000);
		});
		/*
		$SlideTab.click(function(e){
			e.preventDefault();
			clearInterval(slideInterval);
			slideCnt = $(this).index();
			tabCnt = slideCnt;
			$(this).addClass('on').siblings().removeClass('on');
			sec01SlideFunc(slideCnt);
			slideInterval = setInterval(function(){
				slideCnt += 1;
				sec01SlideFunc(slideCnt);
			},5000)
		});
		*/

		/* sec01 슬라이드 실행 함수 */
		function sec01SlideFunc() {
			(slideCnt == slideLeng) ?  (tabCnt = 0) : (tabCnt = slideCnt);
			imgMotion();
			$track.stop().animate({
				slideX : slidePosArr[slideCnt]
			},{
				step : function(now){
					var posX = Math.round(this.slideX);
					$track.css({
						transform : 'translate(-' + posX + 'px,0)'
					});
				},
				duration : 1000,
				complete : function(){
					if(slideCnt == slideLeng){
						slideCnt = 0;
						this.slideX = initWidth;
						setTimeout(function(){
							$track.css({transform : "translate(-"+  initWidth + "px,0)"});
						},1000);
					};
				}
			});
			/*
			$track.stop().animate({
				left: "-" + slidePosArr[slideCnt]
			},1000,function(){
				if(slideCnt == slideLeng){
					slideCnt = 0;
					$track.css('left', - initWidth);
					//$slideUl.eq(0).find('img').css('left', '-150px');
					console.log("last");
				};
			});
			*/
			$SlideTab.eq(tabCnt).addClass('on').siblings().removeClass('on');
			$textLi.eq(tabCnt).addClass("on").siblings().removeClass("on");
			/*
			$textLi.find('.obj').removeClass("on");
			$textLi.eq(tabCnt).find('.obj').addClass('on')
			*/
			/*
			setTimeout(function(){
				$textLi.eq(tabCnt).find('.obj').addClass('on');
			},500);
			*/
		};
		/*
		function sec01SlideFunc(currCnt) {
			slideCnt = currCnt;
			imgMotion(slideCnt);
			$track.stop().animate({
				left: "-"+slidePosArr[slideCnt]
			}, 1000 , function() {
				if ( slideCnt == 5 ) {
					slideCnt = 0;
					$slideUl.eq(0).find('img').css('left', '-150px');
					$track.css('left', '-540px');
				}
				if ( slideCnt == 4 ) {
					tabCnt = 0;
				} else {
					tabCnt += 1;
				}
			});
			$SlideTab.eq(tabCnt).addClass('on').siblings().removeClass('on');
			$textLi.find('.obj').removeClass('on');
			setTimeout(function(){
				$textLi.eq(slideCnt).find('.obj').addClass('on');
			},500);
		}
		*/

		// sec01 슬라이드 시 이미지 인터랙션 관련 함수
		function imgMotion(){
			$slideUl.attr("data-status" , "");
			$slideUl.eq(slideCnt).attr("data-status" , "current");
			$slideUl.eq(slideCnt).prev().attr("data-status" , "prev");
			$slideUl.eq(slideCnt).next().attr("data-status" , "next");
		};

		/* 태블릿 이하 섹션 모션 대응*/
		var filter = "win16|win32|win64|mac|macintel";
		if(navigator.platform) {
			if(filter.indexOf(navigator.platform.toLowerCase()) < 0){
				$('.sec02').addClass('active');
				$('.sec03').addClass('active');
				$('.sec03 .tab_cont.news').find('.obj').addClass('on');
			}
		};

		// 스크롤 모션 관련 변수
		var isPosition = false;
		var scrollPosArr = [];
		var currentTop;
		var pureScroll;
		var $el = $('.parallax-background');
		
		$(window).on("load" , function(){
			//각 섹션 offset 저장
			$("#container").find(".section").each(function(index,item){
				scrollPosArr.push($(item).offset().top);
			});
			$(window).trigger("scroll");
		});

		//스크롤 모션 관련 스크립트
		$(window).on('scroll', function () {
			pureScroll = $(document).scrollTop();
			currentTop = pureScroll + $(window).height()/2;
			sec02Offset = $('.sec02').offset().top;

			// sec02 패럴랙스 bg 효과
			if(navigator.platform) {
				if(filter.indexOf(navigator.platform.toLowerCase()) >= 0){
					$el.css({
						'background-position':'50% '+(-.3*pureScroll)+'px'
					});
				}
			};
			// sec01 스크롤 진입시 인터랙션
			if(currentTop < scrollPosArr[0]){
				clearInterval(slideInterval);
				isPosition = false;
			}else if(currentTop >= scrollPosArr[0] && currentTop < scrollPosArr[1]){
				if(isPosition == false){
					isPosition = true;
					if(!$('.sec01').is(".active")){
						setTimeout(function(){
							sec01SlideFunc();
						},1000);
					};
					$('.sec01').addClass('active');
					slideInterval = setInterval(function(){
						slideCnt += 1;	
						sec01SlideFunc();
					},5000);
				};
			}else if(currentTop >= scrollPosArr[1]) {
				clearInterval(slideInterval);
				isPosition = false;
				// sec02 스크롤 진입시 인터랙션
				$('.sec02').addClass('active');
				//$('.sec02').find('.obj').addClass('on');
			}else if (currentTop >= scrollPosArr[2]){
				// sec03 스크롤 진입시 인터랙션
				$('.sec03').addClass('active');
				$('.sec03 .tab_cont.news').find('.obj').addClass('on');
			}

			// 스크롤시 비디오 제어
			if ( pureScroll < scrollPosArr[0] ) {
				videos[visualSlideIndex].play();
				$progress.eq(visualSlideIndex).find(".progress .fill").animate({width: "100%"}, durationArr[visualSlideIndex]);
			} else {
				videoPause(visualSlideIndex);
			}
		});

		
	</script>
</html>
