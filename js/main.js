// const headerMenu = document.getElementById("header");
// //Get the button
// let mybutton = document.getElementById("btn-back-to-top");


// window.onscroll = function () {
// 	scrollFunction()
// 	// scrollTopFunc()
// }

// // Header Sticky Add
// function scrollFunction() {
// 	const sn = document.getElementById("sticky_nav");
// 	if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
// 		sn.style.background = '#fff'
// 		sn.style.position = 'fixed'
// 		sn.style.zIndex = "9999"
// 		sn.style.paddingTop = '10px'
// 		sn.style.paddingBottom = '10px'

// 	} else {
// 		sn.style.position = 'relative'
// 		sn.style.background = '#fff'
// 		sn.style.top = '0'
// 		sn.style.zIndex = "9999"
// 		sn.style.paddingTop = '15px'
// 		sn.style.paddingBottom = '15px'
// 	}
// }




// // When the user scrolls down 20px from the top of the document, show the button
// window.onscroll = function () {
// scrollFunction();
// };

// function scrollFunction() {
// if (
// document.body.scrollTop > 20 ||
// document.documentElement.scrollTop > 20
// ) {
// mybutton.style.display = "block";
// } else {
// mybutton.style.display = "none";
// }
// }
// // When the user clicks on the button, scroll to the top of the document
// mybutton.addEventListener("click", backToTop);

// function backToTop() {
// document.body.scrollTop = 0;
// document.documentElement.scrollTop = 0;
// }

$ = jQuery.noConflict();


$(function () {
	// Owl Carousel
	var owl = $(".testimonial-area");
	owl.owlCarousel({
		items: 2,
		margin: 20,
		loop: true,
		dots: false,
		nav: true,
		autoplay: true,
		autoplayTimeout: 2000,
		autoplayHoverPause: false,
		navText: [
			"<i class='fa fa-long-arrow-left'></i>",
			"<i class='fa fa-long-arrow-right'></i>"
		 ],
		 "responsive": {
			"0": {
				"items": 1
			},
			"768": {
				"items": 2
			},
			"992": {
				"items": 2
			},
			"1200": {
				"items": 2
			}
		}

	});
});

$(document).ready(function() {

	var counters = $(".count-text");
	var countersQuantity = counters.length;
	var counter = [];
  
	for (i = 0; i < countersQuantity; i++) {
	  counter[i] = parseInt(counters[i].innerHTML);
	}
  
	var count = function(start, value, id) {
	  var localStart = start;
	  setInterval(function() {
		if (localStart < value) {
		  localStart++;
		  counters[id].innerHTML = localStart + "+";
		}
	  }, 40);
	}
  
	for (j = 0; j < countersQuantity; j++) {
	  count(0, counter[j], j);
	}
  });





