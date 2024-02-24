const mainHeader = document.getElementById("header-upper");

const scrollToTopElement = document.getElementById("scroll-top");

//use window.scrollY

var scrollpos = window.scrollY;

function add_class_on_scroll() {
  mainHeader.classList.add("sticky-header");

  // mobileHeader.classList.add("sticky-header");

  scrollToTopElement.classList.add("scroll-active");
}

function remove_class_on_scroll() {
  mainHeader.classList.remove("sticky-header");

  scrollToTopElement.classList.remove("scroll-active");
}

window.addEventListener("scroll", function () {
  //Here you forgot to update the value

  scrollpos = window.scrollY;

  if (scrollpos > 10) {
    add_class_on_scroll();
  } else {
    remove_class_on_scroll();
  }
});

function topFunction() {
  document.body.scrollTop = 0;

  document.documentElement.scrollTop = 0;
}

$(".sub-menu ul").hide();

$(".sub-menu a").click(function () {
  $(this).parent(".sub-menu").children("ul").slideToggle("100");

  $(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
});
