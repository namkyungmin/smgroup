<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<title>SM그룹</title>
<style>
	@font-face {
    font-family: 'NanumSquare';
    src: url('../font/NanumSquareL.eot');
    src: url('../font/NanumSquareL.woff2') format('woff2'),
         url('../font/NanumSquareL.woff') format('woff');
    font-weight: 300;
    font-style: normal;
	}

	@font-face {
		font-family: 'NanumSquare';
		src: url('../font/NanumSquareR.eot');
		src: url('../font/NanumSquareR.woff2') format('woff2'),
			url('../font/NanumSquareR.woff') format('woff');
		font-weight: 400;
		font-style: normal;
	}

	@font-face {
		font-family: 'NanumSquare';
		src: url('../font/NanumSquareB.eot');
		src: url('../font/NanumSquareB.woff2') format('woff2'),
			url('../font/NanumSquareB.woff') format('woff');
		font-weight: 700;
		font-style: normal;
	}

	/* reset */
	html, body, div, span, h1, h2, h3, h4, h5, h6, p, a, em, img, strong, sub, sup, tt, var,b, u, i, center,dl, dt, dd, ol, ul, li, footer, header, hgroup, menu, nav{margin:0; padding:0; border: 0; box-sizing: border-box;}
	body{font-family:'NanumSquare', Dotum, '굴림', Gulim, Helvetica, sans-serif; font-size:17px; font-weight:400; letter-spacing:-.25px; color:#333333; -webkit-text-size-adjust:none;}
	h1, h2, h3, h4, h5, h6, strong{font-weight:700; font-size:100%;}
	fieldset, img, button{border:0;}
	img, input, button{vertical-align:top;}
	a{text-decoration:none; color:#444;}
	a:hover, a:active{text-decoration:none;}

	body, html{height:100%;}
	.error #contents{display:table; width:1100px; height:100%; margin:0 auto; table-layout:fixed;}
	.error_cont{display:table-cell; vertical-align:middle;}
	.error_cont .cont_inner{padding:80px 0; background-color:#f5f5f5; text-align:center;}
	.error_cont h2{font-size:30px; font-weight:700; line-height:1;}
	.error_cont h2:after{display:block; width:35px; height:2px; margin:27px auto; background-color:#b01a1d; content:"";}
	.error_cont p{margin-bottom:45px; line-height:30px; color:#666;}

	.common_btn{display:inline-block; height:50px; padding:0 20px; background:#b01a1d; font-size:16px; line-height:50px; letter-spacing:-0.48px; transition: all 0.3s ease-in-out;} 
	.common_btn span{padding-right:80px; background-image:url(/resource/images/common/bg_btn_arrow_w.png); background-repeat:no-repeat; background-position:right center; color:#8a1c22; color:#fff; transition: all 0.3s ease-in-out;}
	.common_btn:hover{background:#999;}
</style>
</head>
<body>
<div id="wrap"  class="error">
	<div id="container">
		<div id="contents">
			<div class="error_cont">
				<div class="cont_inner">
					<h2>시스템 에러가 발생했습니다.</h2>
					<p>서비스 이용에 불편을 끼쳐드려 죄송합니다.<br>요청하신 페이지에서 일시적인 에러가 발생하였습니다.<br>잠시 후 다시 이용해 주시기 바랍니다.</p>
					<div class="btn_wrap">
						<a href="/index.do" class="common_btn"><span>SM그룹 홈페이지</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>