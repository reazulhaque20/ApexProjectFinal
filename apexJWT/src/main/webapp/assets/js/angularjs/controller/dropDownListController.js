app.controller('dropDownCtrl', function (serverURL, $scope, $http, NgTableParams, $window, SweetAlert) {

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
        if(!angular.isUndefined(protocol)){
            $scope.urlUI += protocol + "//";
        }
        if(!angular.isUndefined(host)){
            $scope.urlUI += host;
        }
        if(!angular.isUndefined(port)){
            $scope.urlUI += ":" + port + "/";
        }else{
            $scope.urlUI += "/";
        }
        $scope.urlUI = serverURL;
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

    $scope.loadAllDropDownList = function () {
        
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }
        $http.get($scope.urlServer + "api/dropdown/getAllDropDownList", config).then(
            function (response) {
                console.log(response);
                var data = response.data;
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
        $scope.loadAllDropDownList();
    }

    $scope.addDropDown = function (dd) {
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }

        dd.status = 'active';
        
        $http.post($scope.urlServer + "api/dropdown/addDropDown", dd, config).then(
            function (response) {
                console.log(response);
                switch (response.data.messageType) {
                    case 'success':
                        $scope.message("SUCCESS", response.data.message, "success");
                        $("#addOrEditDropDown").modal("hide");
                        $scope.loadAllDropDownList();
                        break;
                    case 'error':
                        $scope.message("!ERRRO!", response.data.message, "error");
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

    $scope.editDropDown = function (dd) {
        $scope.dd = dd;
    }
    $scope.addDropDownClick = function(){
        $scope.dd = {};
    }

    $scope.updateDropDown = function (dd) {
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }

        $http.put($scope.urlServer + "api/dropdown/updateDropDown", dd, config).then(
            function (response) {
                console.log(response);
                switch (response.data.messageType) {
                    case 'success':
                        $scope.message("SUCCESS", response.data.message, "success");
                        $('#addOrEditDropDown').modal('hide');
                        $scope.loadAllDropDown();
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
                $('#addOrEditDropDown').modal('hide');
            }
        );
    }

});