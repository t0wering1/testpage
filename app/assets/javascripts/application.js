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
//
//= require jquery
//= require jquery_ujs
//= requrie bootstrap
//= require bootstrap-dropdown
//= require jquery.facebox
//= require_tree .
function find_hidden(){  
        $('.infinite-find')  
        .unbind('click')  
        .bind('click', function() {  
                var glink = $(this).attr('href');  
                jQuery.facebox({div: glink});  
                find_hidden();  
        });  
}  
  
jQuery(document).ready(function($){  
//infinite find - really stick in facebox  
        find_hidden();  
  
})  