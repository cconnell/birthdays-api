(function() {
  "use strict";
angular.module("app").controller("peopleCtrl", function($scope, $http){
  
  $scope.setup = function(){
    $http.get('/api/v1/people.json').then(function(response){
    $scope.people = response.data;
    });
    $scope.descending = false;
  };
  $scope.toggleVisible = function(person){
    person.bioVisable = !person.bioVisable
  };

  $scope.addNewPerson = function(newName, newGift, newDescription, newEmail){
    var newPerson = {
      name: newName,
      gift: newGift,
      description: newDescription,
      email: newEmail
    };

    $http.post('/api/v1/people.json', newPerson).then(function(response){
      $scope.people.push(response.data);
    }, function(response){
          $scope.errors = (response.data.errors)
    });
    

  };

    $scope.deletePerson = function(person){
      $scope.people.splice($scope.people.indexOf(person), 1);

    };

    $scope.sortBy = function(sortAttribute){
      if (sortAttribute != $scope.sortByAttribute){

      } else {
        $scope.descending = !$scope.descending;
      }

      $scope.sortByAttribute = sortAttribute; 
    };
    window.scope = $scope;
  });


}());