$(document).on('turbolinks:load', function() {
  if($('[data-modal="close"]').length) {
    $('[data-modal="close"]').on('click', () => {
      $('#bbr-modal').hide();
    });
  }
});
