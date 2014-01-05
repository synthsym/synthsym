'use strict'

### Directives ###

# register the module with Angular
angular.module('app.directives', [
  # require the 'app.service' module
  'app.services'
])

.directive('navBar', [
  '$location'
  ($location) ->
    {
      restrict: 'A'
      link: (scope, elem, attrs) ->
        scope.$watch((-> $location.path()), (newVal, oldVal) ->
          $('a', elem).each((k, a) ->
            $a = angular.element(a)
            regexp = new RegExp('^' + newVal + "$", ['i'])
            if regexp.test($a.attr('href'))
              $a.addClass('active')
            else
              $a.removeClass('active')
          )
        )
    }
])
