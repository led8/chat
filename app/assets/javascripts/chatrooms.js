$(document).on("turbolinks:load", function(){
  $('#new_message input').on("keypress", function(e){
    console.log(e.keyCode)
  })
})
