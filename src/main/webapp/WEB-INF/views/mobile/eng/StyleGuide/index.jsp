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
<title>Style Guide</title>
<style>
    .btn_wrap{margin-bottom:10px;}
</style>
</head>

<body>
    <div id="wrap" class="style_guide">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Style Guide</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="tab_wrap">
                    <p class="selected">Ethical Management</p>
                    <ul>
                        <li>
                            <a href="">Ethical Management</a>
                        </li>
                        <li>
                            <a href="">Shared Growth Management</a>
                        </li>
                        <li>
                            <a href="">Environmental Management</a>
                        </li>
                        <li>
                            <a href="">Social Contribution</a>
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
                            <span>Download</span>
                        </a>
                    </div>
                    <div class="btn_wrap">
                        <a href="#" class="common_btn type02">
                            <span>More</span>
                        </a>
                    </div>
                </div>
                <div class="sustainability ethics">
                    <div class="cont_tit">
                        <h3>Establish and practice ethical conduct for SM Group employees to abide by.<br />We strive for management success within fair and ethical frameworks.</h3>
                    </div>
                    <div class="sec1 cardnews section">
                        <div class="card_news_wrap">
                            <div class="box">
                                <img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb1.jpg"  class="thumb" alt="">
                                <a href="#none">
                                    <h4>The 4 steps of practicing the code of ethics</h4>
                                    <p class="txt1">Define the corporate ethical values ​​and designed specific guidelines for action.</p>
                                </a>
                            </div>
                            <div class="box">
                                <img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb2.jpg"  class="thumb" alt="">
                                <a href="#none">
                                    <h4>Management ethical training program</h4>
                                    <p class="txt1">The SM Group aims to encourage its members to decide on and enact moral values and to be more …</p>
                                </a>
                            </div>
                            <div class="box">
                                <img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb3.jpg"  class="thumb" alt="">
                                <a href="#none">
                                    <h4>Compliance and implementation of policies</h4>
                                    <p class="txt1">Transparency campaign: “Do not give or receive gifts (money/bribes)” campaign</p>
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
                                <h4>Code of Ethics</h4>
                                <p class="sub_tit">SM Group’s code of ethics aims to provide essential standards for behavior and judgement for all employees to adhere to at the workplace.</p>
                            </div>
                            <div class="inner_cont">
                                <p class="thumbnail"><img src="/resource/mobile/images/sustainability/ethics_sec2_img1.jpg" alt="2020윤리규범"></p>
                                <a href="/resource/file/SMGROUP_Code_of_Ethics_KR.pdf" class="common_btn download">
                                    <span>Download</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/mobile/common.jsp" %>
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