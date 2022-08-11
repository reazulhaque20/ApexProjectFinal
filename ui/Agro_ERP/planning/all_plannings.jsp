    <!-- Header page -->
    <%@include file="../header.jsp" %>
        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">        
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">All Planning List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="all-planning-details-list" class="table cus-datatable table-striped dt-responsive nowrap w-100">
                                        <thead>
                                            <tr>
                                                <th>LAND ID</th>
                                                <th>CONT ID</th>
                                                <th>TOTAL AREA</th>
                                                <th>OFFICE NAME</th>
                                                <th>APO NAME</th>
                                                <th>FARMER NAME</th>
                                                <th>MOBILE NO</th>
                                                <th>SOWING DATE</th>
                                                <th>HARVEST DATE</th>
                                                <th>ACTION</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="#">LND00001</a></td>
                                                <td>CNT00001</td>
                                                <td>10 DEC</td>
                                                <td>Rangpur Zonal Office</td>
                                                <td>Name of the Officer</td>
                                                <td>Name of the Farmer</td>
                                                <td>01700000000</td>
                                                <td>25 APR 2022</td>
                                                <td>25 APR 2022</td>
                                                <td class=" dt-body-center">
                                                    <button class="btn btn-soft-primary btn-sm" onclick="addFarmlandSeasonalPlanning('120')"><i class="mdi mdi-eye-outline"></i></button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> <!-- end col -->
                    </div> <!-- end row -->
                </div> <!-- container-fluid -->
            </div>
            <!-- End Page-content -->
        </div>
        <!-- end main content-->  
    </div>
    <!-- END layout-wrapper -->
    
    <!-- Footer page -->
    <%@include file="../footer.jsp" %>
    <!-- Footer Libraries page -->
    <%@include file="../footer_libs.jsp" %>
    <script>
        $(document).ready(function () {
            document.title = "All Planning Details List-";
            
            $("#all-planning-details-list").DataTable({
                responsive: true,
                stateSave: true,
                ordering: false,
                pageLength: 15,
                pagingType: "full_numbers",
                dom: 'Bfrtip',
                bDestroy: true,
                buttons: [
                    'pageLength',
                    {
                        extend: 'collection',
                        text: 'Export Data',
                        buttons: [ 'pdfHtml5', 'excelHtml5', 'csvHtml5', 'copyHtml5' ]
                    }
                ],
                lengthMenu: [ [ 15, 50, 200, 300, -1 ], [ '15 Rows', '50 Rows', '200 Rows', '300 Rows', 'Show All Rows' ] ],
                bPaginate: true,
                order: [ 0, 'desc' ]
//                bInfo: true,
//                iDisplayStart:0,
//                bProcessing : true,
//                bServerSide : true,
//                sAjaxSource : "MasterDataListDT",
//                fnServerData: function (sSource, aoData, fnCallback, oSettings) {
//                    aoData.push({ "name": "REQ", "value": "getCompanyMasterList" });
//                    oSettings.jqXHR = $.ajax({
//                        "dataType": 'json',
//                        "type": "POST",
//                        "url": sSource,
//                        "data": aoData,
//                        "success": fnCallback
//                    }); 
//                },
//                sServerMethod : "POST"
            });
        });
        
        function addFarmlandSeasonalPlanning(fid){
//            $('#addNewFarmlandPlanningDetails').modal('show');
        }
    </script>
    </body>
</html>