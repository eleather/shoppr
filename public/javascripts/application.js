// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function replace_right_content_with_ajax_complete(listen_element) {
  jQuery(listen_element)
    .bind('ajax:complete', function(et, e) {
      jQuery('#right_content').html(e.responseText);
    });
}