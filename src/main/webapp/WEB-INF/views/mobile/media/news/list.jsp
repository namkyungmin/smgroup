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
<meta name="keywords" content="SM그룹, 미디어, SM그룹 보도자료, 보도자료, 뉴스, SM그룹 뉴스, SM 보도자료, 에스엠 보도자료, 에스엠그룹, 에스엠그룹 보도자료, 에스엠그룹 뉴스">
<meta name="description" content="SM그룹 보도자료 페이지입니다. SM그룹의 다양한 소식을 전합니다.">
<title>보도자료 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub media news list">
        <%@ include file="/include/mobile/gnb.jsp" %>
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
					<c:choose>
						<c:when test="${fn:length(list_top)>0}">
							<div class="slide_wrap">
							<c:forEach items="${list_top }" var="row">
							<div>
								<a href="javascript:void(0);" onclick="fn_openBoardDetail(this);" class="pop_btn" data-viewclick="${row.IDX }" data-videoid="${ct:getYouTubeId(row.VIDEO)}" data-videourl="${row.VIDEO}" data-popup="youtube">
									<div class="thumb_wrap">
	                            	<c:choose>
	                            	<c:when test="${fn:length(row.IMG_NAME)>0 }">
	                            		<img src="${row.IMG_NAME }" alt="">
	                            	</c:when>
	                            	<c:otherwise>
	                            		<img src="/resource/images/temp/no_img_movie_slide.jpg" alt="">
	                            	</c:otherwise>
	                            	</c:choose>
									</div>
									<div class="cont_wrap">
										<p class="tit">
											${row.TITLE }
										</p>
										<div class="info">
                                        <span class="cate">${row.SECTION }</span>
											<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>
											
										</div>
									</div>
								</a>
							</div>
							</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
                    </div>
					<!--// e: slide_wrap -->
					<!-- s: board_list -->
					<div class="board_list">
						<!-- s: search -->
                        <form name="frmSearch" action="list.do">
                        <div class="search_wrap">
                            <div class="date">
                                <input type="text" class="date_picker" id="datePickerStart" name="sdate" value="${param.sdate }">
                                <span class="hippen">-</span>
                                <input type="text" class="date_picker" id="datePickerEnd" name="edate" value="${param.edate }">
                            </div>
                            <div class="search">
                                <div class="input_wrap">
                                	<input type="hidden" name="target" value="all">
                                    <input type="text" name="keyword" value="${param.keyword }" onkeyup="enterkey();">
                                    <a href="javascript:;" onclick="fn_topsearch();" class="basic_btn form">검색</a>
                                </div>
                            </div>
                        </div>
                        </form>
						<!--// e: search -->
                        <ul class="board">
							<c:choose>
								<c:when test="${fn:length(list)>0}">
									<c:forEach items="${list }" var="row">
									<li>
										<a href="javascript:void(0);" onclick="fn_openBoardDetail(this);" data-viewclick="${row.IDX }">
											<div class="txt_area">
                                                <p class="tit">${row.TITLE }</p>
                                                <div class="info">
                                                    <p class="cate">${row.SECTION }</p>
                                                    <p class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</p>
                                                </div>
											</div>
										</a>
									</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</ul>
						<!--// e: board_list -->
						<!-- s: pagination -->
						<div class="paging_wrap">
								<c:if test="${not empty paginationInfo}">
									<ui:pagination paginationInfo = "${paginationInfo}" type="front" jsFunction="fn_search"/>
								</c:if>
								<input type="hidden" id="currentPageNo" name="currentPageNo"/>
						</div>
						<!--// e: pagination -->
					</div>
				</div>
				<%@ include file="/include/mobile/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
	<form id="commonForm" name="commonForm" method="get"></form>
	<%@ include file="/include/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        $('.slide_wrap').slick({
            dots : true,
			draggable : false,
			autoplay: true,
  			autoplaySpeed: 4000,
        });

        $( "#datePickerStart" ).datepicker({
			dateFormat: 'yy-mm-dd',
			onClose: function( selectedDate ) {    
				// 시작일(fromDate) datepicker가 닫힐때
				// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
				$("#datePickerEnd").datepicker( "option", "minDate", selectedDate );
			}
		});
        $( "#datePickerEnd" ).datepicker({
			dateFormat: 'yy-mm-dd',
			onClose: function( selectedDate ) {
				// 종료일(toDate) datepicker가 닫힐때
				// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
				$("#datePickerStart").datepicker( "option", "maxDate", selectedDate );
			}
		});


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
		function fn_openBoardDetail(obj){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("view.do");
			comSubmit.addParam("IDX", $(obj).data("viewclick"));
			comSubmit.addParam("currentPageNo", "${currentPageNo}");
			if(typeof page !== 'undefined'){
				comSubmit.addParam("ajaxPageNo", page-1);
			}
			comSubmit.submit();
		}
    </script>
</body>
</html>