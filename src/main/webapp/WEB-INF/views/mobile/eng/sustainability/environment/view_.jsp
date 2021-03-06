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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Environmental Management, Environmental Management, SM Environmental Management">
<meta name="description" content="This page introduces SM Group’s eco-management plan. The SM Group strives for green development through environmentally sustainable growth. ">
<title>Environmental Management | SM Group | Mobile</title>
<link rel="stylesheet" href="/resource/eng/mobile/css/sustainability.css">
<link rel="stylesheet" href="/resource/eng/mobile/css/swiper.css">
</head>

<body>
    <div id="wrap" class="sub sustainability_view environment_view">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
            <div id="contents">
				<div class="sec1 section">
					<span id="page1" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_txt">
								<p class="txt1">Quality, environmental, and safety activities are the fundamentals for the abundance of customers.</p>
								<p class="txt2">SM Group is practicing green management that provides the value of environmental-friendliness to customers and leading a sustainable future with various activities (products, services, and procedures) beyond passive compliance with environmental regulations and regulations.</p>
							</div>
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/eng/mobile/images/sustainability/environment/view_sec1_img1.jpg" alt=""></div>
								<div class="system" data-motion="staggerType1">
									<h2>Green Management</h2>
									<h3 data-role="m_elm">Directions for Green <br>Management Systems</h3>
									<ul class="system_lst">
										<li data-role="m_elm"><span>Responsiblebr <br>Consumption <br>and Production</span></li>
										<li data-role="m_elm"><span>Compliance with <br>Environmental <br>Laws and <br>Regulations</span></li>
										<li data-role="m_elm"><span>Contribution <br>to Social Value</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sec2 section">
					<span id="page2" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_txt">
								<p class="txt1">We will lead low-carbon green management by developing eco-friendly architecture and energy.</p>
								<p class="txt2">All affiliates of SM Group are actively participating in the Green Management activities and environmental campaigns for environmental management through Green Management.</p>
							</div>
						</div>
						<div class="sec_inner2 sec_inner"  data-motion="bgType1"  data-trigger="slide">
							<h2>Leading <br>Green Management</h2>
							<div class="inner">
								<div class="right">
									<h3>Activity</h3>
									<div class="slide_wrap programs">
										<div class="slide_cont swiper-wrapper">
											<div class="slide swiper-slide">
												<p class="txt1">Leading Green Management by reducing greenhouse gas exhausts and wastes.</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">Creating a pleasant environment with good air quality through research and selection of eco-friendly materials.</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">Promoting Green Management and leadership in green business for competitiveness.</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">Contributing to energy and resource conservation in construction.</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">Protecting the ocean environment and preventing air pollution at ports.</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">Supporting the communities and creating jobs.</p>
											</div>
										</div>
										<div class="slide_control">
											<a href="#" class="slide_prev">prev</a><span class="counter"><span class="current">1</span> /  <span class="all">6</span></span><a href="#" class="slide_next">next</a><span class="autoplay_ctrl"><a href="#" class="play">slide play</a><a href="#" class="pause">slide pause</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sec3 section">
					<span id="page3" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_txt">
								<p class="txt1">We are dedicated to minimizing the environmental impact of business activities.</p>
								<p class="txt2">SM Group actively accepts the safety/health and environmental laws and regulations of Korea and other related countries and the advice of interested parties and spontaneously participates in energy-saving activities to discover eco-friendly factors, settle an eco-friendly culture, and respond to climate changes. Our employees and officers believe that quality, environment, and safety are the fundamentals of management activities for the greatest value and abundance of customers and will constantly engage in improvement activities with their utmost capacities and passion.</p>
								<div class="btn_area">
									<a href="/resource/eng/mobile/file/SMGROUP_Environment_Management_EN.pdf" target="_blank" class="btn_default download_btn">Download Environmental Management</a>
								</div>
							</div>
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/eng/mobile/images/sustainability/environment/view_sec3_img1.jpg" alt=""></div>
								<h2>Green System<br>Certification</h2>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
		<%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/mobile/common.jsp" %>
	<script src="/resource/eng/mobile/js/lib/TweenMax.min.js"></script>
	<script src="/resource/eng/mobile/js/lib/ScrollMagic.min.js"></script>
	<script src="/resource/eng/mobile/js/lib/animation.gsap.min.js"></script>
	<script src="/resource/eng/mobile/js/lib/swiper.jquery.js"></script>
	<script src="/resource/eng/mobile/js/sustainability.js"></script>
</body>
</html>