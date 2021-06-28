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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Shared Growth Management, Shared Growth Management, SM Shared Growth Management">
<meta name="description" content="This page introduces SM Group’s mutual growth management plan. The SM Group perceives our partner’s growth as a foundation and source of competitiveness for our own company. We strive for mutual growth with our partners. ">
<title>Mutual Growth Management | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub sustainability partnership">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Mutual Growth <br>Management</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">Mutual Growth Management</p>
                    <ul>
                        <li>
							<a href="/mobile/eng/sustainability/ethics/list.do">Ethical Management</a>
						</li>
						<li>
							<a href="/mobile/eng/sustainability/partnership/list.do">Mutual Growth Management</a>
						</li>
						<li>
							<a href="/mobile/eng/sustainability/environment/list.do">Environmental Management</a>
						</li>
						<li>
							<a href="/mobile/eng/sustainability/social-contribution/list.do">Social Contribution</a>
						</li>
                    </ul>
				</div>
				<!--//e: tab_wrap -->
                <div class="cont_tit">
                    <h3>The SM Group perceives our partner’s growth as the foundation and source of competitiveness of our own company. We strive for mutual growth with our partners. </h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/partnership_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">Growing together and sharing performance lay the root for sustainability.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/partnership_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">We aim to strengthen our pride and competitiveness by creating beautiful partnerships.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/partnership_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">The principle of management is to earn respect by fulfilling social responsibilities.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/partnership_cardnews_thumb4.jpg" class="thumb" alt="">
							<a href="view.do#page4">
								<p class="txt1">We share the hope and fruit of tomorrow with all partners.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section sec_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>Unfair Trade Report Center</h4>
							<p class="sub_tit">By resolving grievances from suppliers and preventing unfair trade via SM Group employees, we aim to establish ideal relationships with subcontractors. Thus, we operate a reporting center for unfair subcontracting transactions. <br>The SM Group will always be by your side.</p>
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
    </script>
</body>
</html>