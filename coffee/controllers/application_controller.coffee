define [
  'controllers/controller', 'views/application_view',
  'controllers/navigation_controller'
], (Controller, ApplicationView, NavigationController, SidebarController) ->
  'use strict'

  class ApplicationController extends Controller
    initialize: ->
      @initApplicationView()
      @initSidebars()

    initApplicationView: ->
      new ApplicationView()

    initSidebars: ->
      new NavigationController()

