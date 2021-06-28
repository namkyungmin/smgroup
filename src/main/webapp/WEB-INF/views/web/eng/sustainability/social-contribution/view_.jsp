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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Social Contribution, Social Contribution, SM Social Contribution">
<meta name="description" content="This page is about SM Group’s social contributions. The SM Group creates a corporate culture of sharing love and values by managing 
diverse social contribution activities.">
<%@ include file="/include/eng/header.jsp" %>
<link rel="stylesheet" href="/resource/eng/css/sustainability.css">
<title>Social Contribution | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub sustainability_view social_view">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">Home</li>
						<li class="depth1">Sustainable Management</li>
						<li class="depth2">Social Contribution</li>
					</ul>
					<!--// e: breadcrumb -->
				</div>
				<div id="anchorMenu" class="anchor_menu">
					<ul>
						<li><a href="#page1">Samra Foundation</a></li>
						<li><a href="#page2">Business Directions</a></li>
						<li><a href="#page3">Business Areas</a></li>
					</ul>
					<a href="#" class="page_top">page top</a>
				</div>
				<div class="sec1 section">
					<span id="page1" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/eng/images/sustainability/social/view_sec1_img1.jpg" alt=""></div>
								<h2>Social Contribution</h2>
							</div>
							<div class="sec_txt">
								<p class="txt1">We are creating a world for all. </p>
								<p class="txt2">One of SM Group’s important management objectives is to fulfill the responsibilities and duties of a corporate citizen with interests in human rights and environment and participation in volunteer services. For that purpose, we established Samra Foundation of Hope in 2011 for the welfare of the low-income class.</p>
								<div class="btn_area">
									<a href="http://www.삼라희망재단.com" target="_blank" title="new window open" class="btn_default link_btn">Go to Samra Foundation of Hope</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sec2 section">
					<span id="page2" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/eng/images/sustainability/social/view_sec2_img1.jpg" alt=""></div>
								<h2>Share and Spread <br>the Hope</h2>
								<div class="direc" data-motion="staggerType1">
									<h3 data-role="m_elm">Direction</h3>
									<ul class="direc_lst">
										<li data-role="m_elm">Social responsibilities and campaigns for sharing.</li>
										<li data-role="m_elm">Raising funds and making donations for public benefits.</li>
										<li data-role="m_elm">Social contribution programs.</li>
										<li data-role="m_elm">Support and volunteer activities for isolated classes.</li>
										<li data-role="m_elm">Public benefit campaigns for local communities.</li>
									</ul>
								</div>
							</div>
							<div class="sec_txt">
								<p class="txt1">We are creating a world for new hopes of life.</p>
								<p class="txt2">SM Group has recognized that a company’s social responsibilities through social contribution activities has a reciprocal relationship with its growth and contributed to social welfare through various activities, including volunteer activities, providing homes to isolated classes, and building an art museum to improve the cultural quality of life of citizens. SM Group’s social contribution programs are delivering warmth and love to the Korean society.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sec3 section">
					<span id="page3" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner" data-motion="bgType1">
							<div class="inner">
								<div class="sec_tit">
									<h2>Dreaming of a Better Tomorrow</h2>
								</div>
								<div class="sec_txt">
									<p class="txt1">We are nurturing the hopes <br>for a better tomorrow.</p>
									<p class="txt2">SM Group is constantly promoting social contribution activities to realize the vision to “practice sharing to create a world for all” so all members can fulfill their social responsibilities and create a sharing culture to support the isolated classes in need and create a better world.</p>
								</div>
							</div>
						</div>
						<div class="sec_inner2 sec_inner">
							<h3>Businesses of Foundation</h3>
							<ul data-motion="staggerType1">
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/eng/images/sustainability/social/view_sec3_thum1.jpg" alt="">
									</div>
									<span class="txt1">Helping Underprivileged Neighbors</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/eng/images/sustainability/social/view_sec3_thum2.jpg" alt="">
									</div>
									<span class="txt1">Welfare Facilities</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/eng/images/sustainability/social/view_sec3_thum3.jpg" alt="">
									</div>
									<span class="txt1">Improvement of Housing Environment</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/eng/images/sustainability/social/view_sec3_thum4.jpg" alt="">
									</div>
									<span class="txt1">Scholarships</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/eng/images/sustainability/social/view_sec3_thum5.jpg" alt="">
									</div>
									<span class="txt1">Volunteer Activities of Employees and Officers</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
            </div>
        </div>
		<%@ include file="/include/eng/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/common.jsp" %>
	<script src="/resource/eng/js/lib/TweenMax.min.js"></script>
	<script src="/resource/eng/js/lib/ScrollMagic.min.js"></script>
	<script src="/resource/eng/js/lib/animation.gsap.min.js"></script>
	<script src="/resource/eng/js/sustainability.js"></script>
</body>
</html>