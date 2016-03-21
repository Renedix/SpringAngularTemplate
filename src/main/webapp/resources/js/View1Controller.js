(function(){
  
  var app = angular.module("ApplicationName");
  
  var controller = function($scope, $location){
    
    $scope.testData = "View 1 controller test data";
    
  };
  
  app.controller("View1Controller",controller);
  
})();