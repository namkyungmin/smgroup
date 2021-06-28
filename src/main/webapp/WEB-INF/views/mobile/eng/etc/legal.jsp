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
<meta name="description" content="This page is about the SM Group’s legal notifications.">
<title>Legal Notice | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub etc legal">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Legal Notice</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="section">
                    <div class="cont_wrap">
                        <div class="cont cont01">
                            <strong>Limit of use</strong>
                            <p>
                                By accessing, searching, or using SM Group's site (“this site”), the user is bound by legal notices and terms of use (“the rules”) and is assumed to have read, understood, and agreed to the requirement of having to abide by all applicable laws and regulations. If you do not agree with any of the rules of this site, please do not use this site. SM Group may revise or update the information on this site without notice to users.<br><br>
                                This site and all contents of this site may not be copied, reproduced, republished, uploaded, posted, transmitted, distributed, or used for secondary production without the prior written consent of the SM Group. The SM Group provides users with a limited personal right to access and use the site’s information (“materials” such as text, photos, sounds, files, links, and source code) for use on the user's computer as long as it is for non-commercial uses. This limited right cannot be transferred, is non-exclusive, and limited. Downloaded materials without modification of the contents of the material must retain their copyright and other proprietary notices, and the contents from this site cannot be transferred to a third party unless the third party accepts it after the user has notified the third party about the responsibilities arising from using this website.<br><br>
                                The copyright of this site and all materials posted here are protected by the copyright laws and international agreements of each country, and the user agrees to prevent illegal copying of the material. If the user does not comply with the rules of this site, the rights granted to the user will automatically expire without notice, and the user must immediately destroy the copies of all materials that have been downloaded, stored, or managed. The SM Group does not grant explicit or implied rights to any patent, trademark, copyright, and/or business information to users unless the rights are explicitly granted in these terms and conditions.
                            </p>
                        </div>
                        <div class="cont cont02">
                            <strong>Indemnification</strong>
                            <p>
                                Materials on this site may contain inaccuracies or typos. The SM Group does not guarantee the accuracy or completeness of the materials, nor the reliability of advice, opinions, statements, and other information posted on or distributed through this site. Users are solely responsible for the responsibilities that arise from trusting such advice and content. The SM Group reserves the right to correct errors or omissions on this site at its own discretion, and may change this site and the materials, products, programs, services, and prices described at any time without notice.
                            </p>
                        </div>
                        <div class="cont cont03">
                            <strong>Limited responsibilities</strong>
                            <p>
                                The SM Group is not liable for any damages, special or consequential, or other damages (including, but not limited to, loss of revenue, business suspension, loss of information, programs, or other data on information processing systems) that may occur in connection with the use or failure to use the contents, materials, and/or functions of this website or links to this website, regardless of explicit or indirect notification of possible damages
                            </p>
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
    </script>
</body>
</html>