$(document).ready(function(){
  $('.timeline-container').each(function(index, element){ 
    $.timeliner({timelineContainer: '#' + $(element).prop('id'),startState: 'open', fontOpen: '1em', fontClosed: '1em'}) 
  });
})