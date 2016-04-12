# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $("#begin").click ->
    $("#search-instructions").show()

  $("#begin").click ->
    $("#search-bar").show()

  $("#begin").click ->
    $("#searchby").show()
    
  $("#begin").click ->
    $("#begin").hide()

  $("#begin").click ->
    $("#main").hide()

  $("#begin").click ->
    $("#welcome").hide()

  $("#search-bar").click ->
    if($(this).val() == "Artist, Album, Song")
      $(this).val(" ");
      
  
  

