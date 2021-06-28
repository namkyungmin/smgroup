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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Environmental Management, Environmental Management, SM Environmental Management">
<meta name="description" content="This page introduces SM Group’s eco-management plan. The SM Group strives for green development through environmentally sustainable growth. ">
<title>Environmental Management | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub sustainability environment">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>Environmental Management</span></h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">Home</li>
						<li class="depth1">Sustainable Management</li>
						<li class="depth2">Environmental Management</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="/eng/sustainability/ethics/list.do">Ethical Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/partnership/list.do">Mutual Growth Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/environment/list.do" class="on">Environmental Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/social-contribution/list.do">Social Contribution</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>The SM Group promotes green growth for environmentally sustainable practices.<br>For this, we establish, execute, and maintain a green management system.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/images/sustainability/environment_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">Quality, environmental, <br>and safety activities are <br>the fundamentals for <br>the abundance of customers.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/environment_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">We will lead low-carbon <br>green management by <br>developing eco-friendly <br>architecture and energy.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/environment_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">We are dedicated <br>to minimizing the <br>environmental impact of <br>business activities.</p>
							</a>
						</div>
					</div>
				</div>
                <!-- <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>수상 및 인증 내역</h4>
							<p class="sub_tit">SM그룹은 사업 활동에 의한 환경 영향을 최소화 하기 위하여 노력하고 있습니다.</p>
						</div>
						<div class="inner_cont">
							<ul class="board">
								<li class="active">
									<a href="#">
										<div class="txt_area">
											<p class="tit">SM상선<br />품질경영시스템<br />인증서 </p>
											<div class="bottom">
												<span class="cate">SM상선</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#">
										<div class="txt_area">
											<p class="tit">남선알미늄<br />환경 표지<br />인증서 </p>
											<div class="bottom">
												<span class="cate">남선알미늄</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#">
										<div class="txt_area">
											<p class="tit">삼환기업<br />환경경영시스템<br />인증서</p>
											<div class="bottom">
												<span class="cate">삼환기업</span>
											</div>
										</div>
									</a>
								</li>
								<li class="active">
									<a href="#">
										<div class="txt_area">
											<p class="tit">삼환기업<br />품질경영시스템<br />인증서</p>
											<div class="bottom">
												<span class="cate">삼환기업</span>
											</div>
										</div>
									</a>
								</li>
							</ul>
							<div class="list_btn_area">
								<a href="#" id="listMore" class="common_btn more" onclick="moreList(); return false;"><span>더보기</span></a>
							</div>
						</div>
					</div>
				</div> -->
				<%@ include file="/include/eng/floating.jsp" %>
            </div>
        </div>
		<%@ include file="/include/eng/footer.jsp" %>
	</div>
    <%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>