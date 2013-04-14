# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

  $('#search_movie_title').autocomplete
   source: $('#search_movie_title').data('autocomplete-source')
