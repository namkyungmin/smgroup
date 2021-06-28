
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<link rel="shortcut icon" href="/resource/images/common/favicon.ico">
<link rel="stylesheet" href="/resource/mobile/css/common.css">
<style>
	body, html{height:100%;}
	.error #contents{display:table; width:100%; height:100%; margin:0 auto; table-layout:fixed;}
	.error_cont{display:table-cell; vertical-align:middle;}
	.error_cont .cont_inner{text-align:center;}
	.error_cont h2{font-size:25px; font-weight:700; line-height:33px; color:#333333;}
	.error_cont h2:after{display:block; width:35px; height:2px; margin:15px auto; background-color:#b01a1d; content:"";}
	.error_cont p{margin-bottom:25px; line-height:24px;}
	.common_btn.type02{background-color:#b01a1d; background-image: url(/resource/mobile/images/common/bg_btn_arrow_w.png); border:none; color:#fff;}
</style>
</head>
<body>
<div id="wrap" class="error">
	<div id="container">
		<div id="contents">
			<div class="error_cont">
				<div class="cont_inner">
					<h2>페이지에 사용권한이 없습니다.</h2>
					<p>연결하려는 페이지에 접근권한이 없어<br>해당 페이지를 연결할 수 없습니다.<br>해당 홈페이지 관리자에게<br>문의해 주시기 바랍니다.</p>
					<div class="btn_wrap">
						<a href="/mobile/index.do" class="common_btn type02"><span>SM그룹 홈페이지</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
 