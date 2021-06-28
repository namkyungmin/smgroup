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
<meta name="description" content="SM그룹 법적고지 페이지입니다.">
<title>법적고지 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub etc legal">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>법적고지</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth2">법적고지</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <div class="cont_wrap">
                        <div class="cont cont01">
                            <strong>사용의 제한</strong>
                            <p>
                                이용자는, SM그룹의 사이트(“본 사이트”)를 접속하거나, 검색하거나 또는 이용함으로써, 법적 고지, 이용약관의 규정들(“본 사이트의 규정들”)에 구속되며 일체 적용 가능한 법과 규제들을 준수해야 한다는 것을 읽고, 이해하고, 동의한 것으로 간주됩니다. 만약 본 사이트의 규정 중 일부라도 동의하지 않는다면, 본 사이트를 이용하지 마시기 바랍니다. SM그룹은 이용자에 대한 고지 없이 본 사이트의 정보를 수정하거나 업데이트할 수 있습니다.<br><br>
                                본 사이트 및 본 사이트의 모든 내용은 SM그룹의 사전 서면 동의 없이 복사, 복제, 재출판, 업로드, 게시, 전송, 배포 또는 2차적 저작물 생성 등에 이용될 수 없습니다. 다만, SM그룹은 이용자에게 이용자의 컴퓨터에 한하여 본 사이트의 텍스트, 사진, 소리, 파일, 링크, 소스코드 등의 정보(“자료”)에 접근하고 이용할 수 있는, 그리고 본 사이트를 개인적, 비상업적인 용도로만 사용할 수 있는 비독점적, 양도 불가능한 제한적 권리를 부여합니다. 자료의 내용이 수정되지 않은 채 다운로드 된 자료들은 저작권 및 기타 재산권적 고지가 그대로 유지되어야 하고, 이용자가 본 사이트에서 발생하는 책임에 대해 제3자에게 고지하여 제3자가 이를 수락하지 않는 한 본 사이트의 자료를 제3자에게 양도할 수 없습니다.<br><br>
                                본 사이트 및 여기에 게시된 모든 자료에 대한 저작권은 각국의 저작권법 및 국제협약에 의해 보호받고 있으며, 이용자는 자료의 불법 복사를 방지할 것에 동의합니다. 이용자가 본 사이트 규정들을 준수하지 않을 경우, 이용자에게 부여된 권리는 사전 통지 없이 자동 소멸되며, 이용자는 다운로드하여 보유하거나 관리하고 있는 모든 자료의 사본을 즉시 파기하여야 합니다. SM그룹은, 본 약관에서 명시적으로 이용자에게 권한을 부여한 경우를 제외하고, 이용자에게 어떠한 특허권, 상표권, 저작권 또는 영업정보 등에 관한 명시적 또는 묵시적 권한을 부여하지 않습니다.
                            </p>
                        </div>
                        <div class="cont cont02">
                            <strong>면책</strong>
                            <p>
                                본 사이트의 자료에는 틀린 부분이나 오자 등이 있을 수 있습니다. SM그룹은 자료의 정확성 또는 완전성 등을 보증하지 아니하며, 본 사이트에 게시되었거나 본 사이트를 통해 배포된 조언, 의견, 진술, 기타 정보 등의 신뢰성에 대해 보증하지 않습니다. 그러한 조언 등을 신뢰함에 따른 책임은 오로지 이용자에게 있습니다. SM그룹은 독자적인 판단으로 본 사이트의 오류나 누락 등을 교정할 수 있는 권리를 가지며, 본 사이트 및 본 사이트에서 설명하고 있는 자료, 제품, 프로그램, 서비스, 가격을 공지 없이 언제든지 변경할 수 있습니다.
                            </p>
                        </div>
                        <div class="cont cont03">
                            <strong>책임의 제한</strong>
                            <p>
                                SM그룹은, 그 손해 발생 가능성에 대해 명시적으로 통지 받았는지 여부를 불문하고, 본 사이트 또는 링크되어 있는 웹사이트의 콘텐츠, 자료, 기능 등을 사용하거나 또는 사용하지 못한 것과 관련하여 발생한 직접적 또는 간접적 손해, 특별 또는 결과적 손해 또는 기타 손해(수익 손실, 영업 정지, 정보 처리 시스템에서의 정보, 프로그램, 기타 데이터의 소실 등을 포함하나, 이에 한정되지는 않음)에 대해 일체 책임을 지지 않습니다.
                            </p>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>