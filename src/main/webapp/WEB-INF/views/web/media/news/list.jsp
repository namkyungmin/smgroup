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
<meta name="keywords" content="SM그룹, 미디어, SM그룹 보도자료, 보도자료, 뉴스, SM그룹 뉴스, SM 보도자료, 에스엠 보도자료, 에스엠그룹, 에스엠그룹 보도자료, 에스엠그룹 뉴스">
<meta name="description" content="SM그룹 보도자료 페이지입니다. SM그룹의 다양한 소식을 전합니다.">
<title>보도자료 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub media news list">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>보도자료</h2>
            </div>
            <!--// e: title -->
            <!-- s: breadcrumb -->
            <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">미디어</li>
                <li class="depth2">보도자료</li>
            </ul>
            <!--// e: breadcrumb -->
            <!-- s: contents -->
            <div id="contents">
				<div class="section">
					<c:choose>
						<c:when test="${fn:length(list_top)>0}">
							<div class="slide_wrap">
							<c:forEach items="${list_top }" var="row">
							<div class="slide_elm">
	
								<a href="javascript:void(0);" onclick="fn_openBoardDetail(this);" data-viewclick="${row.IDX }">
									<div class="thumb_wrap">
		                            	<c:choose>
		                            	<c:when test="${fn:length(row.IMG_NAME)>0 }">
		                            		<img src="${row.IMG_NAME }" alt="">
		                            	</c:when>
		                            	<c:otherwise>
		                            		<img src="/resource/images/temp/no_img_news_slide.jpg" alt="">
		                            	</c:otherwise>
		                            	</c:choose>
									</div>
									<div class="cont_wrap">
										<p class="cate">${row.SECTION }</p>
										<p class="tit">
											${row.TITLE }
										</p>
										<div class="summary">
											<c:out value='${fn:substring(row.CONTENTS.replaceAll("\\\<.*?\\\>"," ").replaceAll("&nbsp;"," "),0, 200)}' escapeXml="false" />
										</div>
										<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>
									</div>
								</a>
							</div>
							</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<!--// e: slide_wrap -->
					<div class="board_list">
						<!-- s: search -->
						<form name="frmSearch" action="list.do">
						<div class="search_wrap">
							<div class="date">
								<span class="date_tit">기간</span>
								<input type="text" class="date_picker" id="datePickerStart" name="sdate" value="${param.sdate }">
								<span class="hippen">-</span>
								<input type="text" class="date_picker" id="datePickerEnd" name="edate" value="${param.edate }">
							</div>
							<div class="search">
								<select name="target" id="">
									<option value="all" ${param.target=="all"?"selected":"" }>제목+내용</option>
									<option value="title" ${param.target=="title"?"selected":"" }>제목</option>
									<option value="contents" ${param.target=="contents"?"selected":"" }>내용</option>
									<option value="section" ${param.target=="section"?"selected":"" }>계열사</option>
								</select>
								<div class="input_wrap">
									<input type="text" name="keyword" value="${param.keyword }" onkeyup="enterkey();">
									<a href="javascript:;" onclick="fn_topsearch();" class="basic_btn form">검색</a>
								</div>
							</div>
						</div>
						</form>
						<!--// e: list -->
						<!-- s: pagination -->
						<ul class="board">
						
							<c:choose>
								<c:when test="${fn:length(list)>0}">
									<c:forEach items="${list }" var="row">
									
									<li>
										<a href="javascript:void(0);" onclick="fn_openBoardDetail(this);" data-viewclick="${row.IDX }">
											<div class="thumb_area">
				                            	<c:choose>
				                            	<c:when test="${fn:length(row.IMG_NAME)>0 }">
				                            		<img src="${row.IMG_NAME }" alt="">
				                            	</c:when>
				                            	<c:otherwise>
				                            		<img src="/resource/images/temp/no_img_news_list.jpg" alt="" class="no_img">
				                            	</c:otherwise>
				                            	</c:choose>
											</div>
											<div class="txt_area">
												<p class="cate">${row.SECTION }</p>
												<p class="tit">${row.TITLE }</p>
												<p class="summary"><c:out value='${fn:substring(row.CONTENTS.replaceAll("\\\<.*?\\\>"," ").replaceAll("&nbsp;"," "),0, 200)}' escapeXml="false" /></p>
												<p class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</p>
											</div>
										</a>
									</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</ul>
						<!--// e: list -->
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
				<%@ include file="/include/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<form id="commonForm" name="commonForm" method="get"></form>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();

        var $slideArr = $(".direction_wrap").find("a");
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