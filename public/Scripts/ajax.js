var display_content = function(response){
  $("#content").html(response);
  $("#content a.ajax").on("click", monitor_links);
}

var history;
var monitor_links = function (e) {
    e.preventDefault();

    var link = $(this);
    var url = $(this).attr("href");
    if (history != url) {
        mainApp.clearEvents();
        history = url;
        $.ajax({
            url: url,
            method: $(this).attr("data-method"),
            success: display_content
        });
    }
}

$("#menu a").on("click", monitor_links);