(function(){
  
  var app = angular.module("ApplicationName");
  
  var controller = function($scope,$location){
    
    $scope.testData = "View 2 controller test data";
    
  };
  
  app.controller("View2Controller",controller);
  
})();