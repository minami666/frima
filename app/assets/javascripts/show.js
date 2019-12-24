$(function(){
  $('.image2').on("mouseover",function(){
    console.log("なふこ")
    var selectedSrc = $(this).attr('src');
    $('.item_main_image').html(`<img src="${selectedSrc}" height="300" width="300">`)
    $('.image2').css("opacity","1");
  });

  $('.image2').on("mouseout",function(){
    console.log("にとり")
    $('.image2').css("opacity","0.5");
  });

});