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
<meta name="keywords" content="SM Group, SM Group Desired Talents, Desired Talents, Recruitment, SM Desired Talents">
<meta name="description" content="This page describes the talents the SM Group desires.">
<title>Desired Talents | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub recruit sm_resource">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Desired Talents</h2>
            </div>
            <!--// e: title -->
            <!-- s: breadcrumb -->
            <ul class="breadcrumb">
                <li class="home">Home</li>
                <li class="depth1">Recruitment</li>
                <li class="depth2">Desired Talents</li>
            </ul>
            <!--// e: breadcrumb -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section sec01">
                    <div class="tit_wrap">
                        <h4>SM People</h4>
                        <p>The SM Group is looking for people with the following skills</p>
                    </div>
                    <ul>
                        <li class="top">
                            <p class="txt1">Experience</p>
                            <p class="txt2">
                                Someone who can<br>capitalize on diverse<br>experience
                            </p>
                        </li>
                        <li class="btm">
                            <p class="txt1">Execution</p>
                            <p class="txt2">
                                Someone who can<br>realize their plans
                            </p>
                        </li>
                        <li class="top">
                            <p class="txt1">Encourage</p>
                            <p class="txt2">
                                Someone who supports<br>and empowers others
                            </p>
                        </li>
                        <li class="btm">
                            <p class="txt1">Energy</p>
                            <p class="txt2">
                                Someone who is<br>energized when working
                            </p>
                        </li>
                        <li class="top">
                            <p class="txt1">Expert</p>
                            <p class="txt2">
                                Someone who can<br>become an expert<br>in their field
                            </p>
                        </li>
                    </ul>
                    <div class="txt">
                        <span>SM Groups desired talents</span>are people who create synergy<br>with different talents and always challenge new ones.
                    </div>
                </div>
                <div class="section sec02 section_full recruit_overview">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>Introduction of recruitment</h4>
                            <a href="https://smpeople.recruiter.co.kr/appsite/company/index" target="_blank">
                                Move to Korean recruitment site
                                <span class="btn_arrow"><img src="/resource/eng/images/common/bg_btn_arrow_r.png" alt=""></span>
                            </a>
                        </div>
                        <p class="sub_tit">The SM Group is inviting applicants with expertise, leadership, and skills</p>
                        <ul>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=1000&code2=1100" target="_blank">
                                    <strong>Recruitment process</strong>
                                    <p>Our process is formalized and structured.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank">
                                    <strong>Hiring information</strong>
                                    <p>We are awaiting applicants to join us.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/applicant/alwaysRegistResume" target="_blank">
                                    <strong>Recruitment DB</strong>
                                    <p>Our recruitment process is always open.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/bbs/appsite/faq/list" target="_blank">
                                    <strong>Inquiries</strong>
                                    <p>Please find answers to frequently asked question about the hiring process.</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <%@ include file="/include/eng/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/eng/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>
