var smGroup = smGroup || {},
    $window = $(window),
    docH,
    scrollTop,
    isScrolling = false, 
    posY,
    $header = $('#header'),
    $wrap = $('#wrap'), 
    $gnb = $header.find('.gnb_wrap'),
    $subsidiary = $header.find('.subsidiary_wrap'), 
    $btnMenu = $(".btn_menu"),
    $btnSubsidiary = $(".btn_subsidiary"), 
    $depth1Wrap = $header.find('.depth1'), 
    $depth1 = $depth1Wrap.find('>a'),
    $depth2Wrap = $header.find('.depth2_list'), 
    $topEl = $('.btn_top'),
    $footer = $('.footer'); 
    footerH = $footer.outerHeight();
var scrollTop = $window.scrollTop();

window.onload  = function() {
    docH = $(document).height() - footerH;
}

smGroup = {
    common : function(){
        //gnb
        $depth1.click(function(){
            var $thisParent = $(this).closest('.depth1');
            var $thisDepth2Wrap = $thisParent.find('.depth2_list');
            if ( !$thisParent.hasClass('open') ) {
                $depth1Wrap.removeClass('open');
                $depth2Wrap.stop().slideUp();
                $thisParent.addClass('open');
                $thisDepth2Wrap.stop().slideDown();
            } else {
                $thisParent.removeClass('open');
                $thisDepth2Wrap.stop().slideUp();
            }
        });
        //메뉴 버튼 클릭
        $btnMenu.click(function(){
            $subsidiary.removeClass("on");
            $btnSubsidiary.text("Subsidiary");
            if ( !$wrap.hasClass('header_open') ) {
                $wrap.addClass('header_open');
                $header.addClass('on');
                $gnb.stop().animate({"left":"0"}, "linear", function(){
                    $('html, body').addClass('not_scroll')
                });
            } else {
                $('html, body').removeClass('not_scroll')
                $gnb.stop().animate({"left":"-100%"}, "linear", function(){
                    $wrap.removeClass('header_open');
                    $depth1Wrap.removeClass('open');
                    $depth2Wrap.stop().slideUp();

                    if ( !$wrap.hasClass('w_header') ){
                        $header.removeClass('on');
                    };
                });
            }
        });
        //계열사 버튼 클릭
        $btnSubsidiary.click(function(){
            var $this = $(this);
            $gnb.stop().animate({"left":"-100%"}, "linear");
            if ( !$subsidiary.hasClass('on') ) {
                $('html, body').addClass('not_scroll');
                $wrap.removeClass('header_open');
                $header.addClass('on');
                $subsidiary.addClass('on');
                $this.text("CLOSE");
            } else {
                if(scrollTop == 0){
                    $('html, body').removeClass('not_scroll');
                    if ( !$wrap.hasClass('w_header') ){
                        $header.removeClass('on');
                    };
                }
                $subsidiary.removeClass('on');
                $this.text("Subsidiary");
                
            }
        });



        //radio
        var $radio = $('.radio_wrap'),
            $radioLabel = $radio.find('label'),
            $radioInput = $radioLabel.find('input'),
            radioLen = $radio.length;
        if ( radioLen > 0 ) {
            $radioLabel.click(function(){
                var $this = $(this),
                    $thisInput = $this.find('input');
                $this.addClass('checked').siblings('label').removeClass('checked');
                $radioInput.removeAttr('checked');
                $thisInput.attr("checked", "checked");
            });
        }

        //checkbox
        var $checkbox = $('.check_wrap'),
            $checkLabel = $checkbox.find('span'),
            $checkInput = $checkLabel.find('input'),
            $checkAllList = $checkbox.find('.check_all'),
            checkLen = $checkbox.length;
        if ( checkLen > 0 ) {
            $checkLabel.click(function(){
                var $this = $(this),
                    $thisInput = $this.find('label').find('input');
                if ( $this.hasClass('checked') ) {
                    $this.removeClass('checked');
                    $checkInput.removeAttr('checked');
                    //전체 선택 후 리스트들 중 하나를 해제시
                    $checkAllList.removeClass('checked');
                    //전체 해제시
                    if( $this.hasClass('check_all') ){
                        $checkLabel.removeClass('checked');
                        $checkInput.removeAttr("checked", "checked");
                    }
                } else {
                    $this.addClass('checked');
                    $thisInput.attr("checked", "checked");
                    //전체 선택시
                    if( $this.hasClass('check_all') ){
                        $checkLabel.addClass('checked');
                        $checkInput.attr("checked", "checked");
                    }
                }
            });
        }

        //btn_top
		$topEl.click(function(e){
			e.preventDefault();
			$('html, body').animate({
				scrollTop : 0
			}, 200);
        });
        $window.scroll(function(){
            docH = $(document).height() - footerH;
            scrollTop = $window.scrollTop();
            scrollBtm = scrollTop + $window.height();

            if (scrollTop > 300){
                $topEl.fadeIn();
            } else {
                $topEl.fadeOut();
            }
            
            if ( scrollBtm >= docH ){
                $topEl.css('position', 'absolute');
            } else {
                $topEl.css('position', 'fixed');
            }
        });
    },
    headerOn : function(){
        $wrap.addClass('w_header');
        $header.addClass('on');
        
    },
    stickyGnb : function(){
        $window.scroll(function(){
            scrollTop = $window.scrollTop();
            if ( !$wrap.hasClass('w_header') ){
                if ( scrollTop > 0 ) {
                    isScrolling = true;
                    $header.addClass('on');
                } else {
                    if ( $('html, body').hasClass('not_scroll') || $subsidiary.hasClass('on')) {
                        isScrolling = true;
                        $header.addClass('on');
                    } else {
                        isScrolling = false;
                        $header.removeClass('on');
                    }
                }
            };
        });
    },
    tab : function(){
        var $tabBtn = $('.tab_wrap .selected'),
            $tabList = $tabBtn.next('ul'),
            $tabListEl = $tabList.find('li a');
        $tabBtn.click(function(){
            $tabBtn.stop().toggleClass('on');
            $tabList.stop().slideToggle(200);
        });
        $tabListEl.click(function(){
            var selectVal = $(this).text();
            $tabBtn.text(selectVal);
            $tabList.stop().slideUp(200);
        });
    },
    accodian : function(){
        var $qestion = $('.my.faq .faq_wrap li .question');
        $qestion.click(function(){
            var $this = $(this);
            var $thisWrap = $this.closest('li');
            var $thisAnswer = $this.next('.answer');
            if ( $thisWrap.hasClass('open') ) {
                $thisWrap.removeClass('open');
                $thisAnswer.stop().slideUp();
            } else {
                $thisWrap.addClass('open');
                $thisAnswer.stop().slideDown();
            }
        });
    },
    popup : function(){
        var $popBtn = $(".pop_btn"), $popCloseBtn = $(".pop_close_btn");
		var $focusTarget, $targetPop;
		var popW=0;
		function openPopup(target){
			/* youtubePopup */
			if($focusTarget.attr("data-videoId") !== undefined){
				var videoId = $focusTarget.attr("data-videoId"), html = [], videoArea = "";
				var videoCate =  $focusTarget.find('.cate').text(),
                    videoTit = $focusTarget.find('.tit').text(),
                    videoDate = $focusTarget.find('.date').text(),
                    $videoContEl = $focusTarget.find('.contents');
                var videoCont = $videoContEl.html();
				html.push('<div class="tit_area">');
                html.push('	<p class="tit">'+ videoTit +'</p>');
                html.push('	<div class="info">');
                html.push('	 <span class="date">'+ videoDate +'</span>');
                html.push('	 <span class="cate">'+ videoCate +'</span>');
                html.push(' </div>');
				html.push('</div>');
                html.push('<div class="video_area">');
                html.push('	<iframe id="video" width="100%" height="185" src="https://www.youtube.com/embed/' + videoId + '" title="" allowfullscreen=""></iframe>');
                /*비디오 슬라이드 팝업영역 텍스트 추가*/
                html.push('	<div class="cont">'+ videoCont +'</div>');
				html.push('</div>');
				videoArea = html.join('\n');
                target.append(videoArea);
                posY = scrollTop;
                $("html, body").addClass("not_scroll");
                $("#header").addClass('on');
                $("#wrap").css("top",-posY);
			};

			target.parent().addClass("on").attr("tabindex" , 0).focus(); //접근성
			if(popW !== 0){
				//width fix 값
				target.css({"margin-left": -popW/2}); //가운데 정렬
			};
		};
		function closePopup(target){
			target.closest(".popup_wrap").removeClass("on").attr("tabindex" , "");
			/* youtubePopup */
			if($focusTarget.attr("data-videoId") !== undefined){
				target.siblings(".tit_area").remove();
				target.siblings(".video_area").remove();
            };

            $("html, body").removeClass("not_scroll");
            posY = $(window).scrollTop(posY);
            $header.removeClass('on');
        };
		//popup btn click
		$popBtn.on("click" , function(e){
            e.preventDefault();
			var data = $(this).data('popup');
			$targetPop = $('.popup_wrap[data-popup="'+ data +'"]').find(".pop_inner");
			popW = $targetPop.outerWidth();
			$focusTarget = $(this);
            openPopup($targetPop);
		});
		//popup close btn click
		$popCloseBtn.on({
			"click" : function(e){
				e.stopPropagation();
				closePopup($(this));
				$focusTarget.focus();
			},
			"keydown" : function(e){
				var keyCode = e.keyCode || e.which;
				//shift + tab키
				if(e.shiftKey && keyCode == 9){
					$(this).prev().focus();
				}else if(keyCode == 9){
					e.preventDefault();
					$targetPop.focus();
				};
			}
		});
		//popup dim click 시 close, 접근성 close
		$('.popup_wrap').on({
			"click" : function(e){
				if(e.target.className === "popup_wrap on"){
					$popCloseBtn.trigger("click");
				};
			},
			"keydown" : function(e){
				var keyCode = e.keyCode || e.which;
				//shift + tab키
				if(e.shiftKey && keyCode == 9){
					if($(e.target).hasClass("popup_wrap")){
						e.preventDefault();
						$popCloseBtn.trigger("click");
					};
				};
			}
		})
    },
    motionInit : function(target, triggerEl){
        var _self = this;
        _self.target = target;
        _self.triggerEl = triggerEl;

        _self.motionFadeIn();
    },
    motionFadeIn : function(){
        var _self = this;
        $(_self.triggerEl).each(function(idx,item){
            var scene = null, tween = new TimelineMax(), controller = new ScrollMagic.Controller();
            var delay = Number($(_self.triggerEl).attr("data-delay"));
            $(item).find(_self.target).each(function(n,el){
                tween.fromTo(el, 0.6, {y:70,opacity:0},{y:0,opacity:1},"-=" + delay);
                scene = new ScrollMagic.Scene({triggerElement: _self.triggerEl})
                                                            .setTween(tween)
                                                            .addTo(controller);
            });
        });
    }
}
smGroup.common();

