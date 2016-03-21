(function(){
  
  var app = angular.module("ApplicationName", ["ngRoute","ngAnimate"]);
  
  app.config(function($routeProvider) {
    $routeProvider
      .when("/View1", {
        templateUrl: "view1",
        controller: "View1Controller"
      })
      .when("/View2", {
        templateUrl: "view2",
        controller: "View2Controller"
      })
      .otherwise({
        redirectTo: "/View1"
      });
  });
  
  
})();