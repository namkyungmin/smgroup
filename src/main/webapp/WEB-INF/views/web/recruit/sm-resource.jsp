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
<meta name="keywords" content="SM그룹, 인재채용, SM그룹 인재상, 인재상, 채용, SM 인재상, 에스엠 인재상, 에스엠그룹, 에스엠그룹 인재상">
<meta name="description" content="SM그룹 인재상 페이지입니다. SM그룹은 전문성과 리더십, 역량을 갖춘 인재를 찾고 있습니다.">
<title>인재상 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub recruit sm_resource">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>인재상</h2>
            </div>
            <!--// e: title -->
            <!-- s: breadcrumb -->
            <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">인재채용</li>
                <li class="depth2">인재상</li>
            </ul>
            <!--// e: breadcrumb -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section sec01">
                    <div class="tit_wrap">
                        <h4>SM People</h4>
                        <p>SM그룹의 인재상은 Vision과 Priorities를 실현하기 위해 다음과 같은 능력을 갖춘 사람입니다.</p>
                    </div>
                    <ul>
                        <li class="top">
                            <p class="txt1">Experience</p>
                            <p class="txt2">다양한 경험을 자신의<br>자산으로 만드는 사람</p>
                        </li>
                        <li class="btm">
                            <p class="txt1">Execution</p>
                            <p class="txt2">계획을 실행으로<br>이끌 수 있는 사람</p>
                        </li>
                        <li class="top">
                            <p class="txt1">Encourage</p>
                            <p class="txt2">동료에게 힘이 되고<br>용기를 줄 수 있는 사람</p>
                        </li>
                        <li class="btm">
                            <p class="txt1">Energy</p>
                            <p class="txt2">업무에 임할 때<br>활력이 넘치는 사람</p>
                        </li>
                        <li class="top">
                            <p class="txt1">Expert</p>
                            <p class="txt2">자신의 분야에서<br>전문가가 될 수 있는 사람</p>
                        </li>
                    </ul>
                    <div class="txt">
                        <span>SM그룹의 인재상</span>은 서로 다른 재능이 모여 시너지를 만들고<br>언제나 새로움에 도전하는 사람을 이야기 합니다.
                    </div>
                </div>
                <div class="section sec02 section_full recruit_overview">
                    <div class="sec_inner">
                        <div class="tit_wrap">
                            <h4>인재채용 소개</h4>
                            <a href="https://smpeople.recruiter.co.kr/appsite/company/index" target="_blank">
                                채용사이트 바로가기 
                                <span class="btn_arrow"><img src="/resource/images/common/bg_btn_arrow_r.png" alt=""></span>
                            </a>
                        </div>
                        <p class="sub_tit">
                            SM그룹은 전문성과 리더십, 역량을 갖춘 인재를 모십니다.
                        </p>
                        <ul>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=1000&code2=1100" target="_blank">
                                    <strong>채용프로세스</strong>
                                    <p>전문화된 채용절차를<br>진행하고 있습니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank">
                                    <strong>채용정보</strong>
                                    <p>인재의 힘찬 도전을<br>기다립니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/app/applicant/alwaysRegistResume" target="_blank">
                                    <strong>인재DB 등록</strong>
                                    <p>상시채용 시스템 통해<br>인재를 찾고 있습니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://smpeople.recruiter.co.kr/bbs/appsite/faq/list" target="_blank">
                                    <strong>채용문의</strong>
                                    <p>채용관련 궁금한 점을<br>확인하실 수 있습니다.</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <%@ include file="/include/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>
