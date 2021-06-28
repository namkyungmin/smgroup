<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 환경경영, 환경경영, SM 환경경영, 에스엠 환경경영">
<meta name="description" content="SM그룹 환경경영 페이지입니다. SM그룹은 환경적 지속가능성 개선을 위해 녹색성장을 추구하고 있습니다.">
<title>환경경영 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub sustainability environment">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>환경경영</span></h2>
				<p class="txt1">Safety&Health Management</p>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">환경경영</li>
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
								<a href="environment.do" class="on">환경경영</a>
							</li>
							<li>
								<a href="social-contribution.do">사회공헌</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>SM그룹은 환경적 지속 가능성 개선을 위해 녹색성장을 추구하며<br />녹색경영시스템을 수립, 실행, 유지해 나아가고자 합니다.</h3>
                </div>
				<div class="sec1 section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/environment_cardnews_thumb1.jpg" alt="">
							<a href="#none">
								<h4>녹색경영시스템</h4>
								<p class="txt1">SM그룹은 조직 구성원들의 활동(제품, 서비스 및 절차가 포함됨)으로 인한 환경영향을 고려합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/environment_cardnews_thumb2.jpg" alt="">
							<a href="#none">
								<h4>녹색경영활동</h4>
								<p class="txt1">환경 관련 특허출원과 친환경 건축, 친환경에너지 개발 등을 통해 저 탄소 녹색경영을 선도하는 기업이 되겠습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/environment_cardnews_thumb3.jpg" alt="">
							<a href="#none">
								<h4>시스템 인증현황</h4>
								<p class="txt1">SM그룹은 사업 활동에 의한 환경 영향을 최소화 하기 위하여 노력하고 있습니다.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>수상 및 인증 내역</h4>
							<p class="sub_tit">SM그룹은 사업 활동에 의한 환경 영향을 최소화 하기 위하여 노력하고 있습니다.</p>
						</div>
						<div class="inner_cont">
							<ul class="board">
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">SM상선<br />품질경영시스템<br />인증서 </p>
											<div class="bottom">
												<span class="cate">SM상선</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">남선알미늄<br />환경 표지<br />인증서 </p>
											<div class="bottom">
												<span class="cate">남선알미늄</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">삼환기업<br />환경경영시스템<br />인증서</p>
											<div class="bottom">
												<span class="cate">삼환기업</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#none">
										<div class="txt_area">
											<p class="tit">삼환기업<br />품질경영시스템<br />인증서</p>
											<div class="bottom">
												<span class="cate">삼환기업</span>
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