# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'page:change', (e) ->
  trigger_events()

$ ->
  trigger_events()

trigger_events = () ->
  $('.category-filter').on 'mouseenter', (event) ->
    src = $(this).find('img').data('srcin')
    $(this).find('img').attr('src', src)

  $('.category-filter').on 'mouseleave', (event) ->
    src = $(this).find('img').data('srcout')
    $(this).find('img').attr('src', src)
  $('.category-filter').tooltip()
  setTimeout("$('.server-message').fadeOut()", 2000);

  if window._gaq?
    _gaq.push ['_trackPageview']
  else if window.pageTracker?
    pageTracker._trackPageview()
  