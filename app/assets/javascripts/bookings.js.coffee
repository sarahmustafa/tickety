# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->

settings =
  rows: 5
  cols: 15
  rowCssPrefix: "row-"
  colCssPrefix: "col-"
  seatWidth: 35
  seatHeight: 35
  seatCss: "seat"
  selectedSeatCss: "selectedSeat"
  selectingSeatCss: "selectingSeat"

init = (reservedSeat) ->
  str = []
  seatNo = undefined
  className = undefined
  i = 0
  while i < settings.rows
    j = 0
    while j < settings.cols
      seatNo = (i + j * settings.rows + 1)
      className = settings.seatCss + " " + settings.rowCssPrefix + i.toString() + " " + settings.colCssPrefix + j.toString()
      className += " " + settings.selectedSeatCss  if $.isArray(reservedSeat) and $.inArray(seatNo, reservedSeat) isnt -1
      str.push "<li class=\"" + className + "\"" + "style=\"top:" + (i * settings.seatHeight).toString() + "px;left:" + (j * settings.seatWidth).toString() + "px\">" + "<a title=\"" + seatNo + "\">" + seatNo + "</a>" + "</li>"
      j++
    i++
  $("#place").html str.join("")


#case I: Show from starting
#init();

#Case II: If already booked
bookedSeats = [5, 10, 25]
init bookedSeats

$("." + settings.seatCss).click ->
  if $(this).hasClass(settings.selectedSeatCss)
    alert "This seat is already reserved"
  else
    $(this).toggleClass settings.selectingSeatCss

$("#btnShow").click ->


  str = []
  $.each $("#place li." + settings.selectedSeatCss + " a, #place li." + settings.selectingSeatCss + " a"), (index, value) ->
    str.push $(this).attr("title")

  alert str.join(",")

$("#btnShowNew").click ->
  str = []
  item = undefined
  $.each $("#place li." + settings.selectingSeatCss + " a"), (index, value) ->
    item = $(this).attr("title")
    str.push item

  alert str.join(",")


 


