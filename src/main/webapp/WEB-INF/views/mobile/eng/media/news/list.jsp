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
<meta name="keywords" content="SM그룹, 미디어, SM그룹 보도자료, 보도자료, 뉴스, SM그룹 뉴스, SM 보도자료, 에스엠 보도자료, 에스엠그룹, 에스엠그룹 보도자료, 에스엠그룹 뉴스">
<meta name="description" content="SM그룹 보도자료 페이지입니다. SM그룹의 다양한 소식을 전합니다.">
<title>보도자료 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub media news list">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>보도자료</h2>
            </div>
            <!--// e: title -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section">
					<!-- s: slide_wrap -->
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
					<!--// e: slide_wrap -->
					<!-- s: board_list -->
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
                        <ul class="board">
                            <li>
                                <a href="#">
                                    <div class="txt_area">
                                        <p class="tit">우오현 SM그룹 회장 "그룹 나눔문화 정착... 친환경testtesttesttesttesttesttesttesttesttesttestabc</p>
                                        <div class="info">
                                            <p class="cate">SM그룹</p>
                                            <p class="date">2020.06.05</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
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
						<!--// e: board_list -->
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
                <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
	<form id="commonForm" name="commonForm" method="get"></form>
	<%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        $('.slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 4000,
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