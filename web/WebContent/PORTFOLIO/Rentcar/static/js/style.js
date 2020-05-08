
var ua = navigator.userAgent;
var filter = "win16|win32|win64|mac|macintel";

function collapse(){
	//$('.collapse').collapse();
	$( ".search-car-result-list .btn-wrap a,.search-car-filter .btn-wrap a" ).click(function() {
		if( $( this ).text() == "더보기" ){
			$( this ).text( "접기" );
			//alert( $( this ).parent().closest('table-wrap').attr( 'id' ) );
			//$( this ).closet('.table-wrap').addClass( "active" );
		}else{
			$( this ).text( "더보기" );
			//$( this ).parent( ".table-wrap" ).removeClass( "active" );
		}
	});
	$( ".btn-collapse" ).click(function() {
		$( this ).toggleClass( "active" );
	});
	$('.panel-collapse').on('shown.bs.collapse', function(e) {
		//alert( $( this ).parent().parent().attr('class') );
		if( $( ".search-car-result-list > .panel" ).outerHeight() > $( window ).outerHeight() ){
			//scroll to top
			var $panel = $( this ).closest('.panel');
			$( 'html,body' ).animate({
				scrollTop: $panel.offset().top
			}, 500);
			
			//scroll inside
			$( this ).parent().parent().css({ "max-height":$( window ).outerHeight() - 240 });
			e.preventDefault();
		}
	});
	$('.panel-collapse').on('hidden.bs.collapse', function(e) {
		//scroll to top
		var $panel = $( this ).closest('.panel');
		$( 'html,body' ).animate({
			scrollTop: $panel.offset().top
		}, 500);
	});
};

function setHiddenBtn(){
	if ( $(this).scrollTop() > 100 ) {
		$( ".btn-show-scroll" ).fadeIn();
		$( ".toast" ).addClass( "reposition" );
	}else{
		$( ".btn-show-scroll" ).fadeOut();
		$( ".toast" ).removeClass( "reposition" );
	}
};
function setBtntop(){
	$( "a[href='#top']" ).click(function(){
        $('html,body').animate({ scrollTop:0 }, 100 );return false;
    });
};
function popover(){
	$( "[data-toggle='popover']" ).each( function(){
		$( this ).popover({
			content: $( $( this ).data().target ).html(),
			html: true,
			selector: this //Sepcify the selector here
		});
	});
};
function tooltip(){
	$( "[data-toggle='tooltip']" ).each( function(){
		$( this ).tooltip();
	});
};

$( document ).ready( function(){
	setBtntop();
});
$( window ).scroll( function(){
	setHiddenBtn();
});
/*
$(window).bind("load", function() {
	
});

$( window ).resize( function(){
	fitHeight();
});
*/