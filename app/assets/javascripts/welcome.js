$(document).ready(function() {
	

	$('.detailsInformatoin span').click(function(){
		var name = $(this).attr('name');
		$('.informAbout').css('display','none');
		$('.informAbout[name = '+name+']').animate({opacity: 'show'}, 400);
	});
	$('.post1').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl1[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post2.active, .post3.active, .post4.active, .post5.active, .post6.active, .post7.active').removeClass('active');
		$(this).addClass('active');
	});
	$('.post2').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl2[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post1.active, .post3.active, .post4.active, .post5.active, .post6.active, .post7.active').removeClass('active');
		$(this).addClass('active');
	});
	$('.post3').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl3[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post1.active, .post2.active, .post4.active, .post5.active, .post6.active, .post7.active').removeClass('active');
		$(this).addClass('active');
	});
	$('.post4').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl4[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post1.active, .post2.active, .post3.active, .post5.active, .post6.active, .post7.active').removeClass('active');
		$(this).addClass('active');
	});
	$('.post5').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl5[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post1.active, .post2.active, .post3.active, .post4.active, .post6.active, .post7.active').removeClass('active');
		$(this).addClass('active');
	});
	$('.post6').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl6[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post1.active, .post2.active, .post3.active, .post4.active, .post5.active, .post7.active').removeClass('active');
		$(this).addClass('active');
	});
	$('.post7').click(function(){
		var name = $(this).attr('name');
		$('.peolpebl2, .peolpebl1, .peolpebl3, .peolpebl4, .peolpebl5, .peolpebl6, .peolpebl7').css('display','none');
		$('.peolpebl7[name = '+name+']').animate({opacity: 'show'}, 400);
		$('.post1.active, .post2.active, .post3.active, .post4.active, .post5.active, .post6.active').removeClass('active');
		$(this).addClass('active');
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
});