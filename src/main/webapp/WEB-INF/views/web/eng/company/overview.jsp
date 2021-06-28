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
<meta name="keywords" content="SM Group, SM Group About Us, About Us, SM About Us">
<meta name="description" content="This is SM Group’s introduction page. SM Group is a global group that creates value in various sectors including leisure, media/service industry, shipping, manufacturing, and construction. ">
<title>About Us | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub overview">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2>
                    Trust from clients is the most important value to us.<br>
                    <span>Today and tomorrow, we create a better life.</span>
                </h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="contents_top no_tab">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
                        <li class="home">Home</li>
                        <li class="depth1">SM Group</li>
                        <li class="depth2">About Us</li>
					</ul>
                    <!--// e: breadcrumb -->
                    <div class="tit_wrap main_tit">
                        <h3>About Us</h3>
                    </div>
                </div>
                <div class="section cont01">
                    <p class="txt1">Global Sustainable Leading Company</p> 
                    <p class="txt2">
                        The SM Group is becoming a <strong>global, top-tier corporation</strong><br>through continuous innovation and change.
                    </p> 
                    <div class="box">
                        <div class="left">
                            <p>
                                Established in 1988, the SM Group provides differentiated and innovative products and services through domestic and international networks. The corporation is continuing to prosper, creating value to enrich the lives of our clients.<br><br>
                                The SM Group continues to develop new business sectors based on the core values of <strong>trust · creativity · innovation.</strong>
                            </p>
                        </div>
                        <div class="right">
                            <a href="/resource/eng/file/SMGROUP_Brochure_EN.pdf" class="brochure" target="_blank" title="새 창으로 바로가기">
                                <img src="/resource/eng/images/company/img_overview01.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="section cont02">
                    <div class="tit_wrap">
                        <h4>Core values</h4>
                    </div>
                    <div class="cont_wrap">
                        <h5>SMGROUP</h5>
                        <div class="el_wrap">
                            <dl class="el1">
                                <dt>Creative<br>Insight</dt>
                                <dd>
                                    <em>A youthful company<br> with creative ambitions</em>
                                    <p>We aspire to stay awake and young by allowing employees to dream and by motivating them to undertake new challenges.</p>
                                </dd>
                            </dl>
                            <dl class="el2">
                                <dt>Great<br>Innovation</dt>
                                <dd>
                                    <em>A company that<br> transforms through<br> technology and innovation</em>
                                    <p>We will become a company that is never afraid of change or innovation. We will create the best products and services through continuous research and technology development.
                                    </p>
                                </dd>
                            </dl>
                        </div>
                        <dl class="el3">
                            <dt>Great<br>Partnership</dt>
                            <dd>
                                <em>A reliable corporation<br> focused on consumer satisfaction<br> and building trust</em>
                                <p>Our priorities are our customers, they are the starting point of management. We promise to fulfil our social responsibilities based the trust of our customers and partners.</p>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="section cont03 section_full">
                    <div class="tit_wrap">
                        <h4>Vision</h4>
                    </div>
                    <div class="bg">
                        <div class="sec_inner">
                            <div class="tit_wrap">
                                <p class="small_tit">VISION</p>
                                <p class="big_tit">
                                    A respected company that fulfils its<br>
                                    social responsibility through management<br>
                                    that focuses on <strong>customer satisfaction</strong><br>
                                    and <strong>mutual growth</strong>
                                </p>
                            </div>
                            <img src="/resource/eng/images/company/img_overview03.png" alt="" class="people">
                        </div>
                    </div>
                </div>
                <div class="section cont04 section_full">
                    <div class="tit_wrap">
                        <h4>Core Strategies</h4>
                    </div>
                    <div class="bg">
                        <div class="sec_inner">
                            <ul>
                                <li>
                                    <p>
                                        Drive the growth of<br>our customer's business and<br>industry through strong leadership
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        Lead continuous innovation,<br>maintain efficient organization,<br>and develop global talents
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        Expand to the global market<br>based on the innovative technology<br>and leadership
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="section cont05 section_full">
                    <div class="tit_wrap">
                        <h4>Identity</h4>
                    </div>
                    <div class="bg">
                        <div class="sec_inner">
                            <p class="txt">
                                SM Group’s value is reborn through the new synergy,<br>
                                created by the integration of each subsidiaries' potential for the future
                            </p>
                            <p class="identity">
                                Unique Together
                            </p>
                        </div>
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