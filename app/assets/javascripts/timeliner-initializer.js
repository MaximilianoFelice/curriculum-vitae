$(document).ready(function(){
  $('.timeline-container').each(function(index, element){ 
    $.timeliner({timelineContainer: '#' + $(element).prop('id'),startState: 'open', fontOpen: '0.75em', fontClosed: '0.75em'}) 
  });
})