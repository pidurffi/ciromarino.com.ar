$(document).ready(function(){

	/*slider intro 100% height responsive*/
	$introHeight = $(window).height();
	$('.owl-main-slider .item').css('height',$introHeight);

	//MAIN SLIDER
	var owlMainSlider = $(".owl-main-slider");
    owlMainSlider.owlCarousel({
        singleItem: true,
        pagination: false,
        slideSpeed: 1000,
        rewindSpeed: 1000,
        autoPlay: true,
        transitionStyle : "fade"
    });

    //CABAÑAS SLIDER
	var owlCabanas = $(".owl-cabanas");
    owlCabanas.owlCarousel({
        singleItem: true,
        slideSpeed: 1000,
        rewindSpeed: 1000
    });

	$(".icon-arrow-left").click(function(){owlCabanas.trigger('owl.prev');});
	$(".icon-arrow-right").click(function(){owlCabanas.trigger('owl.next');});

	/*SCROLL*/
    smoothScroll.init({
        offset: 45,
        easing: 'easeOutCubic',
        speed: 2000
    });

    /*HAMBURGER*/
    $('.hamburger').on('click', function(){
        if(!$('.hamburger').hasClass('is-active')) {
            $(this).addClass('is-active');
            $('nav').addClass('active');
            $('body').addClass('noScroll');
        } else {
            $(this).removeClass('is-active');
            $('nav').removeClass('active');
            $('body').removeClass('noScroll');
        }
    });

    /*MOBILE NAV*/
    $('body').on('click', 'nav.active ul li a', function(){
        $('nav').removeClass('active');
        $('.hamburger').removeClass('is-active');
        $('body').removeClass('noScroll');
    });

});

$(window).scroll(function(){
    var scroll = $(window).scrollTop();

    if(scroll >= 200) {
        $('header').addClass('sticky');
        $('.social-nav, .contact-info').hide();
    } else {
        $('header').removeClass('sticky');
        $('.social-nav, .contact-info').show();
    }
});