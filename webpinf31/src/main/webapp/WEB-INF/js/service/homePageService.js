app.factory("HomePageService", function($http){
	var searchForm = {};
	return {
	    getDrzave: function(callback) {
			$http.get('api/homepage/drzave').success(callback);
	    },
	    getBanke: function(callback) {
			$http.get('api/homepage/banke').success(callback);
	    }
    };       
});