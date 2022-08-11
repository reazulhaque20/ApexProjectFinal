app.controller('appliedUserCtrl', function ($scope, $http, NgTableParams) {

    $scope.getAppliedUserData = function () {
        $http.get("http://localhost:8080/api/v1/user/getInactiveUsers").then(
            function (response) {
                console.log(response);
                var data = response.data.userInfoList;
                $scope.tableParams = new NgTableParams({
                    page: 1,            // show first page
                    count: 5           // count per page
                }, {
                    total: data.length, // length of data
                    dataset: data
                });
            },
            function (errResponse) {

            }
        );


    }

    $scope.getAppliedUserData();
});