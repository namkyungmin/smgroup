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
<%@ include file="/include/eng/header.jsp" %>
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Sustainable Management, Sustainable Management, SM Sustainable Management">
<meta name="description" content="This page introduces SM Group’s ethical management plan. The SM Group has outlined judgement standards for all business activities. ">
<title>Ethical Management | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub sustainability ethics">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>Ethical Management</span></h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">Home</li>
						<li class="depth1">Sustainable Management</li>
						<li class="depth2">Ethical Management</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="/eng/sustainability/ethics/list.do" class="on">Ethical Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/partnership/list.do">Mutual Growth Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/environment/list.do">Environmental Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/social-contribution/list.do">Social Contribution</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>Establish and practice ethical conduct for the SM Group employees to abide by.<br />We strive for management success within fair and ethical frameworks.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/images/sustainability/ethics_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">Aiming at shared value <br>through customer-centered <br>management.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/ethics_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">Pursuing righteous <br>decision-making based on <br>ethical values.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/ethics_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">Spontaneously complying <br>with the code of conduct <br>for law-abiding culture.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>Code of Ethics</h4>
							<p class="sub_tit">SM Group’s code of ethics aims to provide essential standards for behavior and judgement<br>for all employees to adhere to at the workplace.</p>
						</div>
						<div class="inner_cont">
							<p class="thumbnail"><img src="/resource/eng/images/sustainability/ethics_sec2_img1.jpg" alt="2020윤리규범"></p>
							<a href="/resource/eng/file/SMGROUP_Code_of_Ethics_EN.pdf" class="common_btn download" target="_blank" title="새 창으로 바로가기"><span>Download</span></a>
						</div>
					</div>
				</div>
				<%@ include file="/include/eng/floating.jsp" %>
            </div>
        </div>
		<%@ include file="/include/eng/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();
		function fn_search(pageNo){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl(location.pathname);
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
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