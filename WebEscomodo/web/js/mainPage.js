

$(document).ready(
	function(){

		var n = 1;

		$('.carousel').carousel({
		    fullWidth: true,
		    indicators: true,
		    duration: 300
		});

		autoplay(n);

		function autoplay(m) {
			if(m == 1){
				m++;
				setTimeout(autoplay, 5000);
			} else {
			    $('.carousel').carousel('next');
			    setTimeout(autoplay, 5000);
			}
		}

	}
);