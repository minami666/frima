$(function() {
  let images = [];
  function buildHTML(imgSrc){
    let html =  `<div class="preview-box">
                   <div class="preview-box__img-box">
                    <img src="${imgSrc}">
                  </div>
                  <div class="preview-box__select">
                     <div class="preview-box__select--edit">
                    <p>編集</p>
                  </div>
                  <div class="preview-box__select--delete">
                    <p>削除</p>
                  </div>
                </div>
              </div>`
    $('.drop-zone').prepend(html);
  };

  $('#upload-image').change(function(e){
    let files = e.target.files;
    for (var i = 0, f; f = files[i]; i++){
      let reader = new FileReader();
      reader.readAsDataURL(f);
      reader.onload = function(){
        let imgSrc = reader.result;
        buildHTML(imgSrc);
        images.push(imgSrc);
    }
    }
  });
  $('.sell-box__img--input').on('drop', function(e) {
    e.preventDefault();
    e.stopPropagation();
    let dropImages = e.originalEvent.dataTransfer.files;
      for(let i = 0; i < dropImages.length; i++ ) {
        let imgSrc = URL.createObjectURL(dropImages[i]);
        buildHTML(imgSrc);
        images.push(dropImages[i].name);
      }
  });

  $(document).on('click', '.preview-box__select--delete p', function(){
    $(this).closest('.preview-box').remove();
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

