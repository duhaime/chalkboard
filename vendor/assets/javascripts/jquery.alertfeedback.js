$(function () {
  var alert = $('.alert');
  if (alert.length > 0) {
    alert.show().animate({height: alert.outerHeight()}, 200);
    window.setTimeout(function() {
      alert.slideUp();
    }, 3000);
  }
});
