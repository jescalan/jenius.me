$ ->

  # if you are using a bad browser, you don't get nice things
  if not Modernizr.inlinesvg
    $('link[rel=stylesheet], img').remove()
    $('body').prepend("<div class='upgrade'>To see a modern version of this website, please upgrade to a <a href='http://google.com/chrome'>modern browser</a>.</div>")
    return

  # smooth page transition
  $('#index nav a').on 'click', ->
    if Modernizr.cssanimations
      $('body').css('overflow', 'hidden')
      $('nav a').parent().addClass('out')
      $('header').addClass('out')
      setTimeout (=> window.location.href = $(@).attr('href')), 800
      false
