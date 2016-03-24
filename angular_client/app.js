(function(){
  var app = angular.module('rakuten', []);

  app.directive("productListings", ['$http', function($http) {
    return {
      restrict: "A",
      templateUrl: "product-listings.html",
      controller: function() {
        var self = this;
        $http.get("http://localhost:3000/products").success(function(data) {
          self.products = data.products
        });
      },
      controllerAs: "productCtrl"
    };
  }]);
})();
