app.controller('districtCtrl', function (serverURL, uiURL, $scope, $http, NgTableParams, $window, SweetAlert) {

    $scope.urlServer = "";
    $scope.urlUI = "";
    $scope.getServerURL = function () {
        var fullURL = window.location.href;
        var arr = fullURL.split("/");
        var protocol = arr[0];

        var hostPort = arr[2].split(":");
        var host = hostPort[0];
        var port = hostPort[1];
        $scope.urlServer = serverURL;//protocol + "//" + host + ":" + "8081" + "/";
    }

    $scope.getUiURL = function () {
        var fullURL = window.location.href;
        var arr = fullURL.split("/");
        var protocol = arr[0];

        var hostPort = arr[2].split(":");
        var host = hostPort[0];
        var port = hostPort[1];
        if (!angular.isUndefined(protocol)) {
            $scope.urlUI += protocol + "//";
        }
        if (!angular.isUndefined(host)) {
            $scope.urlUI += host;
        }
        if (!angular.isUndefined(port)) {
            $scope.urlUI += ":" + port + "/";
        } else {
            $scope.urlUI += "/";
        }
        $scope.urlUI = uiURL;
    }

    $scope.getServerURL();
    $scope.getUiURL();

    $scope.message = function (title, msg, type) {
        SweetAlert.swal(title, msg, type);
    }

    $scope.token = '';
    $scope.userName = '';
    $scope.userRole = '';
    $scope.getJWTToken = function () {

        // console.log($window.sessionStorage.getItem("token"));
        $scope.token = $window.sessionStorage.getItem("token");
        $scope.userName = $window.sessionStorage.getItem("userName");
        $scope.userRole = $window.sessionStorage.getItem("userRole");
        // $scope.loc1 = $location.absurl();
        // console.log($scope.loc1);

    }

    $scope.loadAllDistricts = function () {

        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }
        $http.get($scope.urlServer + "api/masterData/getAllDistrict", config).then(
                function (response) {
                    console.log(response);
                    var data = response.data;
                    $scope.tableParams = new NgTableParams({
                        page: 1, // show first page
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

    $scope.loadAllDivisions = function () {
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }

        $http.get($scope.urlServer + "api/masterData/getAllDivision", config).then(
                function (response) {
                    $scope.divList = response.data;
                },
                function (errResponse) {
                    console.log(errResponse);
                }
        );
    }

    $scope.checkSessionData = function () {
        $scope.getJWTToken();
        if ($scope.token == '' || $scope.userName == '' || $scope.userRole == '' || $scope.token == null || $scope.userName == null || $scope.userRole == null) {
            // console.log("Invalid User Session.");
            $("#invalidSession").modal("show");
        } else {
            $scope.loadInitData();
        }
    }

    $scope.logout = function () {
        $window.sessionStorage.clear();
        $window.location.href = $scope.urlUI + 'index.html';
    }

    $scope.goToLogin = function () {
        $window.location.href = $scope.urlUI + 'index.html';
    }

    $scope.loadInitData = function () {
        $scope.loadAllDistricts();
        $scope.loadAllDivisions();
    }

    $scope.addDistrict = function (dis, div) {
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }

        dis.status = 'active';
        console.log(div);
        
        dis.div = div;

        $http.post($scope.urlServer + "api/masterData/addDistrict", dis, config).then(
                function (response) {
                    console.log(response);
                    switch (response.data.messageType) {
                        case 'success':
                            $scope.message("SUCCESS", response.data.message, "success");
                            $("#addOrEditDistrict").modal("hide");
                            $scope.loadAllDistricts();
                            break;
                        case 'error':
                            $scope.message("!ERROR!", response.data.message, "error");
                            break;
                        default:
                            $scope.message("WARNING", "Unknown Error", "warning");
                            break;
                    }
                },
                function (errResponse) {
                    console.log(errResponse);
                }
        );
    }

    $scope.editDistrict = function (dis) {
        $scope.dis = dis;
    }
    $scope.addDistrictClick = function () {
        $scope.dis = {};
    }

    $scope.updateDistrict = function (dis) {
        
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }

        $http.put($scope.urlServer + "api/masterData/updateDistrict", dis, config).then(
                function (response) {
                    console.log(response);
                    switch (response.data.messageType) {
                        case 'success':
                            $scope.message("SUCCESS", response.data.message, "success");
                            $('#addOrEditDistrict').modal('hide');
                            $scope.loadAllDistricts();
                            break;
                        case 'error':
                            $scope.message("!ERROR!", response.data.message, "error");
                            break;
                        default:
                            $scope.message("WARNING", "Unknown Error", "warning");
                            break;
                    }
                },
                function (errResponse) {
                    $scope.message("!ERROR!", "Unknown Error", "warning");
                    $('#addOrEditDistrict').modal('hide');
                }
        );
    }

});