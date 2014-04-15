$(document).ready(function() {
    $(".kal_cont").each(function(i){ 
        $(this).mousemove(function(e) {
            $(this).find(".ksc").each(function(i){ 
                $(this).css({backgroundPosition: e.pageX+"px "+e.pageY+"px"});
            });
        });
    });


    var alignTop = function() {
		var topOffset = $(window).height() / 2;
		$('.kal_cont>.ks').css({top: topOffset});
    };
	
	var alignRetina = function() {
		var topOffsetRetina = $(window).height() / 2.3;
		$('#retinaCat').css({top: topOffsetRetina});
   };
	
    // Align top on page load
    alignTop();
	alignRetina();

    // TODO: listen to window resize and call this function again
    // by calling alignTop(); after resize event

    $(window).resize(function() {
    alignTop();
	alignRetina();
    });


	// CHANGE THE CAT

    $("#buttonMeme").on("click", function(){
        $(".kal_cont .ksc").css("background-image", "url(Catleidoscope_files/backgrounds/background_memes.jpg)");
    });
    
    $("#buttonLilbub").on("click", function(){
        $(".kal_cont .ksc").css("background-image", "url(Catleidoscope_files/backgrounds/background_lilbub.jpg)");
    });
    
    $("#buttonGrumpy").on("click", function(){
        $(".kal_cont .ksc").css("background-image", "url(Catleidoscope_files/backgrounds/background_grumpy.jpg)");
    });

    $("#buttonColonel").on("click", function(){
        $(".kal_cont .ksc").css("background-image", "url(Catleidoscope_files/backgrounds/background_colonel.jpg)");
    });

    $("#buttonMaru").on("click", function(){
        $(".kal_cont .ksc").css("background-image", "url(Catleidoscope_files/backgrounds/background_maru.jpg)");
    });

// OPEN AND CLOSE INFO BOX
    
	/*
    $("#closeInfoBox").click(function(){
        $("#infoBox").toggle();
        var newContent = '<div id="openInfoBox"></div>';
        $(".kal_main").after(newContent);
    });
    */
	
	
    $("#closeInfoBox").click(function(){
			$("#infoBox").addClass('closed').removeClass('open');
			$("#closeInfoBox").addClass('closed').removeClass('open');
			$("#openInfoBox").addClass('open').removeClass('closed');
    });
	
	$("#openInfoBox").click(function(){
			$("#infoBox").addClass('open').removeClass('closed');
			$("#closeInfoBox").addClass('open').removeClass('closed');
			$("#openInfoBox").addClass('closed').removeClass('open');
   });
	
	$("#retinaCat").delay(5000).fadeOut(1000);

	
});