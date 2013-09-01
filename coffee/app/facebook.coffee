define ["jquery"], ($) ->
  $('body').append '<div id="fb-root"></div>'
  fbsdkload = (d, s, id) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    return  if d.getElementById(id)
    js = d.createElement(s)
    js.id = id
    js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId="+window.App.keys.facebook
    fjs.parentNode.insertBefore js, fjs
  fbsdkload document, "script", "facebook-jssdk"
