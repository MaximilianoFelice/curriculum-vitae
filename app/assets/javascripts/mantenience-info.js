/* This file tests the server on each request for mantenience info and displays corresponding message */
$(document).ready(function(){

  $('.mantenience-close-js').click(function(){ $('.mantenience-info').addClass('hidden') });

  var displayMantenienceMessage = function(){ $('.mantenience-info').removeClass('hidden') };

  $.ajax({
     url: Routes.development_mode_info_path(),
     type: 'GET',
     dataType: 'json',
     success: function(data){ if (data.dev_mode) displayMantenienceMessage() }
   });
})