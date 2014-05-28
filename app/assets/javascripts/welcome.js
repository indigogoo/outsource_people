$(document).ready(function() {
	

	$('.detailsInformatoin span').click(function(){
		var name = $(this).attr('name');
		$('.informAbout').css('display','none');
		$('.informAbout[name = '+name+']').animate({opacity: 'show'}, 400);
	});
	$('.post1').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl1[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl1[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post1.active').removeClass('active');
		    $(this).addClass('active');
        }
	});
	$('.post2').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl2[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl2[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post2.active').removeClass('active');
		    $(this).addClass('active');
        }
	});
	$('.post3').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl3[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl3[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post3.active').removeClass('active');
		    $(this).addClass('active');
        }
	});
	$('.post4').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl4[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl4[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post4.active').removeClass('active');
		    $(this).addClass('active');
        }
	});
	$('.post5').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl5[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl5[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post5.active').removeClass('active');
		    $(this).addClass('active');
        }
	});
	$('.post6').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl6[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl6[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post6.active').removeClass('active');
		    $(this).addClass('active');
        }
	});
	$('.post7').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		if($(this).hasClass('active')){
            $('.peolpebl7[name = '+name+']').animate({opacity: 'hide'}, 400);
            $(this).removeClass('active');
        } else {
            $('.peolpebl7[name = '+name+']').animate({opacity: 'show'}, 400);
		    $('.post7.active').removeClass('active');
		    $(this).addClass('active');
        }
		
		
	});
	$('.closeBlock').click(function(){
		$(this).parent().animate({opacity: 'hide'}, 400);
		$('.post1.active, .post2.active, .post3.active, .post4.active, .post5.active, .post6.active, .post7.active').removeClass('active');
	});
	$(".mainMenu span").click(function () {
        var elementClick = $(this).attr("rel")
        var destination = $(elementClick).offset().top - 100;
        $("html:not(:animated),body:not(:animated)").animate({scrollTop: destination}, 800);
        return false;
    }); 

    $(window).scroll(function() { 
	var the_top = $(document).scrollTop();
	if (the_top > 0) $('#header_main').addClass('fixed'); 
	else $('#header_main').removeClass('fixed');
 });
});