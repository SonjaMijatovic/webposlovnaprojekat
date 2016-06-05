<%@ include file="/WEB-INF/jsp/libs/tagLibs.jsp"%>

<div>
home page

<div ng-app="myApp" ng-controller="myCtrl">

<br>
Name: {{name.name}}

<h1>{{suc}}</h1>
<br>
{{text}}
</div>

<a href="<c:url value="/search"/>">link ka search-u</a>
</div>

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	
	$http.get('search').success(function(response) {
		$scope.suc = "success";
		$scope.name = response.data;
	})
	
	/*$http({
		  method: 'GET', 
		  url: "homepage",
		  headers: {'Content-Type': 'application/json'}
		  }).then(function(response) {
		$scope.suc = "success";
		$scope.name = response.data;
		$scope.text = response.statusText;
	}, function() {
		$scope.suc = "no-success";
	});*/
	
});
</script>