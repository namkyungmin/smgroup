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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Shared Growth Management, Shared Growth Management, SM Shared Growth Management">
<meta name="description" content="This page introduces SM Group’s mutual growth management plan. The SM Group perceives our partner’s growth as a foundation and source of competitiveness for our own company. We strive for mutual growth with our partners. ">
<title>Mutual Growth Management | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub sustainability partnership">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>Mutual Growth Management</span></h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">Home</li>
						<li class="depth1">Sustainable Management</li>
						<li class="depth2">Mutual Growth Management</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="/eng/sustainability/ethics/list.do">Ethical Management</a>
							</li>
							<li>
								<a href="/eng/sustainability/partnership/list.do" class="on">Mutual Growth Management</a>
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
                    <h3>The SM Group perceives our partner’s growth as the foundation and source of<br />competitiveness of our own company. We strive for mutual growth with our partners.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/images/sustainability/partnership_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">Growing together <br>and sharing performance <br>lay the root for <br>sustainability.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/partnership_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">We aim to strengthen our <br>pride and competitiveness <br>by creating beautiful <br>partnerships.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/partnership_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">The principle of <br>management is to earn <br>respect by fulfilling social <br>responsibilities.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/images/sustainability/partnership_cardnews_thumb4.jpg" class="thumb" alt="">
							<a href="view.do#page4">
								<p class="txt1">We share the hope <br>and fruit of tomorrow <br>with all partners.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>Unfair Trade Report Center</h4>
							<p class="sub_tit">By resolving grievances from suppliers and preventing unfair trade via SM Group employees, we aim to establish ideal<br />relationships with subcontractors. Thus, we operate a reporting center for unfair subcontracting transactions.<br />The SM Group will always be by your side.</p>
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
    </script>
</body>
</html>