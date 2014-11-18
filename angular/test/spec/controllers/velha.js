'use strict';

describe('Controller: VelhaCtrl', function () {

  // load the controller's module
  beforeEach(module('angularApp'));

  var VelhaCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    VelhaCtrl = $controller('VelhaCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
	
});
