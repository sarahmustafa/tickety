# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#show_theater_id').parent().hide()
  theaters = $('#show_theater_id').html()
  $('#show_cinema_id').change ->
    cinema = $('#show_cinema_id :selected').text()
    escaped_cinema = cinema.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(theaters).filter("optgroup[label='#{escaped_cinema}']").html()
    if options
      $('#show_theater_id').html(options)
      $('#show_theater_id').parent().show()
    else
      $('#show_theater_id').empty()
      $('#show_theater_id').parent().hide()
