define [
  'controllers/controller', 'views/application_view',
  'controllers/navigation_controller'
], (Controller, ApplicationView, NavigationController, SidebarController) ->
  'use strict'

  class ApplicationController extends Controller
    initialize: ->
      $.getJSON 'info.json', (data) =>
        @siteTitle = data.siteTitle
        @posts = data.posts
        @initApplicationView()
        @initSidebars()

    initApplicationView: () ->
      new ApplicationView(@siteTitle)

    initSidebars: ->
      new NavigationController()

