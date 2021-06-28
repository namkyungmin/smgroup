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
<meta name="keywords" content="SM그룹, 미디어, SM그룹 동영상, 동영상, 홍보자료, SM 동영상, 에스엠 동영상, 에스엠그룹, 에스엠그룹 동영상">
<meta name="description" content="SM그룹 동영상 페이지입니다. SM그룹의 다양한 계열사의 홍보동영상을 만나보실 수 있습니다.">
<title>동영상 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub media movie list">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>동영상</h2>
            </div>
            <!--// e: title -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section">
					<!-- s: slide_wrap -->
					<div class="slide_wrap">
                        <div>
                            <a href="#" class="pop_btn" data-viewclick="7" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                <div class="thumb_wrap">
                                    <img src="/resource/mobile/images/media/thumb_main_news01.jpg" alt="">
                                </div>
                                <div class="cont_wrap">
                                    <p class="tit">오늘을 넘어 미래로, SM그룹오늘을 넘어 미래로, SM그룹오늘을 넘어 미래로, SM그룹</p>
                                    <div class="info">
                                        <span class="cate">SM그룹</span>
                                        <span class="date">2020.05.26</span>
									</div>
									<div class="contents">test7</div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#" class="pop_btn" data-viewclick="6" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                <div class="thumb_wrap">
                                    <img src="/resource/mobile/images/media/thumb_main_news01.jpg" alt="">
                                </div>
                                <div class="cont_wrap">
                                    <p class="tit">오늘을 넘어 미래로, SM그룹</p>
                                    <div class="info">
                                        <span class="cate">SM그룹</span>
                                        <span class="date">2020.05.26</span>
									</div>
									<div class="contents">test6</div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#" class="pop_btn" data-viewclick="5" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                <div class="thumb_wrap">
                                    <img src="/resource/mobile/images/media/thumb_main_news01.jpg" alt="">
                                </div>
                                <div class="cont_wrap">
                                    <p class="tit">오늘을 넘어 미래로, SM그룹</p>
                                    <div class="info">
                                        <span class="cate">SM그룹</span>
                                        <span class="date">2020.05.26</span>
									</div>
									<div class="contents">test5</div>
                                </div>
                            </a>
                        </div>
                    </div>
					<!--// e: slide_wrap -->
					<div class="movie_list">
						<div class="board_list">
							<!-- s: search -->
							<div class="search_wrap">
								<div class="date">
									<input type="text" class="date_picker" id="datePickerStart" name="sdate" value="" readonly>
									<span class="hippen">-</span>
									<input type="text" class="date_picker" id="datePickerEnd" name="edate" value="" readonly>
								</div>
								<div class="search">
									<div class="input_wrap">
                                		<input type="hidden" name="target" value="all">
										<input type="text" name="keyword" onkeyup="enterkey();">
										<a href="javascript:void(0);" class="basic_btn form">검색</a>
									</div>
								</div>
							</div>
							<!--// e: search -->
							<!-- s: list -->
							<ul class="board">
								<li>
									<a href="#" class="pop_btn" data-viewclick="4" data-videoid="IkEWdPQmMeU" data-popup="youtube">
										<div class="thumb_area">
											<img src="/resource/mobile/images/media/thumb_youtube01.jpg" alt="">
										</div>
										<div class="txt_area">
											<p class="tit">국가대표 화학소재 기업<br> -티케이케미칼 티케이케미칼티케이케미칼티케이케미칼티케이케미칼티케이케미칼</p>
											<div class="info">
												<span class="date">2020.08.14</span>
												<span class="cate">티케이케미칼</span>
											</div>
											<div class="contents">test4</div>
										</div>
									</a>
								</li>
								<li>
									<a href="#" class="pop_btn" data-viewclick="3" data-videoid="IkEWdPQmMeU" data-popup="youtube">
										<div class="thumb_area">
											<img src="/resource/mobile/images/media/thumb_youtube02.jpg" alt="">
										</div>
										<div class="txt_area">
											<p class="tit">건설의 새로운 미래<br> – SM삼환기업</p>
											<div class="info">
												<span class="date">2020.08.14</span>
												<span class="cate">SM삼환기업</span>
											</div>
											<div class="contents">test3 티케이케미칼은 1965년 동국무역주식회사로 설립되어 POLYESTER, SPANDEX 그리고 PET RESIN 소재의 글로벌 리더로서 50여 년간 축적된 최첨단 기술력과 노하우를 보유한 국가대표 화학 소재 기업입니다. SM그룹 TK케미칼 TV 광고 영상입니다. </div>
										</div>
									</a>
								</li>
								<li>
									<a href="#" class="pop_btn" data-viewclick="2" data-videoid="IkEWdPQmMeU" data-popup="youtube">
										<div class="thumb_area">
											<img src="/resource/mobile/images/media/thumb_youtube02.jpg" alt="">
										</div>
										<div class="txt_area">
											<p class="tit">대한민국을 건설강국으로 이끌어온 -동아건설산업</p>
											<div class="info">
												<span class="date">2020.08.14</span>
												<span class="cate">동아건설산업</span>
											</div>
											<div class="contents">test2 티케이케미칼은 1965년 동국무역주식회사로 설립되어 POLYESTER, SPANDEX 그리고 PET RESIN 소재의 글로벌 리더로서 50여 년간 축적된 최첨단 기술력과 노하우를 보유한 국가대표 화학 소재 기업입니다. SM그룹 TK케미칼 TV 광고 영상입니다. </div>
										</div>
									</a>
								</li>
								<li>
									<a href="#" class="pop_btn" data-viewclick="1" data-videoid="IkEWdPQmMeU" data-popup="youtube">
										<div class="thumb_area">
											<img src="/resource/mobile/images/media/thumb_youtube02.jpg" alt="">
										</div>
										<div class="txt_area">
											<p class="tit">에너지의 미래를 개척하다<br> – 벡셀</p>
											<div class="info">
												<span class="date">2020.08.14</span>
												<span class="cate">벡셀</span>
											</div>
											<div class="contents">test1 티케이케미칼은 1965년 동국무역주식회사로 설립되어 POLYESTER, SPANDEX 그리고 PET RESIN 소재의 글로벌 리더로서 50여 년간 축적된 최첨단 기술력과 노하우를 보유한 국가대표 화학 소재 기업입니다. SM그룹 TK케미칼 TV 광고 영상입니다. </div>
										</div>
									</a>
								</li>
							</ul>
							<!--// e: list -->
							<!-- s: pagination -->
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
							<!--// e: pagination -->
						</div>
					</div>
				</div>
				<%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
			<!--// e: contents -->
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
        <!-- s: youtube popup -->
        <div class="popup_wrap" data-popup="youtube">
            <div class="pop_inner">
				<button type="button" class="pop_close_btn">닫기</button>
			</div>
        </div>
        <!--// e: youtube popup -->
	</div>
	<form id="commonForm" name="commonForm" method="get"></form>
	<%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
        smGroup.popup();

        $('.slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 5000,
        });

        $( "#datePickerStart" ).datepicker({dateFormat: 'yy-mm-dd'});
        $( "#datePickerEnd" ).datepicker({dateFormat: 'yy-mm-dd'});


    	function fn_search(pageNo){
    	    var comSubmit = new ComSubmit();
    	    comSubmit.setUrl("list.do");
    	    comSubmit.addParam("currentPageNo", pageNo);
    		if("${!empty PID}"=="true"){
    			comSubmit.addParam("PID", "${PID}");
    		}
    		if("${!empty target}"=="true"){
    			comSubmit.addParam("target", "${target}");
    		}
    		if("${!empty keyword}"=="true"){
    			comSubmit.addParam("keyword", "${keyword}");
    		}
    		
    		if("${!empty GUBUN}"=="true"){
    			comSubmit.addParam("GUBUN", "${GUBUN}");
    		}
    		
    	    comSubmit.submit();
    	}
    	function fn_topsearch(){
    		$('[name=frmSearch]').submit();
		}
		
		function enterkey() {
			if (window.event.keyCode == 13) {
				// 엔터키가 눌렸을 때 실행할 내용
				fn_topsearch();
			}
		}
    </script>
</body>
</html>