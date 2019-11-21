$(document).ready(function() {
// Mets ici ton code
$('.card-content li.show').click(function(event){
  event.preventDefault();
  $(this).prev().slideToggle('slow');
  $(this).hide();
});

$('.card-content li.hide').click(function(event){
  event.preventDefault();
  $(this).prev().slideToggle('slow');
  $(this).hide();
});

});