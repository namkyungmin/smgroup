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
<meta name="keywords" content="SM Group, SM Group Desired Talents, Desired Talents, Recruitment, SM Desired Talents">
<meta name="description" content="This page describes the talents the SM Group desires.">
<title>Desired Talents | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub recruit sm_resource">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Desired Talents</h2>
            </div>
            <!--// e: title -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section sec01">
                    <div class="tit_wrap">
                        <h4>SM People</h4>
                        <p class="sub_tit">The SM Group is looking for people with the following skills</p>
                    </div>
                    <ul>
                        <li>
                            <p class="txt1">Experience</p>
                            <p class="txt2">Someone who can capitalize on diverse experience</p>
                        </li>
                        <li>
                            <p class="txt1">Execution</p>
                            <p class="txt2">Someone who can realize their plans</p>
                        </li>
                        <li>
                            <p class="txt1">Encourage</p>
                            <p class="txt2">Someone who supports and empowers others</p>
                        </li>
                        <li>
                            <p class="txt1">Energy</p>
                            <p class="txt2">Someone who is energized when working</p>
                        </li>
                        <li>
                            <p class="txt1">Expert</p>
                            <p class="txt2">Someone who can become an expert in their field</p>
                        </li>
                    </ul>
                    <div class="txt">
                        <span>SM Groups desired talents</span> are people who create synergy with different talents and always challenge new ones.
                    </div>
                </div>
                <div class="section sec02 sec_full recruit_overview">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>Introduction of recruitment</h4>
                            <a href="https://smpeople.recruiter.co.kr/appsite/company/index" target="_blank">
                                Move to Korean recruitment site
                                <span class="btn_arrow"><img src="/resource/eng/mobile/images/common/bg_btn_arrow_r.png" alt=""></span>
                            </a>
                        </div>
                        <p class="sub_tit">The SM Group is inviting applicants with expertise, leadership, and skills</p>
                        <ul>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=1000&code2=1100" target="_blank">
                                    <p class="tit">Recruitment process</p>
                                    <p class="cont">Our process is formalized and structured.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank">
                                    <p class="tit">Hiring information</p>
                                    <p class="cont">We are awaiting applicants to join us.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/applicant/alwaysRegistResume" target="_blank">
                                    <p class="tit">Recruitment DB</p>
                                    <p class="cont">Our recruitment process is always open.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/bbs/appsite/faq/list" target="_blank">
                                    <p class="tit">Inquiries</p>
                                    <p class="cont">Please find answers to frequently asked question about the hiring process.</p>
                                </a>
                            </li>
                        </ul>
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
