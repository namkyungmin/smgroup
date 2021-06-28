<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!-- s: header -->
    <div id="header" class="header_wrap">
        <div class="header">
            <a href="/eng/index.do" class="logo"></a>
            <div class="gnb_wrap">
                <ul class="gnb">
                    <li class="depth1">
                        <a href="/eng/company/overview.do">SM Group</a>
                        <ul class="depth2" style="height: 10px;">
                            <li><a href="/eng/company/overview.do">About Us</a></li>
                            <li><a href="/eng/company/ceo.do">CEO Greetings</a></li>
                            <li><a href="/eng/company/history.do">History</a></li>
                            <li><a href="/eng/company/ci.do">CI</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <a href="/eng/business/manufacturing.do">Business</a>
                        <ul class="depth2" style="height: 10px;">
                            <li><a href="/eng/business/manufacturing.do">Manufacturing</a></li>
                            <li><a href="/eng/business/construction.do">Construction</a></li>
                            <li><a href="/eng/business/shipping-industry.do">Shipping Industry</a></li>
                            <li><a href="/eng/business/media-service.do">Media&middot;Service</a></li>
                            <li><a href="/eng/business/leisure.do">Leisure</a></li>
                        </ul>
                    </li>
                    <!-- <li class="depth1">
                        <a href="/eng/media/news/list.do">미디어</a>
                        <ul class="depth2">
                            <li><a href="/eng/media/news/list.do">보도자료</a></li>
                            <li><a href="/eng/media/movie/list.do">동영상</a></li>
                            <li><a href="/eng/media/sns.do">소셜미디어</a></li>
                        </ul>
                    </li> -->
                    <li class="depth1">
                        <a href="/eng/sustainability/index.do">Sustainable Management</a>
                        <ul class="depth2 sustainable" style="height: 10px;">
                            <li><a href="/eng/sustainability/ethics/list.do">Ethical Management</a></li>
                            <li><a href="/eng/sustainability/partnership/list.do">Mutual Growth Management</a></li>
                            <li><a href="/eng/sustainability/environment/list.do">Environmental Management</a></li>
                            <li><a href="/eng/sustainability/social-contribution/list.do">Social Contribution</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <a href="/eng/recruit/sm-resource.do">Recruitment</a>
                        <ul class="depth2" style="height: 10px;">
                            <li><a href="/eng/recruit/sm-resource.do">Desired Talents</a></li>
                            <!-- <li><a href="/eng/recruit/welfare.do">복리후생</a></li>
                            <li><a href="/eng/recruit/personnel-system.do">인사제도</a></li>
                            <li><a href="https://smpeople.recruiter.co.kr/appsite/company/callSubPage?code1=4000&code2=4300" target="_blank" title="새 창으로 바로 가기">SM People</a></li>
                            <li><a href="https://smpeople.recruiter.co.kr/app/jobnotice/list" target="_blank" title="새 창으로 바로 가기">채용정보</a></li> -->
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="util_wrap">
                <div class="btn lang">
                    <a href="javascript:void(0);" class="first">ENG</a>
                    <a href="/index.do">KOR</a>
                </div>
                <div class="btn subsidiary">
                    <a href="javascript:void(0);">Subsidiary</a>
                </div>
            </div>
        </div>
        <div class="bg"></div>
        
        <!-- s: 계열사 전체보기 -->
        <div class="subsidiary_wrap">
            <!-- s: 계열사 카테고리 -->
            <ul class="category">
                <li>
                    <a href="javascript:void(0);" class="on" data-category="manufacturing">Manufacturing</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="construction">Construction</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="shipping">Shipping Industry</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="media_service">Media&middot;Service</a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-category="reisure">Leisure</a>
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