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
<meta name="description" content="SM그룹 이용약관 페이지입니다.">
<title>이용약관 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub etc privacy">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>이용약관</h2>
            </div>
            <!--// e: title -->
             <!-- s: breadcrumb -->
             <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth2">이용약관</li>
            </ul>
            <!--// e: breadcrumb -->
            <div id="contents">
                <div class="section">
                    <div class="top_wrap">
                        <div class="box">
                            <p>
                                이 웹 사이트(<a href="/" title="SM그룹 홈페이지 메인으로 이동">www.smgroup.co.kr</a>)를 이용하기 전에 이용약관(“본 약관”)을 반드시 읽어 주시기 바랍니다.<br> 본 사이트는 SM그룹이 제공하는 것으로 오로지 정보 제공 목적으로만 사용됩니다.
                            </p>
                        </div>
                    </div>
                    <div class="cont_wrap">
                        <div class="cont cont01">
                            <strong>사용의 제한</strong>
                            <p class="txt1">
                                SM그룹은 이용자에게 본 사이트에 게시된 텍스트, 그림, 음성, 파일, 링크, 소스코드 등의 정보(“자료”)에 대한 비독점적, 양도 불가의 제한적인 접근 및 사용 권한을 부여합니다. 이용자는 자료를 오로지 사적이며 비상업적인 목적으로만 열람하고 다운로드할 수 있으며, 자료 또는 그 복사본에 대한 권리를 이용자에게 이전하는 것이 아닙니다. 
                            </p>
                            <p>
                                이용자는<br>
                                1. 자료에 포함되어 있는 저작권 및 기타 재산소유권에 관한 고지를 다운로드한 자료의 모든 복사본에도 그대로 유지해야 하고,<br>
                                2. 그 방법을 불문하고 자료를 수정, 복제, 공개적으로 게시, 실행, 공표하거나, 기타 어떠한 공개적 또는 상업적 목적을 위하여도 사용할 수 없으며,<br>
                                3. 본 약관 및 본 사이트상의 조건에 따라 발생하는 책임을 제3자가 부담하는 데에 동의하지 않는 한 제 3자에게 자료를 양도할 수 없습니다.
                            </p>
                        </div>
                        <div class="cont cont02">
                            <strong>외부사이트 링크</strong>
                            <p>SM그룹은 본 사이트에서 다른 웹사이트의 링크를 제공할 수 있으며, 링크되어 있는 사이트를 사용하면 이용자는 본 사이트 사용을 중단하게 됩니다. SM그룹은 본 사이트에 링크되어 있는 웹사이트의 신뢰성을 보증하지 않으며, 링크되어 있는 웹사이트의 내용 또는 그 웹사이트의 사용에 대해 책임지지 않습니다.</p>
                        </div>
                        <div class="cont cont03">
                            <strong>본 사이트에 대한 외부 링크</strong>
                            <p>본 사이트에 대한 외부 링크는 SM그룹의 사전 서면 승인을 받아야 합니다. 그러나</p>
                            <ul class="list">
                                <li>(1) “SM그룹” 또는 “에스엠그룹”이라는 이름만 포함된 텍스트-온리 링크</li>
                                <li>(2) 하위 페이지로는 연결되지 않고 www.smgroup.co.kr로만 연결되는 링크</li>
                                <li>(3) 사용자가 링크를 눌렀을 때 링크가 있는 웹 사이트의 프레임 안이 아닌, 작동과 검색이 가능한 새 브라우저 창에 페이지가 전체 화면으로 표시되는 링크</li>
                                <li>(4) 링크의 모양, 위치 또는 기타 다른 면이, 외부 링크된 웹사이트나 거기서 이루어지는 활동 내지 제품 등이 SM그룹과 관련되거나 SM그룹이 후원하는 것처럼 오해를 불러일으킬 소지가 없는 링크, 또는 SM그룹 또는 자회사의 이름과 상표의 좋은 이미지를 훼손시키지 않는 링크의 경우는 예외적으로 서면 승인을 받지 않아도 됩니다.</li>
                            </ul>
                            <p>이용자는 SM그룹이 언제든지 그 재량에 기하여 본 사이트에 대한 외부 링크의 허용을 취소할 수 있으며, 그 경우 이용자는 즉시 본 사이트에 대한 모든 외부 링크를 제거하고 모든 SM그룹 상표의 사용을 중지해야 합니다.</p>
                        </div>
                        <div class="cont cont04">
                            <strong>이용자 제공 정보</strong>
                            <p>이용자는 본 사이트를 통해 비밀정보 또는 이용자에게 전속되는 권리의 대상이 되는 정보를 발송하지 않아야 합니다. 이용자는 자신이 SM그룹에 제공한 정보 중에서 SM그룹이 요청하지 않은 정보 또는 자료의 경우 비밀정보 또는 이용자에게 전속되는 권리의 대상이 되는 정보 또는 자료가 아니라는 데 동의합니다. 이용자는 그러한 정보 또는 자료를 SM그룹에 제공함으로써 SM그룹에게 정보 및 자료의 사용, 복제, 표시, 공개적으로 공표, 전송, 배포할 수 있는, 제한 없는 무상의 라이선스를 부여하는 것임에 동의하며, SM그룹에 제공한 아이디어, 컨셉, 노하우 등을 SM그룹이 자유롭게 사용하는 것에 동의합니다. 이용자는 비방적, 위협적, 외설적, 기타 불법적인 정보나 자료 또는 타인의 권리 대상이 되는 자료를 포함하고 있는 정보나 자료를 SM그룹에 제공하지 않아야 합니다.</p>
                        </div>
                        <div class="cont cont05">
                            <strong>이메일주소 무단수집 거부</strong>
                            <p>SM그룹은 본 사이트에 게시된 이메일 주소가 이메일주소 수집 프로그램 및/또는 그 밖의 기술적인 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반하는 개인이나 단체는 “정보통신망 이용촉진 및 정보보호 등에 관한 법률”에 의해 형사처벌 됨을 유념하시기 바랍니다.</p>
                        </div>
                        <div class="cont cont06">
                            <strong>사용지 국가의 법률</strong>
                            <p>SM그룹은 대한민국, 서울에 있는 본사에서 본 사이트를 관리하고 운영합니다. 이용자가 대한민국 이외의 국가에서 본 사이트를 사용한다면, 이용자는 자료 및 제3자 콘텐츠와 관련하여 해당 국가의 법률을 준수할 책임이 있습니다.</p>
                        </div>
                        <div class="cont cont07">
                            <strong>변경</strong>
                            <p>SM그룹은 독자적인 판단으로 본 약관의 전체 또는 일부분을 언제든지 변경, 수정, 추가 또는 삭제할 수 있으며, 본 약관의 변경은 그러한 변경 공지가 게시된 경우에 효력을 발생합니다. 변경 공지가 게시된 이후에도 이용자가 계속해서 사이트를 이용하는 경우 이용자는 변경 내용에 동의한 것으로 간주됩니다. SM그룹은 본 사이트 및 그 일부 기능에 대한 접근을 언제든지 종료, 변경, 일시 정지 또는 중단시킬 수 있고, 특정 기능과 서비스에 대해 제한을 둘 수 있습니다. SM그룹은 본 약관에 의해 이용자에게 부여된 권한, 권리, 허가의 효력을 상실시킬 수 있으며, 권한 등의 효력 상실과 동시에 이용자는 모든 자료를 즉각 파기해야 합니다.</p>
                        </div>
                        <div class="cont cont08">
                            <strong>본 약관은 2020년 8월 14일부터 효력이 발생합니다.</strong>
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