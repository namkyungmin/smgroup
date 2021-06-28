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
		<meta charset="UTF-8">
		<meta name="viewport" content="width=1400" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta property="og:title" content="SM그룹" />
		<meta property="og:description" content="초일류 글로벌 그룹, SM그룹입니다." />
		<meta property="og:image" content="http://www.smgroup.co.kr/resource/images/common/og_img.jpg" />
		<meta name="keywords" content="SM그룹, SM그룹 사업분야, SM그룹 미디어, SM그룹 뉴스, SM그룹 채용, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 미디어, 에스엠그룹 뉴스, 에스엠그룹 채용">
		<meta name="description" content="초일류 글로벌 그룹, SM그룹입니다.">
		<link rel="shortcut icon" href="/resource/images/common/favicon.ico">
		<link rel="stylesheet" href="/resource/css/jquery-ui.css">
		<link rel="stylesheet" href="/resource/css/common.css">
		<link rel="stylesheet" href="/resource/css/index.css">
		<link rel="stylesheet" href="/resource/css/swiper.css">
		<title>SM그룹</title>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-173377848-1"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());

			gtag('config', 'UA-173377848-1');
		</script>
	</head>
	<body>
		<div id="wrap" class="main">
			<%@ include file="/include/gnb.jsp" %>
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
								<source src="/resource/images/main/video/main_video1.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video2" class="main_video">
								<source src="/resource/images/main/video/main_video2.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video3" class="main_video">
								<source src="/resource/images/main/video/main_video3.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video3" class="main_video">
								<source src="/resource/images/main/video/main_video4.mp4" type="video/mp4">
							</video>
						</div>
						<div class="slide">
							<video playsinline="" muted poster="" height="100%" id="video3" class="main_video">
								<source src="/resource/images/main/video/main_video5.mp4" type="video/mp4">
							</video>
						</div>
					</div>
					<div class="controls control_area">
						<ul class="paging">
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/business/manufacturing.do" class="category">
									제조
									<div class="hover_area">
										<div class="effect">
											<p class="tit">제조</p>
											<p class="eng_tit">Manufacturing</p>
											<p class="ico_area"></p>
											<p class="cont">
												친환경 고효율 제품의 연구개발을<br>
												최우선으로 하여 미래의 가치를<br>
												중심으로 성장해 나아갑니다.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/business/construction.do" class="category">
									건설
									<div class="hover_area">
										<div class="effect">
											<p class="tit">건설</p>
											<p class="eng_tit">Construction</p>
											<p class="ico_area"></p>
											<p class="cont">
												풍부하고 다양한 경험과 신기술을<br>
												바탕으로 세계적으로 인정받는<br>
												글로벌 건설사로 미래를 열어갑니다.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/business/shipping-industry.do" class="category">
									해운
									<div class="hover_area">
										<div class="effect">
											<p class="tit">해운</p>
											<p class="eng_tit">Shipping Industry</p>
											<p class="ico_area"></p>
											<p class="cont">
												안전하고 빠른 수송으로<br>
												해운문화를 창조하고<br>
												개척해 나갑니다.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/business/media-service.do" class="category">
									미디어&middot;서비스
									<div class="hover_area">
										<div class="effect">
											<p class="tit">미디어&middot;서비스</p>
											<p class="eng_tit">Media Service</p>
											<p class="ico_area"></p>
											<p class="cont">
												첨단 IT기술개발과 신규시장<br>
												개척으로 더 넓은 세상을<br>
												만들어 갑니다.
											</p>
										</div>
									</div>
								</a>
							</li>
							<li>
								<p class="progress">
									<span class="fill"></span>
								</p>
								<a href="/business/leisure.do" class="category">
									레저
									<div class="hover_area">
										<div class="effect">
											<p class="tit">레저</p>
											<p class="eng_tit">Leisure</p>
											<p class="ico_area"></p>
											<p class="cont">
												프리미엄 브랜드 ‘TOPS 10’을<br>
												통해 세련되고 정교한 품질의<br>
												서비스를 제공합니다.
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
								<img src="/resource/images/main/bg_sec01.jpg" alt="">
							</div>
							<img src="/resource/images/main/circle_sec01.png" alt="" class="front_img">
						</div>
						<div class="deco_area"></div>
						<div class="inner_top">
							<div class="tab_wrap">
								<a href="#" class="on">그룹소개</a>
								<a href="#">윤리경영</a>
								<a href="#">상생경영</a>
								<a href="#">환경경영</a>
								<a href="#">사회공헌</a>
							</div>
							<ul class="cont_wrap">
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR VALUE</span>
											<p class="obj obj02">
												<span class="box"><span>세상에 모든 곳에서</span></span>
												<span class="box"><span>내일의 가치를</span></span>
												<span class="box"><span>만들어 갑니다.</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											더 나은 미래를 위해, 보다 큰 성장을 위해<br>
											고객감동 신화를 이어온 글로벌 기업 SM그룹이<br>
											새로운 삶의 가치를 완성합니다.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR BEGIN</span>
											<p class="obj obj02">
												<span class="box"><span>세상을 움직이는 가치,</span></span>
												<span class="box"><span>내일의 시작을</span></span>
												<span class="box"><span>선도합니다.</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											고객의 신뢰는 최우선의 가치.<br>
											오늘, 그리고 더 나은 내일의 삶의 가치를 완성합니다.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR COMPANION</span>
											<p class="obj obj02">
												<span class="box"><span>하나 된 SM그룹,</span></span>
												<span class="box"><span>내일의 성공을</span></span>
												<span class="box"><span>이끌어 갑니다.</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											SM그룹은 협력회사의 성장을 우리그룹의 경쟁력 원천이자<br>
											뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR FUTURE</span>
											<p class="obj obj02">
												<span class="box"><span>미래세대를 위하여</span></span>
												<span class="box"><span>내일의 환경을</span></span>
												<span class="box"><span>지킵니다.</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											SM그룹은 환경적 지속 가능성 개선을 위해<br>
											녹색성장을 추구하고 있습니다.
										</p>
									</div>
								</li>
								<li>
									<div class="left">
										<div class="tit_wrap">
											<span class="obj obj01">OUR HOPE</span>
											<p class="obj obj02">
												<span class="box"><span>더 나은 세상을 위한</span></span>
												<span class="box"><span>내일의 희망을</span></span>
												<span class="box"><span>키웁니다.</span></span>
											</p>
										</div>
									</div>
									<div class="right">
										<p class="obj obj01">
											사회적 책임을 다하는 기업,<br>
											긍정적인 사회변화와 더 나은 미래에 기여하겠습니다.
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
											<div class="bg"><img src="/resource/images/main/value1_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value1_2.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value1_3.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/company/overview.do" class="common_btn type02">
												<span>그룹소개 바로가기</span>
											</a>
										</div>
									</li>
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value1_4.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide2 slide">
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value2_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value2_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/sustainability/ethics.do" class="common_btn type02">
												<span>윤리경영 바로가기</span>
											</a>
										</div>
									</li>
									<li class="pd03">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value2_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide3 slide">
									<li class="pd04">
										<div class="box">
											<img src="/resource/images/main/value3_1_finger.png" alt="" class="finger">
											<div class="bg"><img src="/resource/images/main/value3_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<img src="/resource/images/main/value3_2_finger.png" alt="" class="finger">
											<div class="bg"><img src="/resource/images/main/value3_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/sustainability/partnership.do" class="common_btn type02">
												<span>상생경영 바로가기</span>
											</a>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value3_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide4 slide">
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value4_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value4_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<a href="/sustainability/environment.do" class="common_btn type02">
												<span>환경경영 바로가기</span>
											</a>
										</div>
									</li>
									<li class="pd01">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value4_3.jpg" alt=""></div>
										</div>
									</li>
								</ul>
								<ul class="slide5 slide">
									<li class="pd04">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value5_1.jpg" alt=""></div>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value5_2.jpg" alt=""></div>
										</div>
										<div class="btn_wrap">
											<div class="bg"></div>
											<a href="/sustainability/social-contribution.do" class="common_btn type02">
												<span>사회공헌 바로가기</span>
											</a>
										</div>
									</li>
									<li class="pd02">
										<div class="box">
											<div class="bg"><img src="/resource/images/main/value5_3.jpg" alt=""></div>
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
							SM그룹과 함께 발전 할<br>
							인재를 기다립니다.
						</p>
						<div class="btn_wrap obj obj03">
							<a href="https://smpeople.recruiter.co.kr/" class="common_btn type03" target="_blank">
								<span>SM그룹 채용공고</span>
							</a>
						</div>
						<img src="/resource/images/main/img_sec01.png" alt="" class="person obj obj04">
					</div>
				</div>
				<div class="section sec03">
					<div class="sec_inner">
						<div class="tit_wrap">
							<p class="small_tit">SM GROUP NEWS</p>
							<div class="tab_wrap">
								<a href="#" class="on">보도자료</a>
								<a href="#">동영상</a>
							</div> 
						</div>
						<div class="tab_cont news on">

			               	 <c:choose>
				                <c:when test="${fn:length(main_news)>0}">
				                    <c:forEach items="${main_news }" var="row" varStatus="status">
					               	 <c:choose>
						                <c:when test="${status.index==0}">
						                    <div class="news_wrap big">
												<a href="/media/news/view.do?IDX=${row.IDX }" class="news_box obj obj01">
													<div class="thumb_wrap">
						                            	<c:choose>
						                            	<c:when test="${fn:length(row.MAIN_NAME)>0 }">
						                            		<img src="${row.MAIN_NAME }" alt="">
						                            	</c:when>
						                            	<c:otherwise>
						                            		<img src="/resource/images/temp/no_img_main_news.jpg" alt="">
						                            	</c:otherwise>
						                            	</c:choose>
													</div>
													<div class="cont_wrap">
														<p class="tit">
															${row.TITLE }
														</p>
														<p class="cont">
															<c:out value='${fn:substring(row.CONTENTS.replaceAll("\\\<.*?\\\>"," ").replaceAll("&nbsp;"," "),0, 150)}' />
														</p>
														<div class="info">
															<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>
															<span class="category">${row.SECTION }</span>
														</div>
													</div>
												</a>
						                    </div>
						                </c:when>
						                <c:when test="${status.index==1}">
						                <div class="news_wrap small">
											<a href="/media/news/view.do?IDX=${row.IDX }" class="news_box obj obj0${status.count}">
												<div class="cont_wrap">
													<p class="tit">
														${row.TITLE }
													</p>
													<div class="info">
														<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>
														<span class="category">${row.SECTION }</span>
													</div>
												</div> 
											</a>
						                </c:when>
						                <c:otherwise>
											<a href="/media/news/view.do?IDX=${row.IDX }" class="news_box obj obj0${status.count}">
												<div class="cont_wrap">
													<p class="tit">
														${row.TITLE }
													</p>
													<div class="info">
														<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>
														<span class="category">${row.SECTION }</span>
													</div>
												</div> 
											</a>
						                </c:otherwise> 
						                
						             </c:choose>
					                <c:if test="${status.last}">
										</div>
					                </c:if>
						             
				                    </c:forEach>
				                </c:when>
				                <c:otherwise>
				                </c:otherwise>
				            </c:choose>
						</div>
						<div class="tab_cont video movie_list">
							<div class="board_list">
								<ul class="board">

					               	 <c:choose>
						                <c:when test="${fn:length(main_media)>0}">
						                    <c:forEach items="${main_media }" var="row" varStatus="status">
						                    
											<li class="obj obj0${status.count }">
												<a href="#" class="pop_btn" data-viewclick="${row.IDX }" data-videoid="${ct:getYouTubeId(row.VIDEO)}" data-videourl="${row.VIDEO}" data-popup="youtube">
													<div class="thumb_area">
						                            	<c:choose>
						                            	<c:when test="${fn:length(row.MAIN_NAME)>0 }">
						                            		<img src="${row.MAIN_NAME }" alt="">
						                            	</c:when>
						                            	<c:otherwise>
						                            		<img src="/resource/images/temp/no_img_main_movie.jpg" alt="">
						                            	</c:otherwise>
						                            	</c:choose>
													</div>
													<div class="txt_area">
														<p class="cate">${row.SECTION }</p>
														<p class="tit">${row.TITLE }</p>
														<p class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</p>
														<div class="contents" style="display:none;">${row.CONTENTS }</div>
													</div>
												</a>
											</li>
						                    </c:forEach>
						                </c:when>
						                <c:otherwise>
						                </c:otherwise>
						            </c:choose>
								</ul>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<%@ include file="/include/footer.jsp" %>
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
								<a href="javascript:chkdayClose(${row.IDX});" class="chkday">1일 동안 보지 않음</a>
								<a href="javascript:popupClose(${row.IDX});" class="main_pop_close">닫기</a>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
			</div>
			<!-- //메인 팝업 영역 -->
			<!-- 유튜브 팝업 -->
			<div class="popup_wrap" data-popup="youtube">
				<div class="pop_inner">
					<button type="button" class="pop_close_btn">닫기</button>
				</div>
			</div>
			<!-- //유튜브 팝업 -->
		</div>
		<%@ include file="/include/common.jsp" %>
		
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
				// console.log(isPosition);
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
			}else if(currentTop >= scrollPosArr[1] && currentTop < scrollPosArr[2]) {
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

		// sec03 탭 관련 함수
		var $sec03TabBtn = $('.sec03 .tab_wrap a');
		$sec03TabBtn.click(function(e){
			e.preventDefault();
			var tabIdx = $(this).index();
			$sec03TabBtn.eq(tabIdx).addClass('on').siblings().removeClass('on');
			$(this).closest('.section').find('.tab_cont').eq(tabIdx).addClass('on').siblings().removeClass('on');
			if ( tabIdx == 1 ) {
				setTimeout(function(){
					$('.sec03 .tab_cont.video').find('.obj').addClass('on');
				},100)
			}
		});
	</script>
</html>
