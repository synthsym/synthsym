'use strict'

### Sevices ###

angular.module('app.services', [])

.factory('Page', function(){
  var title = 'Synthsym';
  return {
    title: function() { return title; },
    setTitle: function(newTitle) { tit
