
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
					<h2>시스템 에러가 발생했습니다.</h2>
					<p>서비스 이용에 불편을 끼쳐드려 죄송합니다.<br>요청하신 페이지에서<br>일시적인 에러가 발생하였습니다.<br>잠시 후 다시 이용해 주시기 바랍니다.</p>
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
 