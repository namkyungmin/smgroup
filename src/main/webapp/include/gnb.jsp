<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!-- s: header -->
    <div id="header" class="header_wrap">
        <div class="header">
            <a href="/" class="logo"></a>
            <div class="gnb_wrap">
                <ul class="gnb">
                    <li class="depth1">
                        <a href="/company/overview.do">SM그룹</a>
                        <ul class="depth2">
                            <li><a href="/company/overview.do">그룹소개</a></li>
                            <li><a href="/company/ceo.do">인사말</a></li>
                            <li><a href="/company/history.do">그룹연혁</a></li>
                            <li><a href="/company/ci.do">CI</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <a href="/business/manufacturing.do">사업분야</a>
                        <ul class="depth2">
                            <li><a href="/business/manufacturing.do">제조</a></li>
                            <li><a href="/business/construction.do">건설</a></li>
                            <li><a href="/business/shipping-industry.do">해운</a></li>
                            <li><a href="/business/media-service.do">미디어·서비스</a></li>
                            <li><a href="/business/leisure.do">레저</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <a href="/media/news/list.do">미디어</a>
                        <ul class="depth2">
                            <li><a href="/media/news/list.do">보도자료</a></li>
                            <li><a href="/media/movie/list.do">동영상</a></li>
                            <!-- <li><a href="/media/sns.do">소셜미디어</a></li> -->
                        </ul>
                    </li>
                    <li class="depth1">
                        <a href="/sustainability/index.do">지속가능경영</a>
                        <ul class="depth2">
                            <li><a href="/sustainability/ethics/list.do">윤리준법경영</a></li>
                            <li><a href="/sustainability/partnership/list.do">상생경영</a></li>
                            <li><a href="/sustainability/environment/list.do">환경경영</a></li>
                            <li><a href="/sustainability/social-contribution/list.do">사회공헌</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <a href="/recruit/sm-resource.do">인재채용</a>
                        <ul class="depth2">
                            <li><a href="/recruit/sm-resource.do">인재상</a></li>
                            <!-- <li><a href="/recruit/welfare.do">복리후생</a></li> -->
                            <!-- <li><a href="/recruit/personnel-system.do">인사제도</a></li> -->
                            <li><a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=4000&code2=4300" target="_blank" title="새 창으로 바로 가기">SM People</a></li>
                            <li><a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank" title="새 창으로 바로 가기">채용정보</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="util_wrap">
                <div class="btn lang">
                    <a href="javascript:void(0);" class="first">KOR</a>
                    <a href="/eng/index.do">ENG</a>
                </div>
                <div class="btn subsidiary">
                    <a href="javascript:void(0);">계열사</a>
                </div>
            </div>
        </div>
        <div class="bg"></div>
        
        <!-- s: 계열사 전체보기 -->
        <div class="subsidiary_wrap">
            <!-- s: 계열사 카테고리 -->
            <ul class="category">
                <li>
                    <a href="javascript:void(0);" class="on" data-category="manufacturing">제조부문</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="construction">건설부문</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="shipping">해운부문</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="media_service">미디어/서비스 부문</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="reisure">레저부문</a>
                </li>
            </ul>
            <!--// e: 계열사 카테고리 -->
            <div class="subsidiary_inner">
                <!-- s: 제조 slider -->
                <div class="subsidiary_slider manufacturing on">
                    <div class="swiper-container">
                        <div class="swiper-wrapper" id="swiper_manu">
                        </div>
                        <!-- Add Scrollbar -->
                        <div class="swiper-scrollbar"></div>  
                        <!-- Add Arrows -->
                        <div class="arrow_wrap">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
                <!--// e: 제조 slider -->
                <!-- s: 건설 slider -->
                <div class="subsidiary_slider construction">
                    <div class="swiper-container">
                        <div class="swiper-wrapper" id="swiper_const">
                        </div>
                        <!-- Add Scrollbar -->
                        <div class="swiper-scrollbar"></div>  
                        <!-- Add Arrows -->
                        <div class="arrow_wrap">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
                <!--// e: 건설 slider -->
                <!-- s: 해운 slider -->
                <div class="subsidiary_slider shipping">
                    <div class="swiper-container">
                        <div class="swiper-wrapper" id="swiper_ship">
                        </div>
                        <!-- Add Scrollbar -->
                        <div class="swiper-scrollbar"></div>  
                        <!-- Add Arrows -->
                        <div class="arrow_wrap">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
                <!--// e: 해운 slider -->
                <!-- s: 미디어서비스 slider -->
                <div class="subsidiary_slider media_service">
                    <div class="swiper-container">
                        <div class="swiper-wrapper" id="swiper_media">
                        </div>
                        <!-- Add Scrollbar -->
                        <div class="swiper-scrollbar"></div>  
                        <!-- Add Arrows -->
                        <div class="arrow_wrap">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
                <!--// e: 미디어서비스 slider -->
                <!-- s: 레저 slider -->
                <div class="subsidiary_slider reisure">
                    <div class="swiper-container">
                        <div class="swiper-wrapper" id="swiper_leisure">
                        </div>
                        <!-- Add Scrollbar -->
                        <div class="swiper-scrollbar"></div>  
                        <!-- Add Arrows -->
                        <div class="arrow_wrap">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
                <!--// e: 레저 slider -->
            </div>
        </div>
        <!--// e: 계열사 전체보기 -->
    </div>
    <!--// e: header -->