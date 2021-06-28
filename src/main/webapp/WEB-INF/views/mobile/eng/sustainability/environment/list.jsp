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
<meta name="keywords" content="SM Group, SM Group Sustainable Management, SM Group Environmental Management, Environmental Management, SM Environmental Management">
<meta name="description" content="This page introduces SM Group’s eco-management plan. The SM Group strives for green development through environmentally sustainable growth.">
<title>Environmental Management | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub sustainability environment">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Environmental<br>Management</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">Environmental Management</p>
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
                    <h3>The SM Group promotes green growth for environmentally sustainable practices. For this, we establish, execute, and maintain a green management system.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/environment_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">Quality, environmental, and safety activities are the fundamentals for the abundance of customers.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/environment_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">We will lead low-carbon green management by developing eco-friendly architecture and energy.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/eng/mobile/images/sustainability/environment_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">We are dedicated to minimizing the environmental impact of business activities.</p>
							</a>
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