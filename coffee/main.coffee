#Global App Namespace
App = App || {}
window.App = App
App.Config      || (App.Config = {})
App.Models      || (App.Models = {})
App.Collections || (App.Collections = {})
App.Routers     || (App.Routers = {})
App.Views       || (App.Views = {})
App.Templates   || (App.Templates = {})

#Application instance
window.app = window.app || {}

#Load Configura tion Pass
require ["config"], ->
  # Load our app module and pass it to our definition function

  # Some plugins have to be loaded in order due to their non AMD compliance
  # Because these scripts are not "modules" they do not pass any values to the definition function below
  require ["app/app"], (init) ->
    # The "app" dependency is passed in as "App"
    # Again, the other dependencies passed in are not "AMD" therefore don't pass a parameter to this function
    init.call()