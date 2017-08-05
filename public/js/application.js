$(document).ready(function() {

  $('#treat-call').on("click", function(e){
  	e.preventDefault();
  	console.log("ready for action!")

  	var $button = $(this);

  	$.ajax({
  		url: $button.attr("action"),
  		method: $button.attr("method")
  	}).done(function(response){
  		console.log(response);
  		console.log("Hey, you did the thing")
  		// $button.after(response);
  		$button.remove();
  	})
  })

  $(".add_comment_button").on("click", function(event){
    event.preventDefault();
    $(this).css('display', 'none');
    $(this).parent().find('.add_comment_form').css('display', 'inline');
  });

});

// using the ruby gem wrapper
// var VisualRecognitionV3 = require('watson-developer-cloud/visual-recognition/v3');
// var fs = require('fs');

// var visual_recognition = new VisualRecognitionV3({
//   api_key: '<api_key>',
//   version_date: VisualRecognitionV3.VERSION_DATE_2016_05_20
// });

// var params = {
//   images_file: fs.createReadStream('./resources/car.png')
// };

// visual_recognition.classify(params, function(err, res) {
//   if (err)
//     console.log(err);
//   else
//     console.log(JSON.stringify(res, null, 2));
// });