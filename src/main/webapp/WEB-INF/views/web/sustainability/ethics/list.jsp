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
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 윤리경영, 윤리경영, SM 윤리경영, 에스엠 윤리경영, 에스엠그룹, 에스엠그룹 윤리경영">
<meta name="description" content="SM그룹 윤리경영 페이지입니다. SM그룹은 모든 경영활동에서 가치 판단의 기준을 정하고 실천해 오고 있습니다.">
<title>윤리경영 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub sustainability ethics">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>윤리경영</span></h2>
				<p class="txt1">Ethical Management</p>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">윤리경영</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="/sustainability/ethics/list.do" class="on">윤리경영</a>
							</li>
							<li>
								<a href="/sustainability/partnership/list.do">상생경영</a>
							</li>
							<li>
								<a href="/sustainability/environment/list.do">환경경영</a>
							</li>
							<li>
								<a href="/sustainability/social-contribution/list.do">사회공헌</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>SM그룹 조직 구성원이 지켜야 할 윤리강령을 제정하고 실천합니다.<br />건전한 윤리적 규율 안에서 경영성공을 추구합니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/ethics_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">고객중심의 경영실천을 통해 <br>공유가치창출을 <br>목표로 합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/ethics_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">도덕적 가치에 기초를 둔 <br>바람직한 의사결정을 <br>지향합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/ethics_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">자발적인 윤리강령 준수로 <br>준법경영 문화확산의 틀을 <br>만들어 갑니다.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>윤리규범</h4>
							<p class="sub_tit">SM그룹 윤리규범은 모든 임직원이 경영현장에서 기본적으로 지켜야 할 올바른 행동과<br />가치판단의 기준을 제공하는 것을 목적으로 합니다.</p>
						</div>
						<div class="inner_cont">
							<p class="thumbnail"><img src="/resource/images/sustainability/ethics_sec2_img1.jpg" alt="2020윤리규범"></p>
							<a href="/resource/file/SMGROUP_Code_of_Ethics_KR.pdf" class="common_btn download" target="_blank" title="새 창으로 바로가기"><span>다운로드</span></a>
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