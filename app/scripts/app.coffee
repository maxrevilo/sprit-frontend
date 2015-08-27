'use strict'

###*
 # @ngdoc overview
 # @name spritApp
 # @description
 # # spritApp
 #
 # Main module of the application.
###
angular
.module 'spritApp', [
    'ngAnimate',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'firebase'
]
.config ($routeProvider) ->
    $routeProvider
        .when '/',
            templateUrl: 'views/main.html'
            controller: 'MainCtrl'
        .when '/about',
            templateUrl: 'views/about.html'
            controller: 'AboutCtrl'
        .when '/my-projects',
            templateUrl: 'views/my-projects.html'
            controller: 'MyProjectsCtrl'
        .when '/project-dashboard/:projectId',
            templateUrl: 'views/project-dashboard.html'
            controller: 'ProjectDashboardCtrl'
        .when '/project/:projectId/module/:moduleId/listener-dashboard/:listenerId',
            templateUrl: 'views/listener-dashboard.html'
            controller: 'ListenerDashboardCtrl'
        .when '/project/:projectId/module/:moduleId/new-listener/',
            templateUrl: 'views/listener-dashboard.html'
            controller: 'NewListenerCtrl'
        .otherwise
            redirectTo: '/'

