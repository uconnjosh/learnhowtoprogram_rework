
$( document ).ready(function() {
  $(".editTab").click(function() {
    $(".editWrapper").show();
    $(".deleteWrapper").hide();
  });

  $('.deleteTab').click(function() {
    $('.deleteWrapper').show();
    $('.editWrapper').hide();
  });
});


