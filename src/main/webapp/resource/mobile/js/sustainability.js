var $anchorMenu = $("#anchorMenu");
var controller = new ScrollMagic.Controller();

/* anchor active */
$(".section").each(function(index,item){
	var anchor = $anchorMenu.find("li").eq(index)[0];
	var duration = $(item).height();
	new ScrollMagic.Scene({triggerElement: item, duration : duration})
					.setClassToggle(anchor, "on") // add class toggle
					.addTo(controller);
});

var slideArr = [];
$(".slide_wrap").each(function(index,item){
	var pagination = $(item).find(".counter");
	var prev = $(item).find(".slide_prev"), next = $(item).find(".slide_next");
	slideArr[index] = new Swiper(item , {
		effect: 'fade',
		loop : true,
		autoplay: 4000,
		autoplayDisableOnInteraction:true,
		speed : 1000,
		pagination : $(item).find(".counter"),
		paginationType : 'fraction',
		prevButton : $(item).find(".slide_prev"),
		nextButton : $(item).find(".slide_next"),
		fade: {
			crossFade: true
		}
	});
	slideArr[index].stopAutoplay();
	$(item).find(".play").on("click" ,function(e){
		e.preventDefault();
		slideArr[index].startAutoplay();
	});
	$(item).find(".pause").on("click" ,function(e){
		e.preventDefault();
		slideArr[index].stopAutoplay();
	});
});
$("div[data-trigger='slide']").each(function(index,item){
	//$(item).parents("[data-trigger='slide']")
	var duration = $(item).outerHeight();
	new ScrollMagic.Scene({triggerElement: item, duration : duration})
					.addTo(controller)
					.on("enter", function (e) {
						$(item).find(".play").trigger("click");
					}).on("leave", function (e) {
						$(item).find(".pause").trigger("click");
					});
});


/* image motion */
var $triggerTarget = $(".sec_inner");
$triggerTarget.each(function(idx,item){
	var $secTitArea = $(item).find("[data-motion='scaleType1']"), $enTit = $secTitArea.find("h2"), $titImg = $secTitArea.find(".img_box").children("img");
	var $list = $(item).find("[data-motion='staggerType1']");

	var controller = new ScrollMagic.Controller();

	var scaleMotion1 = new TimelineMax().fromTo($titImg, 1, {scale:1.2},{scale:1})
																		.fromTo($enTit, 1, {x:100 , opacity:0},{x:0 ,opacity :1},0.3);
	var staggerMotion1 = new TimelineMax().staggerFromTo($list.find("[data-role='m_elm']"), 0.4,{y:50, opacity:0},{y:0, opacity:1},0.2);
	
	/* stagger motion */
	new ScrollMagic.Scene({triggerElement: item})
								.setTween(staggerMotion1)
								.addTo(controller);
	/* sec_tit motion */
	new ScrollMagic.Scene({triggerElement: item})
								.setTween(scaleMotion1)
								.addTo(controller);
});

/* bg motion */
var $bgMotionArea = $("[data-motion='bgType1']");
$bgMotionArea.each(function(index,item){
	var $trigger = $(item).parent()[0];
	var $m_elm = $(item).find("[data-role='m_elm']");
	var controller = new ScrollMagic.Controller();
	var bgMotion1 = new TimelineMax().fromTo($(item), 1, {backgroundPosition:"50% 0%"},{backgroundPosition:"50% 70%"});
	var bgMotion2 = new TimelineMax().fromTo($m_elm, 1, {y:-30},{y:0});
	new ScrollMagic.Scene({triggerElement: $trigger,duration : "100%", triggerHook : 0.8})
								.setTween(bgMotion1)
								.addTo(controller);
	new ScrollMagic.Scene({triggerElement: $trigger})
								.setTween(bgMotion2)
								.addTo(controller);

});