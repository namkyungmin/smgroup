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
<title>Style Guide</title>
<style>
    h3 { font-size:30px; margin-bottom:20px; font-weight:700; }
    h4 { font-size:24px; margin:20px 0; font-weight:700; }
    hr { display:block; margin:30px 0; width:100%; background:#000; }
    .bg_gray { background:gray; padding:10px; }
    .btn_wrap { margin-bottom:10px; }
</style>
</head>

<body>
    <div id="wrap" class="style_guide sub">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>스타일 가이드</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">미디어</li>
                <li class="depth2">보도자료</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <h3>본문 타이틀</h3>
                    <div class="bg_gray">
                        <p class="common_tit type01">보도자료</p>
                    </div>
                    <p class="common_tit type02">보도자료</p>
                    <p class="common_tit type03">보도자료</p>

                    <hr>

                    <h3 class="eng">BUTTONS</h3>
                    <h4>기본버튼</h4>
                    <div class="btn_wrap">
                        <a href="" class="common_btn type01">
                            <span>LIST</span>
                        </a>
                    </div>
                    <div class="btn_wrap">
                        <a href="" class="common_btn type02">
                            <span>SM그룹 계열사 현황</span>
                        </a>
                    </div>
                    <div class="btn_wrap bg_gray">
                        <a href="" class="common_btn type03">
                            <span>SM그룹 채용공고</span>
                        </a>
                    </div>
                    <h4>아웃링크 버튼</h4>
                    <div class="btn_wrap">
                        <a href="" class="common_btn outlink">
                            <span>기사보기</span>
                        </a>
                    </div>
                    <h4>다운로드 버튼</h4>
                    <div class="btn_wrap">
                        <a href="/resource/file/SMGROUP_Code_of_Ethics_KR.pdf" class="common_btn download" target="_blank" title="새 창으로 바로가기"><span>다운로드</span></a>
                    </div> 

                    <hr>

                    <h3>동영상 게시판</h3>
                    <div class="media movie list">
                        <div class="slide_wrap">
                            <div>
								<a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
									<div class="thumb_wrap">
                                        <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
									</div>
									<div class="cont_wrap">
										<p class="tit">
											타이틀
										</p>
										<div class="summary">
											summary
										</div>
										<div class="info">
											<span class="date">2020.09.17</span>
											<span class="cate">카테고리</span>
										</div>
										<div class="contents">내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
									</div>
								</a>
                            </div>    
                            <div>
								<a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
									<div class="thumb_wrap">
                                        <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
									</div>
									<div class="cont_wrap">
										<p class="tit">
											타이틀
										</p>
										<div class="summary">
											summary
										</div>
										<div class="info">
											<span class="date">2020.09.17</span>
											<span class="cate">카테고리</span>
										</div>
										<div class="contents">내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
									</div>
								</a>
                            </div>    
                            <div>
								<a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
									<div class="thumb_wrap">
                                        <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
									</div>
									<div class="cont_wrap">
										<p class="tit">
											타이틀
										</p>
										<div class="summary">
											summary
										</div>
										<div class="info">
											<span class="date">2020.09.17</span>
											<span class="cate">카테고리</span>
										</div>
										<div class="contents">내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
									</div>
								</a>
							</div>    
                        </div>  
                        <div class="movie_list">
                            <div class="board_list">
                                <!-- s: search -->
                                <div class="search_wrap">
                                    <div class="date">
                                        <span class="date_tit">기간</span>
                                        <input type="text" class="date_picker" id="datePickerStart" name="sdate" value="">
                                        <span class="hippen">-</span>
                                        <input type="text" class="date_picker" id="datePickerEnd" name="edate" value="">
                                    </div>
                                    <div class="search">
                                        <select name="target" id="">
                                            <option value="all">제목+내용</option>
                                            <option value="title">제목</option>
                                            <option value="contents">내용</option>
                                        <option value="section">계열사</option>
                                        </select>
                                        <div class="input_wrap">
                                            <input type="text" name="keyword" value="" onkeyup="enterkey();">
                                            <a href="javascript:;" class="basic_btn form">검색</a>
                                        </div>
                                    </div>
                                </div>
                                <!--// e: search -->
                                <!-- s: list -->
                                <ul class="board">
                                    <li>
                                        <a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                            <div class="thumb_area">
                                                <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                            </div>
                                            <div class="txt_area">
                                                <p class="tit">국가대표 화학소재 기업 티케이케미칼</p>
                                                <div class="info">
                                                    <span class="date">2020.08.14</span>
                                                    <span class="cate">티케이케미칼</span>
                                                </div>
                                                <div class="contents">
                                                    SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다.
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                            <div class="thumb_area">
                                                <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                            </div>
                                            <div class="txt_area">
                                                <p class="tit">국가대표 화학소재 기업 티케이케미칼</p>
                                                <div class="info">
                                                    <span class="date">2020.08.14</span>
                                                    <span class="cate">티케이케미칼</span>
                                                </div>
                                                <div class="contents">
                                                    SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다.
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                            <div class="thumb_area">
                                                <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                            </div>
                                            <div class="txt_area">
                                                <p class="tit">국가대표 화학소재 기업 티케이케미칼</p>
                                                <div class="info">
                                                    <span class="date">2020.08.14</span>
                                                    <span class="cate">티케이케미칼</span>
                                                </div>
                                                <div class="contents">
                                                    SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다.
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                            <div class="thumb_area">
                                                <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                            </div>
                                            <div class="txt_area">
                                                <p class="tit">국가대표 화학소재 기업 티케이케미칼</p>
                                                <div class="info">
                                                    <span class="date">2020.08.14</span>
                                                    <span class="cate">티케이케미칼</span>
                                                </div>
                                                <div class="contents">
                                                    SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다.
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                            <div class="thumb_area">
                                                <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                            </div>
                                            <div class="txt_area">
                                                <p class="tit">국가대표 화학소재 기업 티케이케미칼</p>
                                                <div class="info">
                                                    <span class="date">2020.08.14</span>
                                                    <span class="cate">티케이케미칼</span>
                                                </div>
                                                <div class="contents">
                                                    SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다.
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
                                            <div class="thumb_area">
                                                <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                            </div>
                                            <div class="txt_area">
                                                <p class="tit">국가대표 화학소재 기업 티케이케미칼</p>
                                                <div class="info">
                                                    <span class="date">2020.08.14</span>
                                                    <span class="cate">티케이케미칼</span>
                                                </div>
                                                <div class="contents">
                                                    SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다. SM그룹 TK케미칼 TV 광고 영상입니다.
                                                </div>
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
                                    <a href="javascript:void(0);" class="num">4</a>
                                    <a href="javascript:void(0);" class="num">5</a>
                                    <span class="right arrow">
                                        <a href="javascript:void(0);" class="next">다음 페이지</a>
                                        <a href="javascript:void(0);" class="last">마지막 페이지</a>
                                    </span>
                                </div>
                                <!--// e: pagination -->
                            </div>
                        </div>
                    </div>

                    <hr>

                    <h3>보도자료 게시판</h3>
                    <div class="media news list">
                        <div class="slide_wrap">
                            <div>
								<a href="#" data-viewclick="">
									<div class="thumb_wrap">
		                            	<img src="/resource/images/temp/no_img_news_slide.jpg" alt="">
									</div>
									<div class="cont_wrap">
										<p class="cate">카테고리</p>
										<p class="tit">
                                            타이틀
										</p>
										<div class="summary">
											summary summary summary summary summary summary summary summary summary summary
										</div>
										<span class="date">2020.09.17</span>
									</div>
								</a>
                            </div>    
                            <div>
								<a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
									<div class="thumb_wrap">
                                        <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
									</div>
									<div class="cont_wrap">
										<p class="tit">
											타이틀
										</p>
										<div class="summary">
											summary
										</div>
										<div class="info">
											<span class="date">2020.09.17</span>
											<span class="cate">카테고리</span>
										</div>
										<div class="contents">내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
									</div>
								</a>
                            </div>    
                            <div>
								<a href="#" class="pop_btn" data-viewclick="" data-videoid="IkEWdPQmMeU" data-popup="youtube">
									<div class="thumb_wrap">
                                        <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
									</div>
									<div class="cont_wrap">
										<p class="tit">
											타이틀
										</p>
										<div class="summary">
											summary
										</div>
										<div class="info">
											<span class="date">2020.09.17</span>
											<span class="cate">카테고리</span>
										</div>
										<div class="contents">내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
									</div>
								</a>
							</div>    
                        </div>
                            
                        <div class="board_list">
                            <!-- s: search -->
                            <div class="search_wrap">
                                <div class="date">
                                    <span class="date_tit">기간</span>
                                    <input type="text" class="date_picker" id="datePickerStart2" name="sdate2" value="">
                                    <span class="hippen">-</span>
                                    <input type="text" class="date_picker" id="datePickerEnd2" name="edate2" value="">
                                </div>
                                <div class="search">
                                    <select name="target" id="">
                                        <option value="all">제목+내용</option>
                                        <option value="title">제목</option>
                                        <option value="contents">내용</option>
                                    <option value="section">계열사</option>
                                    </select>
                                    <div class="input_wrap">
                                        <input type="text" name="keyword" value="" onkeyup="enterkey();">
                                        <a href="javascript:;" class="basic_btn form">검색</a>
                                    </div>
                                </div>
                            </div>
                            <!--// e: search -->
                            <!-- s: list -->
                            <ul class="board">
                                <li>
                                    <a href="view.do?IDX=70" data-viewclick="70">
                                        <div class="thumb_area">
                                            <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                        </div>
                                        <div class="txt_area">
                                            <p class="cate">카테고리</p>
                                            <p class="tit">제목</p>
                                            <p class="summary">summary</p>
                                            <p class="date">2020.09.14</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="view.do?IDX=70" data-viewclick="70">
                                        <div class="thumb_area">
                                            <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                        </div>
                                        <div class="txt_area">
                                            <p class="cate">카테고리</p>
                                            <p class="tit">제목</p>
                                            <p class="summary">summary</p>
                                            <p class="date">2020.09.14</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="view.do?IDX=70" data-viewclick="70">
                                        <div class="thumb_area">
                                            <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                        </div>
                                        <div class="txt_area">
                                            <p class="cate">카테고리</p>
                                            <p class="tit">제목</p>
                                            <p class="summary">summary</p>
                                            <p class="date">2020.09.14</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="view.do?IDX=70" data-viewclick="70">
                                        <div class="thumb_area">
                                            <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                        </div>
                                        <div class="txt_area">
                                            <p class="cate">카테고리</p>
                                            <p class="tit">제목</p>
                                            <p class="summary">summary</p>
                                            <p class="date">2020.09.14</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="view.do?IDX=70" data-viewclick="70">
                                        <div class="thumb_area">
                                            <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                        </div>
                                        <div class="txt_area">
                                            <p class="cate">카테고리</p>
                                            <p class="tit">제목</p>
                                            <p class="summary">summary</p>
                                            <p class="date">2020.09.14</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="view.do?IDX=70" data-viewclick="70">
                                        <div class="thumb_area">
                                            <img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
                                        </div>
                                        <div class="txt_area">
                                            <p class="cate">카테고리</p>
                                            <p class="tit">제목</p>
                                            <p class="summary">summary</p>
                                            <p class="date">2020.09.14</p>
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
                                <a href="javascript:void(0);" class="num">4</a>
                                <a href="javascript:void(0);" class="num">5</a>
                                <span class="right arrow">
                                    <a href="javascript:void(0);" class="next">다음 페이지</a>
                                    <a href="javascript:void(0);" class="last">마지막 페이지</a>
                                </span>
                            </div>
                            <!--// e: pagination -->
                        </div>
                    </div>

                    <hr>

                    <h3>게시판 VIEW</h3>
                    <div class="board_view">
                        <div class="top_area">
                            <div class="row_tit">
                                <h3 class="tit">일반 게시판 type2 list구조로 작업한 게시물 제목입니다.</h3>
                                <div class="right_wrap">
                                    <span class="date">2019.11.28</span>
                                    <span class="category">에스엠상선</span>
                                </div>
                            </div>
                        </div>
                        <div class="cont_area">
                            <p>원주단계 경남아너스빌, 주택 수요자 주목.. 전세대 4베이 구조<br><br>강원도 원주의 주거생활 중심지인 단계동에 주변의 일반 아파트 분양가나 시세에 비해 가격이 합리적인 수준으로 책정된 아파트가 나와<br>관심이 집중된다. (가칭)단계18통행복지역주택조합추진위원회와 (주)우리터가 원주시 단계동 117-1번지 일대에서 공급 중인 '원주 단계<br>경남아너스빌' 이다.<br>.<br>.<br>.</p>
                            <div class="btn_wrap">
                                <a href="#" class="common_btn outlink" target="_blank">
                                    <span>기사보기</span>
                                </a>
                            </div>
                        </div>
                        <div class="bottom_area">
                            <div class="btn_area">
                                <a href="#" class="common_btn type01">
                                    <span>LIST</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        //movie list
        $('.movie.list .slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 5000,
        });
        $( "#datePickerStart" ).datepicker({dateFormat: 'yy-mm-dd'});
        $( "#datePickerEnd" ).datepicker({dateFormat: 'yy-mm-dd'});

         //news list
        $('.news.list .slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 5000,
        });
        $( "#datePickerStart2" ).datepicker({dateFormat: 'yy-mm-dd'});
        $( "#datePickerEnd2" ).datepicker({dateFormat: 'yy-mm-dd'});
    </script>
</body>
</html>