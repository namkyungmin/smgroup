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
<title>Style Guide</title>
<style>
    .btn_wrap{margin-bottom:10px;}
</style>
</head>

<body>
    <div id="wrap" class="style_guide">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>스타일 가이드</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="tab_wrap">
                    <p class="selected">윤리준법경영</p>
                    <ul>
                        <li>
                            <a href="">윤리준법경영</a>
                        </li>
                        <li>
                            <a href="">상생경영</a>
                        </li>
                        <li>
                            <a href="">환경경영</a>
                        </li>
                        <li>
                            <a href="">사회공헌</a>
                        </li>
                    </ul>
                </div>
                <div class="section">
                    <div class="btn_wrap">
                        <a href="#" class="common_btn type01">
                            <span>LIST</span>
                        </a>
                    </div>
                    <div class="btn_wrap">
                        <a href="#" class="common_btn download">
                            <span>다운로드</span>
                        </a>
                    </div>
                    <div class="btn_wrap">
                        <a href="#" class="common_btn type02">
                            <span>자세히 보기</span>
                        </a>
                    </div>
                </div>
                <div class="section media news list">
                    <div class="slide_wrap">
                        <div>
                            <a href="#">
                                <div class="thumb_wrap">
                                    <img src="/resource/mobile/images/media/thumb_main_news01.jpg" alt="">
                                </div>
                                <div class="cont_wrap">
                                    <p class="tit">우오현 회장 "年 3천억 매출...글로벌기업과 경쟁구도 형성"</p>
                                    <div class="info">
                                        <span class="cate">SM그룹</span>
                                        <span class="date">2020.05.26</span>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="thumb_wrap">
                                    <img src="/resource/mobile/images/media/thumb_main_news01.jpg" alt="">
                                </div>
                                <div class="cont_wrap">
                                    <p class="tit">우오현 회장 "年 3천억 매출...글로벌기업과 경쟁구도 형성"</p>
                                    <div class="info">
                                        <span class="cate">SM그룹</span>
                                        <span class="date">2020.05.26</span>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="thumb_wrap">
                                    <img src="/resource/mobile/images/media/thumb_main_news01.jpg" alt="">
                                </div>
                                <div class="cont_wrap">
                                    <p class="tit">우오현 회장 "年 3천억 매출...글로벌기업과 경쟁구도 형성"</p>
                                    <div class="info">
                                        <span class="cate">SM그룹</span>
                                        <span class="date">2020.05.26</span>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="board_list">
                        <div class="search_wrap">
                            <div class="date">
                                <input type="text" class="date_picker" id="datePickerStart" name="sdate" value="" readonly>
                                <span class="hippen">-</span>
                                <input type="text" class="date_picker" id="datePickerEnd" name="edate" value="" readonly>
                            </div>
                            <div class="search">
                                <div class="input_wrap">
                                    <input type="text" name="keyword" onkeyup="enterkey();">
                                    <a href="javascript:void(0);" class="basic_btn form">검색</a>
                                </div>
                            </div>
                        </div>
                        <ul class="board">
                            <li>
                                <a href="#">
                                    <div class="thumb_area">
                                        <img src="/resource/mobile/images/temp/no_img_news_list.jpg" alt="">
                                    </div>
                                    <div class="txt_area">
                                        <p class="tit">우오현 SM그룹 회장 "그룹 나눔문화 정착... 친환경</p>
                                        <div class="info">
                                            <p class="cate">SM그룹</p>
                                            <p class="date">2020.06.05</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="thumb_area">
                                        <img src="/resource/mobile/images/media/thumb_news01.jpg" alt="">
                                    </div>
                                    <div class="txt_area">
                                        <p class="tit">우오현 SM그룹 회장 "그룹 나눔문화 정착... 친환경</p>
                                        <div class="info">
                                            <p class="cate">SM그룹</p>
                                            <p class="date">2020.06.05</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="thumb_area">
                                        <img src="/resource/mobile/images/media/thumb_news01.jpg" alt="">
                                    </div>
                                    <div class="txt_area">
                                        <p class="tit">우오현 SM그룹 회장 "그룹 나눔문화 정착... 친환경</p>
                                        <div class="info">
                                            <p class="cate">SM그룹</p>
                                            <p class="date">2020.06.05</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="thumb_area">
                                        <img src="/resource/mobile/images/media/thumb_news01.jpg" alt="">
                                    </div>
                                    <div class="txt_area">
                                        <p class="tit">우오현 SM그룹 회장 "그룹 나눔문화 정착... 친환경</p>
                                        <div class="info">
                                            <p class="cate">SM그룹</p>
                                            <p class="date">2020.06.05</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="thumb_area">
                                        <img src="/resource/mobile/images/media/thumb_news01.jpg" alt="">
                                    </div>
                                    <div class="txt_area">
                                        <p class="tit">우오현 SM그룹 회장 "그룹 나눔문화 정착... 친환경</p>
                                        <div class="info">
                                            <p class="cate">SM그룹</p>
                                            <p class="date">2020.06.05</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <div class="paging_wrap">
                            <span class="left arrow">
                                <a href="javascript:void(0);" class="first">처음 페이지</a>
                                <a href="javascript:void(0);" class="prev">이전 페이지</a>
                            </span>
                            <span class="num">1</span>
                            <a href="javascript:void(0);" class="num">2</a>
                            <a href="javascript:void(0);" class="num">3</a>
                            <span class="right arrow">
                                <a href="javascript:void(0);" class="next">다음 페이지</a>
                                <a href="javascript:void(0);" class="last">마지막 페이지</a>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="section media news view">
                    <div class="board_view">
                        <div class="top_area">
                            <h3 class="tit">SM스틸, STS스틸 후판 첫 제품 출하...제품 양산 . 수입대체 겨냥</h3>
                            <div class="info">
                                <span class="category">SM상선</span>
                                <span class="date">2020.05.06</span>
                            </div>
                        </div>
                        <div class="cont_area">
                            <p>
                                SM그룹(회장 우오현) 제조부문 SM스틸은 6일 군산공장에서 생산된 '스테인리스 스틸 후판'  첫 출하식을 갖고 제품 양산 및 수입대체 효과를 겨냥한 힘찬 첫 발을 내딛었다.<br>
                                이번 첫 제품 출하식에는 출하제품의 고객사인 (주)항도ST의 정의도 사장과 SM스틸의 김기호 사장 등 양사 임직원들이 참여했다.<br><br>

                                제품을 인도받은 항도ST 정의도 사장은 “기대한만큼 제품의 평탄도와 표면 품질이 상당히 좋다.<br>
                                사실, 초도제품이라 걱정도 있었지만 오히려 치밀하게 품질관리가 된 제품을 받게 되어 기쁘게 생각한다”고 말했다.
                            </p>
                        </div>
                        <div class="bottom_area">
                            <div class="btn_area">
                                <a href="list.do" class="common_btn type01">
                                    <span>LIST</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sustainability ethics">
                    <div class="cont_tit">
                        <h3>SM그룹 조직 구성원이 지켜야 할 윤리강령을 제정하고 실천합니다.<br />건전한 윤리적 규율 안에서 경영성공을 추구합니다.</h3>
                    </div>
                    <div class="sec1 cardnews section">
                        <div class="card_news_wrap">
                            <div class="box">
                                <img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb1.jpg"  class="thumb" alt="">
                                <a href="#none">
                                    <h4>윤리강령 실천 4단계</h4>
                                    <p class="txt1">기업의 윤리적 가치를 명확하게 정의하고 구체적인 행동 지침을 설계하였습니다.</p>
                                </a>
                            </div>
                            <div class="box">
                                <img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb2.jpg"  class="thumb" alt="">
                                <a href="#none">
                                    <h4>경영윤리교육 프로그램</h4>
                                    <p class="txt1">SM그룹은 경영윤리교육 프로그램을 통해 구성원들의 윤리의식을 고취시키고 도덕적 가치에 기초를 두고 의사결정하고 행동하도록 하고 있습니다.</p>
                                </a>
                            </div>
                            <div class="box">
                                <img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb3.jpg"  class="thumb" alt="">
                                <a href="#none">
                                    <h4>준법경영 및 정책 이행</h4>
                                    <p class="txt1">청렴 캠페인 : "선물(금품·향응 등) 안 주고 안 받기" 실천 운동</p>
                                </a>
                            </div>
                        </div>
                        <div class="arrow_wrap">
                            <a href="#" class="arrow_btn btn_prev">prev</a>
                            <span class="crr_num">1</span>
                            <span class="slash">/</span>
                            <span class="tot_num">3</span>
                            <a href="#" class="arrow_btn btn_next">next</a>
                        </div>
                    </div>
                    <div class="sec2 section sec_full">
                        <div class="sec_inner">
                            <div class="tit_wrap">
                                <h4>윤리규범</h4>
                                <p class="sub_tit">SM그룹 윤리규범은 모든 임직원이 경영현장에서 기본적으로 지켜야 할 올바른 행동과<br />가치판단의 기준을 제공하는 것을 목적으로 합니다.</p>
                            </div>
                            <div class="inner_cont">
                                <p class="thumbnail"><img src="/resource/mobile/images/sustainability/ethics_sec2_img1.jpg" alt="2020윤리규범"></p>
                                <a href="/resource/file/SMGROUP_Code_of_Ethics_KR.pdf" class="common_btn download">
                                    <span>다운로드</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
        smGroup.tab();

        $('.slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 4000,
        });

        $( "#datePickerStart" ).datepicker({dateFormat: 'yy-mm-dd'});
        $( "#datePickerEnd" ).datepicker({dateFormat: 'yy-mm-dd'});
        function enterkey() {
			if (window.event.keyCode == 13) {
				// 엔터키가 눌렸을 때 실행할 내용
			}
		}

        $('.card_news_wrap').slick({
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 4000,
        });
        $('.card_news_wrap').on('beforeChange', function(event, slick, currentSlide, nextSlide){
            var crrIdx = nextSlide+1;
            $('.arrow_wrap .crr_num').text(crrIdx);
        });
        
        $('.arrow_btn').click(function(e){
            e.preventDefault();
            if ( $(this).hasClass('btn_prev') ){
                $('.slick-prev').trigger('click');
            }else{
                $('.slick-next').trigger('click');
            }
        })

    </script>
</body>
</html>