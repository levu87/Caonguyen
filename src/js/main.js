function setBackground() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}

function toggleHeader() {
	$('.toggle-button').on('click', function () {
		$('.toggle-button').toggleClass('active')
		$('.sidebar-menu').toggleClass('active')
		$('.back-drop').toggleClass('active')
	});
	$('.back-drop').on('click', function () {
		$('.toggle-button').removeClass('active')
		$('.sidebar-menu').removeClass('active')
		$('.back-drop').removeClass('active')
	});
}
///header fixed
function headerfixed() {
	if ($(window).scrollTop() > 0) {
		$('.header').addClass('fixed')
	} else {
		$('.header').removeClass('fixed')
	}
	$(window).on('scroll', function () {
		if ($(window).scrollTop() > 0) {
			$('.header').addClass('fixed')
		} else {
			$('.header').removeClass('fixed')
		}
	})

}
//mapping mobile 
function mappingMenu() {
	return new MappingListener({
		selector: ".menu-wrapper",
		mobileWrapper: ".sidebar-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-bottom",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}
function mappingLogo() {
	return new MappingListener({
		selector: ".header-left",
		mobileWrapper: ".header-top .toggle-button",
		mobileMethod: "insertBefore",
		desktopWrapper: ".header-wrapper",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}
function mappingSearchbox() {
	return new MappingListener({
		selector: ".searchbox",
		mobileWrapper: ".sidebar-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-top",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}

function mappingCallbox() {
	return new MappingListener({
		selector: ".callbox",
		mobileWrapper: ".sidebar-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".searchbox",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}

function mappingText() {
	return new MappingListener({
		selector: ".text",
		mobileWrapper: ".sidebar-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-top",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}
function titleLienhe() {
	return new MappingListener({
		selector: ".contact-information .title-h1",
		mobileWrapper: ".contact-information .form-wrapper",
		mobileMethod: "insertBefore",
		desktopWrapper: ".contact-information",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}
function homeSlider() {
	var swiper = new Swiper('.home-banner .swiper-container', {
		pagination: {
			el: '.home-banner .swiper-pagination',
			clickable: true,
			type: 'bullets'
		},
		navigation: {
			nextEl: '.swiper-btn-next',
			prevEl: '.swiper-btn-prev',
		},
		loop: true,
		speed: 750,
		effect: "fade",
		observer: true,
		observeParents: true,
    	// autoplay: {
		// 	delay: 3000
		// },
		fadeEffect: {
			crossFade: true
		},
	});
}
function swiperInit() {
	var swiper = new Swiper('.doitac-wrapper .swiper-container', {
		loop: false,
		spaceBetween: 50,
		
		breakpointsInverse: true,
		autoplay: {
			delay: 4000
		},
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
				spaceBetween: 20
			},
			400: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			576: {
				slidesPerView: 3,
				spaceBetween: 20
			},
			992:{
				slidesPerView: 4,
				spaceBetween: 20
			},
			// when window width is >= 640px
			1200: {
				slidesPerView: 5,
				spaceBetween: 20
			},
			1440: {
				slidesPerView: 6,
				spaceBetween: 20
			}
		}
	});
}
function tabActive() {
	$('.tab-navigation a').click(function () {
		var tab_id = $(this).attr('data-type');

		$('.tab-navigation a').removeClass('active');
		$('.tab-item').removeClass('active');

		$(this).addClass('active');
		$("#" + tab_id).addClass('active');
	})
}

function language() {
	$('.language-active').on('click', function () {
		$('.language-list').slideToggle()
	})
}
function Aos(){
	AOS.init({
		disable: "mobile", // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
		startEvent: "DOMContentLoaded", // name of the event dispatched on the document, that AOS should initialize on
		initClassName: "aos-init", // class applied after initialization
		animatedClassName: "aos-animate", // class applied on animation

		delay: 0, // values from 0 to 3000, with step 50ms
		duration: 700, // values from 0 to 3000, with step 50ms
		easing: "ease", // default easing for AOS animations
		once: true, // whether animation should happen only once - while scrolling down
		mirror: false, // whether elements should animate out while scrolling past them
		anchorPlacement: "top-bottom" // defines which position of the element regarding to window should trigger the animation
	});
}
function toggleTab() {
    $("body").on("click", ".tab-current", function () {
		$(this).toggleClass("active"),
		$(".tab-navigation").toggleClass("active")
    })
}
function form(){
	$('.button-ungtuyen').on('click', function() {
        $('.form-apply').slideToggle();
    })
}
$(document).ready(function () {
	headerfixed()
	setBackground()
	toggleHeader()
	mappingLogo()
	mappingText()
	mappingMenu()
	mappingSearchbox()
	mappingCallbox()
	homeSlider()
	swiperInit()
	tabActive()
	language()
	Aos()
	toggleTab()
	form()
	titleLienhe()
});