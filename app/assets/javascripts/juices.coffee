# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# signal = "blue"
# switch signal
#   when "red"
#     alert 1
#   when "blue"
#     alert 2

$ ->
  $('h1').css('font-family', 'Impact')

  $('head').append('<style>body {display:none;}')
  $('body').delay(1200).fadeIn(1200)

  $(".slick-item").slick({
    accessibility: true,
    autoplay: true,
    autoplaySpeed: 5000,
    dots: true,
    fade: true,
  })