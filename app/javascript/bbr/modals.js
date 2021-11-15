$(document).on('turbolinks:load', function() {
  if($('[data-modal="close"]').length) {
    $('[data-modal="close"]').on('click', function() {
      $(this).parents('.is-modal').hide()
    });
  }

  if($('[data-toggle="modal"]').length) {
    $('[data-toggle="modal"]').on('click', function(event){
      $($(this).data('target')).show();
      event.preventDefault();
    });
  }
});
