app.controller('planningCtrl', function (serverURL, $scope, $http, NgTableParams, $window, SweetAlert) {

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
        $window.location.href = $scope.urlUI + 'ui/views/login.html';
    };

    $scope.goToLogin = function () {
        $window.location.href = $scope.urlUI + 'ui/views/login.html';
    };
    
    $scope.loadAllLandDetails = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/masterData/getAllLandDetails", config).then(
                function(response){
                    $scope.landList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };
    
    $scope.loadAllContractList = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/contract/getAllContractList", config).then(
                function(response){
                    $scope.contractList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };
    
    $scope.loadAllReportingOfficerList = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/reportingFieldOfficer/getAllActiveReportingFieldOfficer", config).then(
                function(response){
                    $scope.officerList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };
    
    $scope.loadAllReportingOffice = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/reportingOffice/getAllActiveReportingOffice", config).then(
                function(response){
                    $scope.officeList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };
    
    $scope.loadAllFarmerList = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/farmer/getALLActiveFarmer", config).then(
                function(response){
                    $scope.farmerList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };

    $scope.loadInitData = function () {
        $scope.loadAllLandDetails();
        $scope.loadAllContractList();
        $scope.loadAllReportingOfficerList();
        $scope.loadAllReportingOffice();
        $scope.loadAllFarmerList();
    };
    
    $scope.addPlanningDetailClick = function(){
        
    };
    
    $scope.addPlanningDetail = function(pd){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        console.log(pd);
        $http.get($scope.urlServer + "api/planningDetail/addPlanningDetail", $scope.pd, config).then(
            function(response){
                switch(response.data.messageType){
                    case 'success':
                        $scope.message("SUCCESS", response.data.message, "success");
                        $("#addOrEditPlanningDetail").modal("hide");
                        break;
                    case 'error':
                        $scope.message("!ERROR!", response.data.message, "error");
                        break;
                    default:
                        $scope.message("!ERROR!", "Unknwon Error", "error");
                        break;
                }
            },
            function(errResponse){
                console.log(errResponse);
            }
        );
    };

    $scope.updateCropGrade = function (cropGrade) {
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        }

        $http.put($scope.urlServer + "api/masterData/updateCropGrade", cropGrade, config).then(
            function (response) {
                console.log(response);
                switch (response.data.messageType) {
                    case 'success':
                        $scope.message("SUCCESS", response.data.message, "success");
                        $('#addOrEditCropGrade').modal('hide');
                        $scope.loadAllCropCrade();
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
                $('#addOrEditCropGrade').modal('hide');
            }
        );
    }

});