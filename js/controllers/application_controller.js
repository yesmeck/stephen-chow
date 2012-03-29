var __hasProp = Object.prototype.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

define(['controllers/controller', 'views/application_view', 'controllers/navigation_controller'], function(Controller, ApplicationView, NavigationController, SidebarController) {
  'use strict';
  var ApplicationController;
  return ApplicationController = (function(_super) {

    __extends(ApplicationController, _super);

    function ApplicationController() {
      ApplicationController.__super__.constructor.apply(this, arguments);
    }

    ApplicationController.prototype.initialize = function() {
      var _this = this;
      return $.getJSON('info.json', function(data) {
        _this.siteTitle = data.siteTitle;
        _this.posts = data.posts;
        _this.initApplicationView();
        return _this.initSidebars();
      });
    };

    ApplicationController.prototype.initApplicationView = function() {
      return new ApplicationView(this.siteTitle);
    };

    ApplicationController.prototype.initSidebars = function() {
      return new NavigationController();
    };

    return ApplicationController;

  })(Controller);
});
