$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()


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

  $(".")



});
