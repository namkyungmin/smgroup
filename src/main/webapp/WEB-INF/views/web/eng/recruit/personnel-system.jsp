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
<meta name="keywords" content="SM그룹, 인재채용, SM그룹 인사제도, 인사제도, 채용, 에스엠 그룹, 에스엠그룹 인사제도">
<meta name="description" content="SM그룹 인사제도 페이지입니다. SM그룹은 조직이 지속적으로 최고의 역량을 발휘할 수 있도록 공정하고 합리적인 평가 및 보상 시스템을 운영하고 있습니다.">
<title>인사제도 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub recruit personnel-system">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>인사제도</h2>
            </div>
            <!--// e: title -->
            <!-- s: breadcrumb -->
            <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">인재채용</li>
                <li class="depth2">인사제도</li>
            </ul>
            <!--// e: breadcrumb -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section sec01">
                    <div class="tit_wrap">
                        <h4>직급체계</h4>
                        <p class="sub_tit">
                            대한민국의 내일을 만드는 SM People<br>SM그룹의 다양한 인사제도와 함께 성장합니다.
                        </p>
                    </div>
                    <div class="box">
                        <ul class="rank_list">
                            <li>
                                <span>사원</span>
                            </li>
                            <li>
                                <span>대리</span>
                            </li>
                            <li>
                                <span>과장</span>
                            </li>
                            <li>
                                <span>차장</span>
                            </li>
                            <li>
                                <span>부장</span>
                            </li>
                        </ul>
                        <p>
                            - 직위 별 승진자격 기본 년수에 도달한 직원을 대상으로 승진심사를 진행합니다.<br>
                            - 역량 ∙ 성과가 탁월한 경우 특별승진 기회가 부여됩니다. 
                        </p>
                    </div>

                    <ul class="feature">
                        <li>
                            <p class="txt1">정기적으로 직원의 성과 및 역량을 평가하여 승진∙배치∙육성 등의 자료로 활용합니다.</p>
                            <ul class="txt2">
                                <li>객관적인 성과측정</li>
                                <li>체계적인 역량분석</li>
                            </ul>
                        </li>
                        <li>
                            <p class="txt1">업적에 걸맞은 보상을 제공하여 회사에 대한 Loyalty와 인사제도의 신뢰성을 강화합니다.</p>
                            <ul class="txt2">
                                <li>평가결과 기반의 투명한 승진제도</li>
                                <li>성과-보상 연계에 의한 지원 동기부여</li>
                            </ul>
                        </li>
                        <li>
                            <p class="txt1">공정한 평가 ∙ 보상 체계로 직원에게 동기를 부여하고 핵심인재로 성장할 수 있는 기회를 부여합니다.</p>
                            <ul class="txt2">
                                <li>핵심인재 발굴·중점 육성</li>
                                <li>직무·배치전환 프로그램으로 다양한 성장기회 부여</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="section sec02 section_full recruit_overview">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>인재채용 소개</h4>
                            <p>SM그룹은 전문성과 리더십, 역량을 갖춘 인재를 모십니다.</p>
                        </div>
                        <ul>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr">
                                    <strong>채용프로세스</strong>
                                    <p>전문화된 채용절차를<br>진행하고 있습니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/jobnotice/list">
                                    <strong>채용정보</strong>
                                    <p>인재의 힘찬 도전을<br>기다립니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/applicant/alwaysRegistResume">
                                    <strong>인재DB 등록</strong>
                                    <p>상시채용 시스템 통해<br>인재를 찾고 있습니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/bbs/appsite/faq/list">
                                    <strong>채용문의</strong>
                                    <p>채용관련 궁금한 점을<br>확인하실 수 있습니다.</p>
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
