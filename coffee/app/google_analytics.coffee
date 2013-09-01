#--- GESTION DE GOOGLE ANALYTICS ---
_gaq = [["_setAccount", window.App.keys.gAnalytics], ["_trackPageview"]]
((d, t) ->
  g = d.createElement(t)
  s = d.getElementsByTagName(t)[0]
  g.async = 1
  g.src = ((if "https:" is location.protocol then "//ssl" else "//www")) + ".google-analytics.com/ga.js"
  s.parentNode.insertBefore g, s
) document, "script"
