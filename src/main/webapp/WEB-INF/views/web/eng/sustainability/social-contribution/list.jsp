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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Social Contribution, Social Contribution, SM Social Contribution">
<meta name="description" content="This page is about SM Group’s social contributions. The SM Group creates a corporate culture of sharing love and values by managing diverse social contribution activities.">
<title>Social Contribution | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub sustainability social-contribution">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>Social Contribution</span></h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">Home</li>
						<li class="depth1">Sustainable Management</li>
						<li class="depth2">Social Contribution</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="/eng/sustainability/ethics/list.do">Ethical Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/partnership/list.do">Mutual Growth Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/environment/list.do">Environmental Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/social-contribution/list.do" class="on">Social Contribution</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>The SM Group hopes for a better tomorrow. We support our neighbors who are in need,<br />thus creating a hopeful new world.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/images/sustainability/social_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">We are creating a world <br>for all.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/social_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">We are creating a world <br>for new hopes of life.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/social_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">We are nurturing the hopes <br>for a better tomorrow.</p>
							</a>
						</div>
				</div>
				<%@ include file="/include/eng/floating.jsp" %>
            </div>
        </div>
		<%@ include file="/include/eng/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>