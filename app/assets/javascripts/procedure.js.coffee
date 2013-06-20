$(document).ready ->
  $('.proc-names').click (event) ->
    event.preventDefault()
    $(this).find('.proc-stats').slideToggle()