# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

chart_options =
  series:
    lines:
      show: true
    points:
      show: true
  legend:
    show: true
    margin: [10,10]
  xaxis:
    labelHeight: 100


$ ->
  path = window.location.pathname.replace "/stocks/", ""
  $.ajax '/statements/' + path,
    type: 'GET'
    dataType: 'JSON'
    error: (jqXHR, textStatus, errorThrown) ->
      alert('error')
    success: (data, textStatus, jqXHR) ->
      _data = [data]

      $.plot($("#stock_chart"), _data, chart_options)
