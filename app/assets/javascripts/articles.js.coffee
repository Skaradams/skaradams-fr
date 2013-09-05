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

  _gaq = _gaq or []
  _gaq.push ["_setAccount", "UA-33339361-1"]
  _gaq.push ["_trackPageview"]
  ->
    console.log('qsdqsqd')
    ga = document.createElement("script")
    ga.type = "text/javascript"
    ga.async = true
    ga.src = ((if "https:" is document.location.protocol then "https://ssl" else "http://www")) + ".google-analytics.com/ga.js"
    s = document.getElementsByTagName("script")[0]
    s.parentNode.insertBefore ga, s

  # if window._gaq?
  #   console.log('do this')
  #   _gaq.push ['_trackPageview']
  # else if window.pageTracker?
  #   console.log('do that')
  #   pageTracker._trackPageview()
  # 