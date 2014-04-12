// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//= require jquery
//= require jquery_ujs
//= require bjqs-1.3
//= require_tree .

$(function() {
  $(document).on("click","#products th a, #products .pagination a", function() {
    $.getScript(this.href);
    return false;
  });
  $("#products_search input").keyup(function() {
  	console.log($("#products_search").attr("action"));
  	console.log($("#products_search").serialize());
    $.get(
    	$("#products_search").attr("action"), 
    	$("#products_search").serialize(), 
    	null, 
    	"script");
    return false;
  });
});

