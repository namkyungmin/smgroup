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
<meta name="description" content="This page is about the user agreement for the SM Group.">
<title>Terms of Use  | SM Group</title>
</head>

<body>
    <div id="wrap" class="sub etc privacy">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Terms of Use</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">Home</li>
                <li class="depth2">Terms of Use</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <div class="top_wrap">
                        <div class="box">
                            <p>
                                Please read the user’s agreement (this rule) before using this website (<a href="/eng/index.do" title="SM그룹 홈페이지 메인으로 이동">www.smgroup.co.kr</a>).<br>
                                The website is provided by the SM Group for provision of information only.
                            </p>
                        </div>
                    </div>
                    <div class="cont_wrap">
                        <div class="cont cont01">
                            <strong>Limit of use</strong>
                            <p class="txt1">
                                The SM Group provides users with a limited personal right to access and use the site’s information (“materials” such as text, photos, sounds, files, links, and source code). The user is to view and download the materials only for personal and non-commercial uses. This does not grant the transfer of rights on the materials or copied materials to the user.
                            </p>
                            <p>
                                Users must be aware of these following rules:<br>
                                1. The notice of copyright and other property rights that are included in the materials must remain intact on all copies of the downloaded material.<br>
                                2. Regardless of the method, the materials may not be modified, reproduced, executed, publicly posted, or used for public or commercial purpose.<br>
                                3. You may not transfer materials to a third party unless the third party agrees to bear the responsibility arising from the terms and conditions of using this site.
                            </p>
                        </div>
                        <div class="cont cont02">
                            <strong>Links to external sites</strong>
                            <p>The SM Group may provide links to other websites on this site, and if and when the user uses the linked site, they will stop using this site. The SM Group does not guarantee the reliability of the websites linked on this site and is not responsible for the contents or the use of those websites.</p>
                        </div>
                        <div class="cont cont03">
                            <strong>External links to this site</strong>
                            <p>External links to this site require prior written approval from the SM Group unless the following conditions are met.</p>
                            <ul class="list">
                                <li>(1) Text-only links that contain only the name, such as “SMGroup.” </li>
                                <li>(2) Links that only connect to www.smgroup.co.kr and not to any of the subpages</li>
                                <li>(3) When the user clicks on the link, the link displays on a full screen in a new browser window that can be operated and searched, rather than inside the frame of the website where the link is located.</li>
                                <li>(4) The shape, location, or other aspects of the links are externally linked to the website, but the activities or products of such links are deemed not related to the SM group nor related to misrepresentation as if SM Group was the sponsor. Links that don't damage the positive image and value of the SM Group or its subsidiaries. </li>
                            </ul>
                            <p>At the SM Group's discretion and revocation of the acceptance of external links to this site, users must immediately remove all external links to this site and cease use of all SM Group trademarks.</p>
                        </div>
                        <div class="cont cont04">
                            <strong>Information provided from users</strong>
                            <p>Users must not send confidential information or exclusive information through this site. The user agrees that, when the information or materials that are not requested by the SM Group are provided by the user, the information or materials are not confidential or exclusive to the user. By providing such information or materials to the SM Group, the user agrees to grant SM Group a free, unlimited license to use, reproduce, display, publicly publish, transfer, and distribute information and materials, as well as unlimited use of the ideas, concepts, and know-how provided to the SM Group. Users shall not provide the SM Group with information or materials that contain slanderous, threatening, obscene, or other illegal information or materials, including those that infringe on the rights of the others.</p>
                        </div>
                        <div class="cont cont05">
                            <strong>Refusal of unauthorized collection of e-mail addresses</strong>
                            <p>The SM Group rejects the unauthorized collection of e-mail addresses posted on this site using e-mail address collection programs and/or other technical devices. Please keep in mind that violation of this prohibition will result in criminal penalties according to the Act on Promotion of Information and Communication Network Utilization and Information Protection, etc.</p>
                        </div>
                        <div class="cont cont06">
                            <strong>Law of the country of use</strong>
                            <p>The SM Group manages and operates this site from its headquarters in Seoul, Korea. If the users use this site in a country other than Korea, they are responsible for complying with laws regarding materials and third-party contents of that country. </p>
                        </div>
                        <div class="cont cont07">
                            <strong>Revision</strong>
                            <p>The SM Group may, at its sole discretion, change, modify, add, or delete all or parts of these rules at any time. Any changes to these rules will take effect when such notice of change is posted. If the user continues to use the site after the notice is posted, the user is deemed to have consented to the change. The SM Group may terminate, change, suspend, or limit access to this site and some of its functions at any time. The SM Group may revoke the authority, rights, and permission granted to the user under these rules; the user must immediately destroy all materials upon loss of such access. </p>
                        </div>
                        <div class="cont cont08">
                            <strong>These terms will be effective as of August 14, 2020.</strong>
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