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
<meta name="keywords" content="SM그룹, 미디어, SM그룹 동영상, 동영상, SM 소셜미디어, 에스엠 소셜미디어, 에스엠그룹, 에스엠그룹 소셜미디어">
<meta name="description" content="SM그룹 소셜미디어 페이지입니다. SM그룹의 공식 소셜 채널들을 만나보실 수 있습니다.">
<title>소셜미디어 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub media social">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>소셜미디어</h2>
            </div>
            <!--// e: title -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section sec1">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h3>SM그룹 유튜브</h3>
						</div>
						<div class="thumb_list">
							<div class="board_list">
								<ul class="board">
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_youtube01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">휴식에 대한 새로운 가치 -탑스텐 (SM그룹HOTEL & RESORTS 소개)</p>
											</div>
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_youtube02.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">대한민국 생활 화학의 100년을 함께 만들어 갈 티케이케미칼</p>
											</div>
										</a>
									</li>
								</ul>
								<div class="btn_wrap">
									<a href="https://www.youtube.com/channel/UCBCCzCTAPrABL7SHMJK-6YA/videos" target="_blank" class="common_btn type03"><span>유튜브 바로가기</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="section sec2">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h3>SM그룹 페이스북</h3>
						</div>
						<div class="thumb_list dual">
							<div class="board_list">
								<ul class="board">
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_sns01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">너 마스크 문제 있어? ‘턱스크 족’<br>매의 눈으로 감시 중</p>
											</div>
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_sns01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">에너지도 재활용이 가능하다?!<br>SM벡셀 2차전지와 태양광의 …</p>
											</div>
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_sns01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">너 마스크 문제 있어? ‘턱스크 족’<br>매의 눈으로 감시 중</p>
											</div>
										</a>
									</li>
								</ul>
								<div class="btn_wrap">
									<a href="https://www.youtube.com/channel/UCBCCzCTAPrABL7SHMJK-6YA/videos" target="_blank" class="common_btn type03">
										<span>페이스북 바로가기</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="section sec3">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h3>SM그룹 인스타그램</h3>
						</div>
						<div class="thumb_list dual">
							<div class="board_list">
								<ul class="board">
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_sns01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">코로나19로 어려움을 겪는 소상공인과<br>한부모가정을 위해 …</p>
											</div>
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_sns01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">수소연료전지 상용화의 핵심, 세상 비싼<br>백금 대체할 새로운 …</p>
											</div>
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<div class="thumb_area">
												<img src="/resource/mobile/images/media/thumb_sns01.jpg" alt="">
											</div>
											<div class="txt_area">
												<p class="tit">코로나19로 어려움을 겪는 소상공인과<br>한부모가정을 위해 …</p>
											</div>
										</a>
									</li>
								</ul>
								<div class="btn_wrap">
									<a href="https://www.youtube.com/channel/UCBCCzCTAPrABL7SHMJK-6YA/videos" target="_blank" class="common_btn type03">
										<span>인스타그램 바로가기</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
			<!--// e: contents -->
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>