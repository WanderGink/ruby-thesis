$(document).on("turbolinks:load", function() {
  if($("#recommendations").length > 0) {
    var page = 1;
    $(".recommend-paginate .btn-load-more").unbind("click").on("click", function() {
      var url = $(location).attr("href");
      $(".recommend-spinner").show();
      page++;
      $.get(url, {page: page});
    });
  }
});
