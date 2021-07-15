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
		<meta name="viewport" content="width=device-width, user-scalable=no">
		<meta property="og:title" content="SM그룹" />
		<meta property="og:description" content="초일류 글로벌 그룹, SM그룹입니다." />
		<meta property="og:image" content="http://www.smgroup.co.kr/resource/images/common/og_img.jpg" />
		<meta name="keywords" content="SM그룹, SM그룹 사업분야, SM그룹 미디어, SM그룹 뉴스, SM그룹 채용, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 미디어, 에스엠그룹 뉴스, 에스엠그룹 채용">
		<meta name="description" content="초일류 글로벌 그룹, SM그룹입니다.">
		<link rel="shortcut icon" href="/resource/images/common/favicon.ico">
		<link rel="stylesheet" href="/resource/mobile/css/jquery-ui.css">
		<link rel="stylesheet" href="/resource/mobile/css/common.css">
		<link rel="stylesheet" href="/resource/mobile/css/index.css">
		<link rel="stylesheet" href="/resource/mobile/css/slick.css">
		<link rel="stylesheet" href="/resource/mobile/css/slick-theme.css">
		<title>SM그룹 | 모바일</title>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-173377848-2"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());

			gtag('config', 'UA-173377848-2');
		</script>
	</head>
	<body>
		<div id="wrap" class="main">
			<%@ include file="/include/mobile/gnb.jsp" %>
			<div id="container">
				<div class="visual">
					<div class="main_visual">
						<div>
							<img src="/resource/mobile/images/main/img_main_slide01.jpg" alt="">
							<p class="txt">
								<img src="/resource/mobile/images/main/txt_main_slide01.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/mobile/images/main/img_main_slide02.jpg" alt="">
							<p class="txt">
								<img src="/resource/mobile/images/main/txt_main_slide02.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/mobile/images/main/img_main_slide03.jpg" alt="">
							<p class="txt">
								<img src="/resource/mobile/images/main/txt_main_slide03.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/mobile/images/main/img_main_slide04.jpg" alt="">
							<p class="txt">
								<img src="/resource/mobile/images/main/txt_main_slide04.png" alt="">
							</p>
						</div>
						<div>
							<img src="/resource/mobile/images/main/img_main_slide05.jpg" alt="">
							<p class="txt">
								<img src="/resource/mobile/images/main/txt_main_slide05.png" alt="">
							</p>
						</div>
						<!-- <span class="ico_scroll">
							<img src="/resource/mobile/images/main/ico_scroll.png" alt="">
						</span> -->
					</div>
				</div>
				<div class="section sec01">
					<div class="sec_inner">
						<p class="small_tit">OUR BUSINESS</p>
						<ul class="business_list">
							<li>
								<a href="/mobile/business/manufacturing.do">
									<p class="kor">제조</p>
									<p class="eng">Manufacturing</p>
								</a>
							</li>
							<li>
								<a href="/mobile/business/construction.do">
									<p class="kor">건설</p>
									<p class="eng">Construction</p>
								</a>
							</li>
							<li>
								<a href="/mobile/business/shipping-industry.do">
									<p class="kor">해운</p>
									<p class="eng">Shipping Industry</p>
								</a>
							</li>
							<li>
								<a href="/mobile/business/media-service.do">
									<p class="kor">미디어 &middot; 서비스</p>
									<p class="eng">Media &middot; Service</p>
								</a>
							</li>
							<li>
								<a href="/mobile/business/leisure.do">
									<p class="kor">레저</p>
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
									세상에 모든 곳에서<br>내일의 가치를 만들어 갑니다
								</p>
							</div>
							<p class="txt">
								더 나은 미래를 위해, 보다 큰 성장을 위해, 고객감동 신화를 이어온 글로벌 기업 SM그룹이 새로운 삶의 가치를 완성합니다.
							</p>
							<div class="btn_wrap">
								<a href="/mobile/company/overview.do" class="common_btn type02">
									<span>그룹소개 바로가기</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR BEGIN</span>
								<p class="big_tit">
									세상을 움직이는 가치,<br>내일의 시작을 선도합니다.
								</p>
							</div>
							<p class="txt">
								고객의 신뢰는 최우선의 가치.<br>오늘, 그리고 더 나은 내일의 삶의 가치를<br>완성합니다.
							</p>
							<div class="btn_wrap">
								<a href="/mobile/sustainability/ethics/list.do" class="common_btn type02">
									<span>윤리준법경영 바로가기</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR COMPANION</span>
								<p class="big_tit">
									하나 된 SM그룹,<br>내일의 성공을 이끌어 갑니다.
								</p>
							</div>
							<p class="txt">
								SM그룹은 협력회사의 성장을 우리그룹의 경쟁력 원천이자 뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.
							</p>
							<div class="btn_wrap">
								<a href="/mobile/sustainability/partnership/list.do" class="common_btn type02">
									<span>상생경영 바로가기</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR FUTURE</span>
								<p class="big_tit">
									미래세대를 위하여<br>내일의 환경을 지킵니다.
								</p>
							</div>
							<p class="txt">
								SM그룹은 환경적 지속 가능성 개선을 위해<br>녹색성장을 추구하고 있습니다. 
							</p>
							<div class="btn_wrap">
								<a href="/mobile/sustainability/environment/list.do" class="common_btn type02">
									<span>환경경영 바로가기</span>
								</a>
							</div>
						</li>
						<li>
							<div class="tit_wrap">
								<span class="small_tit">OUR HOPE</span>
								<p class="big_tit">
									더 나은 세상을 위한<br>내일의 희망을 키웁니다.
								</p>
							</div>
							<p class="txt">
								사회적 책임을 다하는 기업,<br>긍정적인 사회변화와 더 나은 미래에 기여하겠습니다.
							</p>
							<div class="btn_wrap">
								<a href="/mobile/sustainability/social-contribution/list.do" class="common_btn type02">
									<span>사회공헌 바로가기</span>
								</a>
							</div>
						</li>
					</ul>
					<div class="slide_wrap">
						<div>
							<div class="img_wrap">
								<img src="/resource/mobile/images/main/img_main_sec02_slide01.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/mobile/images/main/img_main_sec02_slide02.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/mobile/images/main/img_main_sec02_slide03.png" alt="">
								<div class="circle"></div>
							</div>
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/mobile/images/main/img_main_sec02_slide04.png" alt="">
								<div class="circle"></div>
							</div>									
						</div>
						<div>
							<div class="img_wrap">
								<img src="/resource/mobile/images/main/img_main_sec02_slide05.png" alt="">
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
								세상에 모든 곳에서<br>내일의 가치를 만들어 갑니다
							</p>
						</div>
						<div class="btn_wrap">
							<a href="https://smpeople.recruiter.co.kr/" class="common_btn type02" target="_blank">
								<span>SM그룹 채용공고</span>
							</a>
							<img src="/resource/mobile/images/main/img_sec02.png" alt="" class="person">
						</div>
					</div>
				</div>
				<div class="section sec04">
					<div class="sec_inner">
						<p class="small_tit">SM GROUP NEWS</p>
						<ul class="news_list">
			               	 <c:choose>
				                <c:when test="${fn:length(main_news)>0}">
				                    <c:forEach items="${main_news }" var="row" varStatus="status">
									<li>
										<a href="/mobile/media/news/view.do?IDX=${row.IDX }">
											<p class="tit">${row.TITLE}</p>
											<div class="info">
												<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>
												<span class="cate">${row.SECTION }</span>
											</div>
										</a>
									</li>
									</c:forEach>
								</c:when>
							</c:choose>
						</ul>

						<div class="movie_list">
							<div class="board_list">
								<ul class="board">

					               	 <c:choose>
						                <c:when test="${fn:length(main_media)>0}">
											<c:set var="doneLoop" value="false"/>
						                    <c:forEach items="${main_media }" var="row" varStatus="status">
											<c:if test="${not doneLoop}">
											<li>
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
											<c:if test="${status.count>=4}">
											<c:set var="doneLoop" value="true"/>
											</c:if>
											</c:if>
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
				<%@ include file="/include/mobile/floating.jsp" %>
			</div>
			<%@ include file="/include/mobile/footer.jsp" %>
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
			<!-- //메인 팝업 영역 -->
			<!-- youtube 팝업 영역 -->
			<div class="popup_wrap" data-popup="youtube">
				<div class="pop_inner">
					<button type="button" class="pop_close_btn">닫기</button>
				</div>
			</div>
			<!-- //youtube 팝업 영역 -->
		</div>
		<%@ include file="/include/mobile/common.jsp" %>
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
