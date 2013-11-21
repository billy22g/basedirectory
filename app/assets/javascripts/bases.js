$(document).on('ready', function() {
  $(".delete").bind("click", function(event) {
    console.log("target", event.currentTarget);
    event.preventDefault();
    event.stopPropagation();
    var $target = $(event.currentTarget);

    var url = $target.attr("href");

    $.ajax(url, { type: "delete" });
  });
});
