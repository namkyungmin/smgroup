<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!-- header -->
    <div id="header" class="header">
        <div class="header_wrap">
            <h1 class="logo"><a href="/mobile/index.do"></a></h1>
            <a href="#none" class="btn_menu"></a>
            <a href="#none" class="btn_subsidiary">계열사</a>
        </div>
        <div class="gnb_wrap">
            <div class="gnb_inner">
                <div class="lang_wrap">
                    <a href="/mobile/index.do" class="btn_lang kor on">KOR</a>
                    <a href="/mobile/eng/index.do" class="btn_lang eng">ENG</a>
                </div>
                <ul id="gnb" class="gnb">
                    <li class="depth1" data-page="1">
                        <a href="#none">SM그룹</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/company/overview.do">그룹소개</a></li>
                            <li class="depth2"><a href="/mobile/company/ceo.do">인사말</a></li>
                            <li class="depth2"><a href="/mobile/company/history.do">그룹연혁</a></li>
                            <li class="depth2"><a href="/mobile/company/ci.do">CI</a></li>
                        </ul>
                    </li>
                    <li class="depth1" data-page="2">
                        <a href="#none">사업분야</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/business/manufacturing.do">제조</a></li>
                            <li class="depth2"><a href="/mobile/business/construction.do">건설</a></li> 
                            <li class="depth2"><a href="/mobile/business/shipping-industry.do">해운</a></li>
                            <li class="depth2"><a href="/mobile/business/media-service.do">미디어·서비스</a></li>
                            <li class="depth2"><a href="/mobile/business/leisure.do">레저</a></li>
                        </ul>
                    </li>
                    <li class="depth1" data-page="3">
                        <a href="#none">미디어</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/media/news/list.do">보도자료</a></li>
                            <li class="depth2"><a href="/mobile/media/movie/list.do">동영상</a></li>
                            <!-- <li class="depth2"><a href="/mobile/media/sns.do">소셜미디어</a></li> -->
                        </ul>
                    </li>
                    <li class="depth1" data-page="4">
                        <a href="#none">지속가능경영</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/sustainability/index.do">지속가능경영</a></li>
                            <li class="depth2"><a href="/mobile/sustainability/ethics/list.do">윤리경영</a></li>
                            <li class="depth2"><a href="/mobile/sustainability/partnership/list.do">상생경영</a></li>
                            <li class="depth2"><a href="/mobile/sustainability/environment/list.do">환경경영</a></li>
                            <li class="depth2"><a href="/mobile/sustainability/social-contribution/list.do">사회공헌</a></li>
                        </ul>
                    </li>
                    <li class="depth1" data-page="5">
                        <a href="#none">인재채용</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/recruit/sm-resource.do">인재상</a></li>
                            <!-- <li class="depth2"><a href="/mobile/recruit/welfare.do">복리후생</a></li> -->
                            <!-- <li class="depth2"><a href="/mobile/recruit/personnel-system.do">인사제도</a></li> -->
                            <li class="depth2"><a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=4000&code2=4300" target="_blank" title="새 창으로 바로 가기">SM People</a></li>
                            <li class="depth2"><a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank" title="새 창으로 바로 가기">채용정보</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="subsidiary_wrap">
            <div class="subsidiary_inner">
                <p class="tit">계열사 바로가기</p>
                <ul class="subsidiary_list">
                    <li>
                        <p class="category">제조</p>
                        <ul class="subsidiary" id="swiper_manu">
                        </ul>
                    </li>
                    <li>
                        <p class="category">건설</p>
                        <ul class="subsidiary" id="swiper_const">
                        </ul>
                    </li>
                    <li>
                        <p class="category">해운</p>
                        <ul class="subsidiary" id="swiper_ship">
                        </ul>
                    </li>
                    <li>
                        <p class="category line2">
                            <span>미디어</span>
                            <span>서비스</span>
                        </p>
                        <ul class="subsidiary" id="swiper_media">
                        </ul>
                    </li>
                    <li>
                        <p class="category">레저</p>
                        <ul class="subsidiary" id="swiper_leisure">
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //header -->