//개발팀 추가.
function gfn_isNull(str) {
    if (str == null) return true;
    if (str == "NaN") return true;
    if (new String(str).valueOf() == "undefined") return true;    
    var chkStr = new String(str);
    if( chkStr.valueOf() == "undefined" ) return true;
    if (chkStr == null) return true;    
    if (chkStr.toString().length == 0 ) return true;   
    return false; 
}
function ComSubmit(opt_formId) {
    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    this.url = "";
    if(this.formId == "commonForm"){
        $("#commonForm")[0].reset();
    }
     
    this.setUrl = function setUrl(url){
        this.url = url;
    };
     
    this.addParam = function addParam(key, value){
    	if($("#"+this.formId).find('[name="'+key+'"]').val()){
    		$("#"+this.formId).find('[name="'+key+'"]').val(value).attr('id',key);
    	}else{
    		$("#"+this.formId).append($("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
    	}
        
    };
    
    this.submit = function submit(){
        var frm = $("#"+this.formId)[0];
        frm.action = this.url;
        frm.submit();   
    };
}

$.ajax({
    type: "post",
    url: "/eng/business.do",
    data: {},
    dataType: "json",
    success: function (response) {
		var resHtml = '';
		resHtml = '';
        $.each(response.manu,function(key,value){
			resHtml += funcResHtml(value);
        });
		$('#swiper_manu').append(resHtml);
		resHtml = '';
        $.each(response.const2,function(key,value){
			resHtml += funcResHtml(value);
        });
		$('#swiper_const').append(resHtml);
		resHtml = '';
        $.each(response.ship,function(key,value){
			resHtml += funcResHtml(value);
        });
		$('#swiper_ship').append(resHtml);
		resHtml = '';
        $.each(response.media,function(key,value){
			resHtml += funcResHtml(value);
        });
		$('#swiper_media').append(resHtml);
		resHtml = '';
        $.each(response.leisure,function(key,value){
			resHtml += funcResHtml(value);
        });
		$('#swiper_leisure').append(resHtml);
		
        //계열사 전체보기
        var $subsidiarySlider = $('.subsidiary_slider .swiper-container');
        $('.swiper-container').each(function(){
            var $this = $(this);
            var slideLen = $(this).find('.swiper-slide').length;
            var subSliderOption;
            if (slideLen <= 6){
                $this.find('.arrow_wrap').hide();
                subSliderOption = {
                    slidesPerView: 'auto',
                    scrollbar: '.swiper-scrollbar',
                    scrollbarDraggable: false,
                    scrollbarSnapOnRelease: false,
                    resistance: false,
                    slidesPerView: slideLen,
                    spaceBetween: 5,
                    slidesPerGroup: slideLen,
                };
            } else {
                subSliderOption = {
                    slidesPerView: 'auto',
                    scrollbar: '.swiper-scrollbar',
                    scrollbarHide: false,
                    scrollbarDraggable: true,
                    scrollbarSnapOnRelease: false,
                    nextButton: '.swiper-button-next',
                    prevButton: '.swiper-button-prev',
                    slidesPerView: 6,
                    spaceBetween: 5,
                    slidesPerGroup: 6,
                };
            }
            var subsidiarySlider = new Swiper($this, subSliderOption);
        });
        
    }
});
function funcResHtml(value){
	var resHtml = '';
    resHtml += '<li>';
	if(value.URL_EN!=''){
	resHtml += '    <a href="'+value.URL_EN+'" target="_blank">';	
	}else{
		if(value.STATUS_SUB_EN=='Y'){
			resHtml += '    <a href="/mobile/eng/business/view.do?IDX='+value.IDX+'">';		
		}else{
			resHtml += '    <a href="#none">';
		}
	}
    resHtml += '        '+value.NAME_EN+' <span>'+value.NAME_SUB_EN+'</span>';
    resHtml += '    </a>';
    resHtml += '</li>';
	return resHtml;
}
$(document).on('click','[data-viewclick]',function(){
    $.ajax({
        type: "post",
        url: "/viewclick.do",
        data: {'IDX':$(this).data('viewclick')},
        dataType: "json",
        success: function (response) {
            //console.log(response);
        }
    });
});





