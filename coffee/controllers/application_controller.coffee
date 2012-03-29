define [
  'controllers/controller', 'views/application_view',
  'controllers/navigation_controller'
], (Controller, ApplicationView, NavigationController, SidebarController) ->
  'use strict'

  class ApplicationController extends Controller
    initialize: ->
      $.getJSON 'info.json', (data) =>
        @initApplicationView(data.siteName)
        @initSidebars(data.posts)

    initApplicationView: ->
      new ApplicationView()

    initSidebars: ->
      new NavigationController()

