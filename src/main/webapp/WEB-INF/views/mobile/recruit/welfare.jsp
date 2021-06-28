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
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, 인재채용, SM그룹 복리후생, 복리후생, 채용, 에스엠그룹, 에스엠그룹 인재상">
<meta name="description" content="SM그룹 복리후생 페이지입니다.">
<title>복리후생 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub recruit welfare">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>복리후생</h2>
            </div>
            <!--// e: title -->
            <!-- s: contents -->
            <div id="contents">
                <div class="section sec01">
                    <div class="tit_wrap">
                        <h4>SM Benefit</h4>
                        <p class="sub_tit">SM가족의 평안하고 행복한 삶을 위한 복지제도를 소개합니다.</p>
                    </div>
                    <ul>
                        <li>
                            <p class="txt1">학자금 지원</p>
                            <p class="txt2">본임직원 자녀의 등록금, 수업료,   입학 축하금 등을 지원합니다.</p>
                        </li>
                        <li>
                            <p class="txt1">직장생활 지원</p>
                            <p class="txt2">직장생활에서 발생되는 교통비, 통신비, 식대 등을 지원합니다.</p>
                        </li>
                        <li>
                            <p class="txt1">포상제도</p>
                            <p class="txt2">장기근속/우수사원/우수현장/제안유공 등 다양한 형태의 포상제도를 운영하고 있습니다. </p>
                        </li>
                        <li>
                            <p class="txt1">여가 지원</p>
                            <p class="txt2">임직원 및 가족 여러분에게 호텔 탑스텐, 리조트 동강시스타, 빌라드애월 제주 등 그룹 레저 시설의 할인 혜택을 제공합니다.</p>
                        </li>
                        <li>
                            <p class="txt1">경조사 지원</p>
                            <p class="txt2">임직원의 각종 경조 시 경조금 및 경조 휴가를 지급합니다.</p>
                        </li>
                        <li>
                            <p class="txt1">건강검진</p>
                            <p class="txt2">임직원의 정기적인<br>종합건강검진을 실시합니다.</p>
                        </li>
                    </ul>
                </div>
                <div class="section sec02 sec_full recruit_overview">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>인재채용 소개</h4>
                            <p class="sub_tit">SM그룹은 전문성과 리더십, 역량을 갖춘<br>인재를 모십니다.</p>
                        </div>
                        <ul>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=1000&code2=1100" target="_blank">
                                    <p class="tit">채용프로세스</p>
                                    <p class="cont">전문화된 채용절차를<br>진행하고 있습니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank">
                                    <p class="tit">채용정보</p>
                                    <p class="cont">인재의 힘찬 도전을<br>기다립니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/applicant/alwaysRegistResume" target="_blank">
                                    <p class="tit">인재DB 등록</p>
                                    <p class="cont">상시채용 시스템 통해<br>인재를 찾고 있습니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/bbs/appsite/faq/list" target="_blank">
                                    <p class="tit">채용문의</p>
                                    <p class="cont">채용관련 궁금한 점을<br>확인하실 수 있습니다.</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <%@ include file="/include/mobile/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>
