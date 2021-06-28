var smGroup = smGroup || {},
    $window = $(window),
    docH,
    scrollTop,
    scrollBtm,
    isScrolling = false,
    posY,
    $wrap = $('#wrap'),
    $header = $('#header'),
    $gnb = $header.find('.gnb_wrap'),
    $depth2 = $gnb.find('.depth2'),
    $depth2Item = $depth2.find('li'),
    ListItemH = $depth2Item.outerHeight(),
    ArrayListLen = [],
    $gnbBg = $header.find('.bg');
    $btnSubsidiary = $header.find(".util_wrap .subsidiary a"),
    $subsidiaryWrap = $(".subsidiary_wrap"),
    $subCategory = $(".subsidiary_wrap .category li a"),
    $topEl = $('.btn_top');

window.onload  = function() {
    docH = $(document).height() - 90;
}

smGroup = {
    common : function(){
        //gnb
        $depth2.each(function(){
            var len = $(this).find('li').length;
            ArrayListLen.push(len);
        });

        var MaxListLen = Math.max.apply(null, ArrayListLen),
            gnbBgH = MaxListLen * ListItemH + 40;
            depth2H = gnbBgH - 10;
            gnbH = $gnb.outerHeight();
                
        $gnb.mouseenter(function(){
            if ( !$btnSubsidiary.hasClass('on') ){
                $gnb.height(gnbBgH + gnbH);
                $depth2.height(depth2H);
                $gnbBg.addClass('on').height(gnbBgH);

                if ( isScrolling == false ) {
                    $header.addClass('on');
                }
            };
           
            
        }).mouseleave(function(){
            if ( !$btnSubsidiary.hasClass('on') ){
                $gnb.height(gnbH);
                $depth2.height(0);
                $gnbBg.removeClass('on').height(0);

                if(!$wrap.hasClass('w_header')){
                    if ( isScrolling == false ) {
                        $header.removeClass('on');
                    } else {
                        $header.addClass('on');
                    }
                };
            };
        });

        //언어 셀렉트
        var $btnLang = $header.find(".btn.lang"),
            $btnLangArea = $btnLang.find("a");
        //btn lang click
        $btnLangArea.on("click", function(){
            $(this).parent().toggleClass('on');
        });
        //btn lang close
        $("#container").on("click", function(){
            if($btnLang.hasClass("on")){
                closeLang();
            };
        });
        function closeLang(){
            $btnLang.removeClass("on");
        }

        $btnSubsidiary.click(function(){
            console.log('TADFNUIAOH');
            if( $btnSubsidiary.hasClass("on") ){ closeSubsidiary(); }else{ openSubsidiary(); }
            if(!$wrap.hasClass('w_header')){
                if ( !$header.hasClass("on") ){
                    $header.addClass('on');
                } else {
                    if ( isScrolling == false ) {
                        $header.removeClass('on');
                    } else {
                        $header.addClass('on');
                    }
                }
            }
        });

        function openSubsidiary(){
            $btnSubsidiary.addClass("on").text("CLOSE");
            $subsidiaryWrap.addClass("on");
        };
        function closeSubsidiary() {
            $btnSubsidiary.removeClass("on").text("계열사");
            $subsidiaryWrap.removeClass("on");
        };

        $subCategory.click(function(){
            var $DataCate = $(this).attr("data-category");
            $("."+$DataCate).addClass("on").siblings(".subsidiary_slider").removeClass("on");

            $subCategory.removeClass("on");
            $(this).addClass("on");
        });


        //footer
        var $familySite = $('.family_site'),
            $defaultBtn = $familySite.find('.default_box a');
        $defaultBtn.click(function(e){
            e.preventDefault();
            if ( $familySite.hasClass('on') ){
                $familySite.removeClass('on');
            } else {
                $familySite.addClass('on');
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

            closeSubsidiary();
            closeLang();
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
                    if ( $('html, body').hasClass('not_scroll') ) {
                        isScrolling = true;
                        $header.addClass('on');
                    } else {
                        isScrolling = false;
                        if(!$subsidiaryWrap.hasClass('on') && !$gnb.is(':hover')){
                            $header.removeClass('on');
                        }
                    }
                }
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
                html.push('	<iframe id="video" width="100%" height="360" src="https://www.youtube.com/embed/' + videoId + '" title="" allowfullscreen=""></iframe>');
                /*비디오 슬라이드 팝업영역 텍스트 추가*/
                html.push('	<div class="cont">'+ videoCont +'</div>');
				html.push('</div>');
				videoArea = html.join('\n');
                target.append(videoArea);
                posY = $(window).scrollTop();
                $("html, body").addClass("not_scroll");
                $("#wrap").css("top",-posY);
			};

			target.parent().addClass("on").attr("tabindex" , 0).focus(); //접근성
			if(popW !== 0){
				//width fix 값
				target.css({"margin-left": -popW/2}); //가운데 정렬
			}else{
				//width 100%
				target.css({"height": target.width() * 0.562222}); //가운데 정렬
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
    url: "/business.do",
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
    resHtml += '<div class="swiper-slide">';
	if(value.URL!=''){
	resHtml += '    <a href="'+value.URL+'" target="_blank">';	
	}else{
		if(value.STATUS_SUB=='Y'){
			resHtml += '    <a href="/business/view.do?IDX='+value.IDX+'">';		
		}else{
			resHtml += '    <a href="#none">';
		}
	}
    
    resHtml += '        <img src="'+value.PATH+''+value.THUMB+'" alt="">';
    resHtml += '        <p>'+value.NAME+' <span>'+value.NAME_SUB+'</span></p>';
    resHtml += '    </a>';
    resHtml += '</div>';
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





