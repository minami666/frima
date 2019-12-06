$(function() {
  $('.slide_image').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 1000,
  });
  $('.slick-dots li').on('click', function() {
    $('.slide_image').slick('goTo', $(this).index());
  });
});