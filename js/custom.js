jQuery(document).ready(function(){


	jQuery(".middle-area").backstretch([
		// "images/slider1.jpg",
		
		"images/1.jpg",
		"images/2.jpg",
		"images/3.jpg",
		"images/4.jpg",
		
		// "images/slider5.jpg"

		], {
			duration:5000,
			transition: 'push_left|push_right|cover_up|cover_down|fade',
			transitionDuration:1000

		});
});