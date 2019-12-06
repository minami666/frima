$(function() {
  $('.slide_image').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 1000,
      arrows: true,
  });
  $('.slick-dots li').on('click', function() {
    $('.slide_image').slick('goTo', $(this).index());
  });
});