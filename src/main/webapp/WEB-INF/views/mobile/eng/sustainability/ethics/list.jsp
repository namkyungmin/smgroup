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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Sustainable Management, Sustainable Management, SM Sustainable Management">
<meta name="description" content="This page introduces SM Group’s ethical management plan. The SM Group has outlined judgement standards for all business activities. ">
<title>Ethical Management | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub sustainability ethics">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Ethical Management</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">Ethical Management</p>
                    <ul>
                        <li>
							<a href="/mobile/eng/sustainability/ethics/list.do">Ethical Management</a>
						</li>
						<li>
							<a href="/mobile/eng/sustainability/partnership/list.do">Mutual Growth Management</a>
						</li>
						<li>
							<a href="/mobile/eng/sustainability/environment/list.do">Environmental Management</a>
						</li>
						<li>
							<a href="/mobile/eng/sustainability/social-contribution/list.do">Social Contribution</a>
						</li>
                    </ul>
				</div>
				<!--//e: tab_wrap -->
                <div class="cont_tit">
					<h3>Establish and practice ethical conduct for the SM Group employees to abide by. We strive for management success within fair and ethical frameworks. </h3>
				</div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/ethics_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">Aiming at shared value through customer-centered management.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/ethics_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">Pursuing righteous decision-making based on ethical values.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/ethics_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">Spontaneously complying with the code of conduct for law-abiding culture.</p>
							</a>
						</div>
					</div>
				</div>
				<div class="sec2 section sec_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>Code of Ethics</h4>
							<p class="sub_tit">SM Group’s code of ethics aims to provide essential standards for behavior and judgement for all employees to adhere to at the workplace. </p>
						</div>
						<div class="inner_cont">
							<p class="thumbnail"><img src="/resource/eng/mobile/images/sustainability/ethics_sec2_img1.jpg" alt="2020Code of Ethics"></p>
							<a href="/resource/eng/mobile/file/SMGROUP_Code_of_Ethics_EN.pdf" class="common_btn download" target="_blank" title="Go to new window">
								<span>Download</span>
							</a>
						</div>
					</div>
				</div>
				<%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
		<%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
		smGroup.tab();
    </script>
</body>
</html>