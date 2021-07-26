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
<meta name="description" content="This page is about directions to get to the SM Group.">
<title>Site Map | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub etc sitemap">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Site Map</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="cont_tit">
                    <h3>Browse all services available<br>from the <span>SM Group</span></h3>
                </div>
                <div class="section">
                    <div class="sitemap_table">
                        <div class="row">
                            <p class="depth1">SM Group</p>
                            <ul class="depth2_wrap">
                                <li class="depth2">
                                    <a href="/mobile/eng/company/overview.do">About Us</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/company/ceo.do">CEO Greetings</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/company/history.do">History</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/company/ci.do">CI</a>
                                </li>
                            </ul>
                        </div>
                        <div class="row">
                            <p class="depth1">Business </p>
                            <ul class="depth2_wrap business">
                                <li class="depth2">
                                    <a href="/mobile/eng/business/manufacturing.do">Manufacturing</a>
                                    <ul class="depth3_wrap">
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=19" >TK CHEMICAL</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=22" >NAMSUN ALUMINUM</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=23" >NAMSUN ALUMINUM | AUTOMOTIVE PARTS</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=24" >BEXEL</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=25" >HWAJIN</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=26" >SM STEEL</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=27" >SM INDUSTRY</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=28" >SM HEAVY INDUSTRIES | MANUFACTURE</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=29" >HANDUK IRON MINE &amp; CONSTRUCTION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=30" >E&amp;H</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/business/construction.do">Construction </a>
                                    <ul class="depth3_wrap">
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=33" >KEANGNAM ENTERPRISES</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=34" >DONGAH CONSTRUCTION INDUSTRIAL</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=35" >SAMWHAN CORPORATION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=36" >WOOBANG</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=37" >WOOBANG INDUSTRIAL</a>
                                        </li>
			    <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=63" >SAMRA</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=38" >TK CHEMICAL | CONSTRUCTION SECTION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=39" >SM LINE | CONSTRUCTION SECTION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=40" >TAEKIL CONSTRUCTION</a>
                                        </li>
                                        <li class="depth3 category">
                                            SM Groups construction brand
                                        </li>
                                        <li class="depth3">
                                            <a href="https://www.honorsville.co.kr/" >KEANGNAM HONORSVILE</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="http://www.iusell.co.kr/" >WOOBANG IUSHELL</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/business/shipping-industry.do">Shipping Industry</a>
                                    <ul class="depth3_wrap">
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=43" >KOREA LINE CORPORATION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=44" >KOREA SHIPPING CORPORATION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=45" >SM LINE CORPORATION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=46" >KLCSM</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=48" >SM LINE GYEONGIN TERMINAL</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=49" >KOMARF</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/business/media-service.do">Media&middot;Service</a>
                                    <ul class="depth3_wrap">
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=50" >ULSAN BROADCASTING CORPORATION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=51" >SM HIPLUS</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=52" >SM CREDIT INFORMATION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=53" >SAMWHAN CORPORATION COSMETIC SECTION</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=55" >E-KOSA</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=56" >BAROKOSA</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=64" >SM GLOBAL</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=57" >SINCHON STATION</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/business/leisure.do">Leisure</a>
                                    <ul class="depth3_wrap">
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=58" >HOTEL TOPS 10</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=59" >TOPS 10 RESORT DONGGANG</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=60" >TOPS 10 VILLA DE AEWOL JEJU</a>
                                        </li>
                                        <li class="depth3">
                                            <a href="/mobile/eng/business/view.do?IDX=62" >TOPS 10 APPLE VALLEY C.C</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="row sustainable">
                            <p class="depth1">Sustainable Management</p>
                            <ul class="depth2_wrap">
                                <li class="depth2">
                                    <a href="/mobile/eng/sustainability/index.do">Sustainable Management</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/sustainability/ethics/list.do">Ethical Management</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/sustainability/partnership/list.do">Mutual Growth Management </a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/sustainability/environment/list.do">Environmental Management</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/sustainability/social-contribution/list.do">Social Contribution</a>
                                </li>
                            </ul>
                        </div>
                        <div class="row">
                            <p class="depth1">Recruitment</p>
                            <ul class="depth2_wrap">
                                <li class="depth2">
                                    <a href="/mobile/eng/recruit/sm-resource.do">Desired Talents</a>
                                </li>
                            </ul>
                        </div>
                        <div class="row">
                            <p class="depth1">Additional Information</p>
                            <ul class="depth2_wrap">
                                <li class="depth2">
                                    <a href="/mobile/eng/etc/legal.do">Legal Notice</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/etc/terms-of-use.do">Terms of Use</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/etc/location.do">Directions</a>
                                </li>
                                <li class="depth2">
                                    <a href="/mobile/eng/etc/sitemap.do">Site Map</a>
                                </li>
                            </ul>
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
        smGroup.headerOn();
    </script>
</body>
</html>