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
          $('li', elem).each((k, li) ->
            $li = angular.element(li)
            $a = angular.element($li.children()[0])
            regexp = new RegExp(newVal + "$", ['i'])
            if regexp.test($a.attr('href'))
              $li.addClass('active')
            else
              $li.removeClass('active')
          )
        )
    }
])
