var app = angular
            .module("Demo", ["ngRoute"])
            
            .controller("homeController", function ($scope) {
                $scope.message = "Home Page";
            })
            .controller("coursesController", function ($scope) {
                $scope.courses = ["C#", "VB.NET", "ASP.NET", "SQL Server"];
            })
             .controller("studentsController", function ($scope, $http) {
                 $http.get("StudentService.asmx/GetAllStudents")
                                        .then(function (response) {
                                            $scope.students = response.data;
                                        })
             })
             .controller("myController", function($scope) {

	var technologies = [ {
		name : "C#",
		likes : 0,
		dislikes : 0
	}, {
		name : "ASP.NET",
		likes : 0,
		dislikes : 0
	}, {
		name : "SQL",
		likes : 0,
		dislikes : 0
	}, {
		name : "AngularJS",
		likes : 0,
		dislikes : 0
	} ];

	$scope.technologies = technologies;

	$scope.incrementLikes = function(technology) {
		technology.likes++;
	};

	$scope.incrementDislikes = function(technology) {
		technology.dislikes++;
	};
})
.config(function ($routeProvider) {
                $routeProvider
                    .when("/home", {
                        templateUrl: "Templates/home.html",
                        controller: "homeController"
                    })
                    .when("/courses", {
                        templateUrl: "Templates/courses.html",
                        controller: "coursesController"
                    })
                    .when("/students", {
                        templateUrl: "Templates/students.html",
                        controller: "studentsController"
                    })
            })

;