$(function() {

$(document).on('change','input[type= "file"].sell-upload',function(event) {
  var images = [];
  var inputs  =[];
  console.log('ぱすお')
  console.log(this)
    console.log('1mai')
  var file = $(this).prop('files')[0];
  var reader = new FileReader();
  images.push($(this));
  var img = $(`<div class= "img_view"><img></div>`);
  reader.onload = function(e) {
    $('.img').append(img);
    img.find('img').attr({
      src: e.target.result
    })
  }
  reader.readAsDataURL(file);
  inputs.push(img);
    console.log('10mai')
    $.each(images,function(index, img){
      img.atter('file',index);
      $('.img').append(img);
  });
  });
$('#product_price').on('input',function() {
  console.log('あぴぽ')
  var data = $('#product_price').val();
  var profit = Math.round(data * 0.9)
  var fee = (data - profit)
  $('.sell-margin_right').html(fee)
  $('.sell-margin_right').prepend('¥')
  $('.sell-margin_right2').html(profit)
  $('.sell-margin_right2').prepend('¥')
  })
});


