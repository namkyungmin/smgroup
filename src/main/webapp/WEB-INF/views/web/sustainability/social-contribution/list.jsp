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
								<a href="/sustainability/ethics/list.do">윤리경영</a>
							</li>
							<li>
								<a href="/sustainability/partnership/list.do">상생경영</a>
							</li>
							<li>
								<a href="/sustainability/environment/list.do">환경경영</a>
							</li>
							<li>
								<a href="/sustainability/social-contribution/list.do" class="on">사회공헌</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>SM그룹은 더 나은 세상을 위한 내일의 희망을 키웁니다.<br />도움이 필요한 이웃에 대한 지원으로 삶의 새희망을 전달하는 세상을 만들어 갑니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/social_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">더불어 함께하는 세상을 <br>만들어 나갑니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/social_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">삶의 새 희망을 전달하는 <br>세상을 만들어 갑니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/social_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">더 나은 세상을 위한 <br>내일의 희망을 키웁니다.</p>
							</a>
						</div>
				</div>
				<!--
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>사회공헌 소식</h4>
							<p class="sub_tit">SM그룹은 다양한 사회공헌을 통해 사회에 따뜻한 온정을 전달하고자 합니다.</p>
						</div>
						<div class="inner_cont">
							<ul class="board" id="bottom-board">
							</ul>
							<div class="list_btn_area">
								<a href="javascript:void(0);" id="listMore" class="common_btn type01" onclick="loadBoard(); return false;"><span>MORE</span></a>
							</div>
						</div>
					</div>
				</div>
				-->
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