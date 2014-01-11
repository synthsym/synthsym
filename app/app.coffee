'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngResource'
  'ngRoute'
  'ngAnimate'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'ui.bootstrap'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider
    .when('/', {
      templateUrl: '/partials/home.html',
      controller: 'HomeCtrl'
    })
    .when('/works', {
      templateUrl: '/partials/works.html',
      controller: 'WorksCtrl'
    })
    .when('/contrib', {
      templateUrl: '/partials/works.html',
      controller: 'ContribCtrl'
    })

    # Catch all
    .otherwise({redirectTo: '/'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
