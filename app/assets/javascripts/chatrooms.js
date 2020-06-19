$(document).on("turbolinks:load", function(){
  $('#new_message input').on("keypress", function(e){
    if (e && e.KeyCode == 13){
      e.preventDefault();
      $(this).submit();
    }
  })
})
