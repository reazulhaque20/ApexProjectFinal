app.controller('sowingCtrl', function (serverURL, $scope, $http, NgTableParams, $window, SweetAlert) {

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
    
    $scope.loadAllPlanningDetail = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        
        $http.get($scope.urlServer + "api/planningDetail/getAllPlanningDetail", config).then(
                function(response){
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
                function(errResponse){
                    console.log(errResponse);
                }
        );
    }


    
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
    
    $scope.loadAllFarmDetail = function(){
         var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/farmDetail/getAllFarmDetail", config).then(
                function(response){
                    $scope.farmDetailList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };
    
    $scope.loadAllSeasonList = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.get($scope.urlServer + "api/masterData/getAllActiveSeasonList", config).then(
                function(response){
                    $scope.seasonList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };
    
    $scope.loadAllCropList = function(){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        
        $http.get($scope.urlServer + "api/masterData/getAllActiveCrops", config).then(
            function(response){
                $scope.cropList = response.data;
            },
            function(errResponse){
                console.log(errResponse);
            }
        );
    };
    
    $scope.loadCropVarietyByCropName = function(crop){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        
        $http.get($scope.urlServer + "api/masterData/getCropVarietyByCropName/"+crop.cropName, config).then(
                function(response){
                    $scope.varietyList = response.data;
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };

    $scope.loadInitData = function () {
        $scope.loadAllFarmerList();
        $scope.loadAllFarmDetail();
        $scope.loadAllSeasonList();
        $scope.loadAllCropList();
    };
    
    $scope.addPlanningDetailClick = function(){
        $scope.pd = "";
    };
    
    $scope.planningCrops = [];
    
    $scope.addPlanningCrop = function(planningCrop){
        $scope.planningCrops.push(planningCrop);
        $scope.pc = "";
    };
    
    $scope.removeRow = function(index){
        var name = $scope.planningCrops[index].crop.cropName;
        if ($window.confirm("Do you want to delete: " + name)) {
            $scope.planningCrops.splice(index, 1);
        }
    };
    
    $scope.addSowingDetail = function(sw){
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        
        console.log(pd);
        $http.post($scope.urlServer + "api/planningDetail/addPlanningDetail", $scope.pd, config).then(
            function(response){
                switch(response.data.messageType){
                    case 'success':
                        $scope.message("SUCCESS", response.data.message, "success");
                        $("#addOrEditPlanningDetail").modal("hide");
                        $scope.pd = "";
                        $scope.loadAllPlanningDetail();
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

    $scope.editPlanningDetail = function(pd){
        $scope.pd = pd;
        $scope.pd.sowingDate = new Date(pd.sowingDate);
        $scope.pd.harvestDate = new Date(pd.harvestDate);
    };
    
    $scope.updatePlanningDetail = function(pd){
        $scope.pd = pd;
        var config = {
            headers: {
                'NO-AUTH': 'True',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + $scope.token
            }
        };
        $http.put($scope.urlServer + "api/planningDetail/updatePlaningDetail", $scope.pd, config).then(
                function(response){
                    switch(response.data.messageType){
                        case "success":
                            $scope.message("SUCCESS", response.data.message, "success");
                            $("#addOrEditPlanningDetail").modal('hide');
                            $scope.pd = "";
                            $scope.loadAllPlanningDetail();
                            break;
                        case "error":
                            $scope.message("!ERROR!", response.data.message, "error");
                            break;
                        default:
                            $scope.message("!ERROR!", "Ünknown Error", "error");
                            break;
                    }
                },
                function(errResponse){
                    console.log(errResponse);
                }
        );
    };

});