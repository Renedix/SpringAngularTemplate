(function() {

  var app = angular.module("ApplicationName");

  var MainController = function($scope, $location) {

    $scope.navigateToView = function(viewName) {
      $location.path("/" + viewName);
    };


    // Submenu visibility
    var submenuVisibility = [];
    
    $scope.toggleSubmenu = function(submenuName) {
      
      // Hide all other dropdown menus
      if (!submenuVisibility[submenuName]){
        for (var menuItem in submenuVisibility){
            submenuVisibility[menuItem] = false;
        }
      }
      
      // Invert the visibility
      submenuVisibility[submenuName] =!submenuVisibility[submenuName];
    };

    // Called by view to determine whether an item is visible or not
    $scope.submenuHidden = function(submenuName) {
      
      var submenuVisible = submenuVisibility[submenuName];
      
      if (submenuVisible===undefined){
        submenuVisibility[submenuName] = false;
        submenuVisible = submenuVisibility[submenuName];
      }
      
      return submenuVisible;
      
    };

  }

  app.controller("MainController", MainController)

})();