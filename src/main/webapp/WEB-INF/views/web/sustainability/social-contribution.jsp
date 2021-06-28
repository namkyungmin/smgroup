<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 사회공헌, 사회공헌, SM 사회공헌, 에스엠 사회공헌, 에스엠그룹, 에스엠그룹 사회공헌">
<meta name="description" content="SM그룹 사회공헌 페이지입니다. SM그룹은 사랑과 나눔을 함께하는 그룹 문화를 선도하며 다양한 사회공헌 활동을 운영합니다.">
<title>사회공헌 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub sustainability social-contribution">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>사회공헌</span></h2>
				<p class="txt1">Social Contribution</p>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">사회공헌</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="ethics.do">윤리경영</a>
							</li>
							<li>
								<a href="partnership.do">상생경영</a>
							</li>
							<li>
								<a href="environment.do">환경경영</a>
							</li>
							<li>
								<a href="social-contribution.do" class="on">사회공헌</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>SM그룹은 더 나은 세상을 위한 내일의 희망을 키웁니다.<br />도움이 필요한 이웃에 대한 지원으로 삶의 새희망을 전달하는 세상을 만들어 갑니다.</h3>
                </div>
				<div class="sec1 section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/social_cardnews_thumb1.jpg" alt="">
							<a href="#none">
								<h4>삼라희망재단</h4>
								<p class="txt1">삼라희망재단은 사회 각 구성원들에 대해 사회적 책임을 인식시키고 나눔문화를 활성화시켜 도움을 필요로 하는 소외계층을 지원하고 더불어 함께하는 세상을 만들어 나가는 나눔 실천을 목적으로 합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/social_cardnews_thumb2.jpg" alt="">
							<a href="#none">
								<h4>사업추진방향</h4>
								<p class="txt1">도움이 필요한 이웃에 대한 지원으로 삶의 새 희망을 전달하는 세상을 만들어갑니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/social_cardnews_thumb3.jpg" alt="">
							<a href="#none">
								<h4>사업소개</h4>
								<p class="txt1">더 나은 세상을 위하여 다양한 분야에서 사회공헌 활동을 매진하고 있습니다.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>사회공헌 소식</h4>
							<p class="sub_tit">SM그룹은 다양한 사회공헌을 통해 사회에 따뜻한 온정을 전달하고자 합니다.</p>
						</div>
						<div class="inner_cont">
							<ul class="board">
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">삼라희망재단은 SM그룹과<br />더불어 세상을 만들어 갑니다.</p>
											<div class="bottom">
												<span class="date">2020.02.27</span><span class="cate">삼라희망재단</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">칠곡계모사건<br />"회장님에게 온 손 편지"</p>
											<div class="bottom">
												<span class="date">2020.02.27</span><span class="cate">삼라희망재단</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">올림픽 영웅, <br />보금자리가 생기다.</p>
											<div class="bottom">
												<span class="date">2020.02.27</span><span class="cate">삼라희망재단</span>
											</div>
										</div>
									</a>
								</li>
							</ul>
							<!--
							<div class="list_btn_area">
								<a href="#" id="listMore" class="basic_btn more" onclick="moreList(); return false;">더보기</a>
							</div>
							-->
						</div>
					</div>
				</div>
				<%@ include file="/include/floating.jsp" %>
            </div>
        </div>
		<%@ include file="/include/footer.jsp" %>
	</div>
    <%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>