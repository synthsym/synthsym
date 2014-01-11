'use strict'

### Controllers ###

angular.module('app.controllers', [])

.controller('AppCtrl', [
  '$scope'
  '$location'
  '$resource'
  '$rootScope'

  ($scope, $location, $resource, $rootScope) ->
    $scope.Page = Page
])

.controller('HomeCtrl', [
  '$scope'

  ($scope) ->
    $scope.works = [
      {active: true, title: "Semaphore", desc: "Online Traffic-lighting system to gauge learning effectiveness", screenshot: "'/imgs/semaphore.png'"},
    ]
])

.controller('WorksCtrl', [
  '$scope'

  ($scope) ->
    $scope
    Page.setTitle("Synthsym - Works")
])

.controller('ContribCtrl', [
  '$scope'

  ($scope) ->
    $scope
    Page.setTitle("Synthsym - Contributions")
])