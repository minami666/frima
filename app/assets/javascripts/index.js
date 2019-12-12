$(function() {
  $('.categry_box').mouseover(function(){
    console.log('ぺすお')
    $(".tach-cate").removeClass("none");
  })

  $('.categry_box').mouseout(function(){
    $(".tach-cate").addClass("none");
  })
  
  $('.brand_box').mouseover(function(){
    console.log('ぺすお')
    $(".tach-bra").removeClass("none");
  })

  $('.brand_box').mouseout(function(){
    $(".tach-bra").addClass("none");
  })

  });
  
  