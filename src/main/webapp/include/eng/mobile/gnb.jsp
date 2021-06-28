<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!-- header -->
    <div id="header" class="header">
        <div class="header_wrap">
            <h1 class="logo"><a href="/mobile/eng/index.do"></a></h1>
            <a href="#none" class="btn_menu"></a>
            <a href="#none" class="btn_subsidiary">Subsidiary</a>
        </div>
        <div class="gnb_wrap">
            <div class="gnb_inner">
                <div class="lang_wrap">
                    <a href="/mobile/index.do" class="btn_lang kor">KOR</a>
                    <a href="/mobile/eng/index.do" class="btn_lang eng on">ENG</a>
                </div>
                <ul id="gnb" class="gnb">
                    <li class="depth1" data-page="1">
                        <a href="#none">SM Group</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/eng/company/overview.do">About Us</a></li>
                            <li class="depth2"><a href="/mobile/eng/company/ceo.do">CEO Greetings</a></li>
                            <li class="depth2"><a href="/mobile/eng/company/history.do">History</a></li>
                            <li class="depth2"><a href="/mobile/eng/company/ci.do">CI</a></li>
                        </ul>
                    </li>
                    <li class="depth1" data-page="2">
                        <a href="#none">Business</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/eng/business/manufacturing.do">Manufacturing</a></li>
                            <li class="depth2"><a href="/mobile/eng/business/construction.do">Construction</a></li> 
                            <li class="depth2"><a href="/mobile/eng/business/shipping-industry.do">Shipping Industry</a></li>
                            <li class="depth2"><a href="/mobile/eng/business/media-service.do">Media·Service</a></li>
                            <li class="depth2"><a href="/mobile/eng/business/leisure.do">Leisure</a></li>
                        </ul>
                    </li>
                    <li class="depth1" data-page="4">
                        <a href="#none">Sustainable Management</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/eng/sustainability/index.do">Sustainable Management</a></li>
                            <li class="depth2"><a href="/mobile/eng/sustainability/ethics/list.do">Ethical Management</a></li>
                            <li class="depth2"><a href="/mobile/eng/sustainability/partnership/list.do">Mutual Growth Management</a></li>
                            <li class="depth2"><a href="/mobile/eng/sustainability/environment/list.do">Environmental Management</a></li>
                            <li class="depth2"><a href="/mobile/eng/sustainability/social-contribution/list.do">Social Contribution</a></li>
                        </ul>
                    </li>
                    <li class="depth1" data-page="5">
                        <a href="#none">Recruitment</a>
                        <ul class="depth2_list">
                            <li class="depth2"><a href="/mobile/eng/recruit/sm-resource.do">Desired Talents</a></li>
                            <!-- <li class="depth2"><a href="/mobile/eng/recruit/welfare.do">복리후생</a></li>
                            <li class="depth2"><a href="/mobile/eng/recruit/personnel-system.do">인사제도</a></li>
                            <li class="depth2"><a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=4000&code2=4300" target="_blank" title="새 창으로 바로 가기">SM People</a></li>
                            <li class="depth2"><a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank" title="새 창으로 바로 가기">채용정보</a></li> -->
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="subsidiary_wrap">
            <div class="subsidiary_inner">
                <p class="tit">Subsidiary</p>
                <ul class="subsidiary_list">
                    <li>
                        <p class="category">Manufacturing</p>
                        <ul class="subsidiary" id="swiper_manu">
                        </ul>
                    </li>
                    <li>
                        <p class="category">Construction</p>
                        <ul class="subsidiary" id="swiper_const">
                        </ul>
                    </li>
                    <li>
                        <p class="category">Shipping Industry</p>
                        <ul class="subsidiary" id="swiper_ship">
                        </ul>
                    </li>
                    <li>
                        <p class="category">Media&middot;Service</p>
                        <ul class="subsidiary" id="swiper_media">
                        </ul>
                    </li>
                    <li>
                        <p class="category line2">Leisure</p>
                        <ul class="subsidiary" id="swiper_leisure">
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //header -->