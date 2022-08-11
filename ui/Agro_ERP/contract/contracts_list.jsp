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
                                    <h4 class="card-title">Contract Details List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="contracts-details-list" class="table cus-datatable table-striped dt-responsive nowrap w-100">
                                        <thead>
                                            <tr>
                                                <th>CONT ID</th>
                                                <th>FARMER NAME</th>
                                                <th>NATIONAL ID</th>
                                                <th>MOBILE NO</th>
                                                <th>OFFICE NAME</th>
                                                <th>TOTAL LAND</th>
                                                <th>TOTAL AREA</th>
                                                <th>CONTRACT SEASON</th>
                                                <th>APO NAME</th>
                                                <th>ACTIONS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>CNT00001</td>
                                                <td>Name of the Farmer</td>
                                                <td>19900101010101</td>
                                                <td>01700000000</td>
                                                <td>Rangpur Zonal Office</td>
                                                <td>3</td>
                                                <td>150 DEC</td>
                                                <td>KHARIF II 2022, ROBI II 2022, KHARIF I 2023</td>
                                                <td>Name of the Officer</td>
                                                <td class=" dt-body-center">
                                                    <button class="btn btn-soft-primary btn-sm" onclick="editProjectMasterData('120')"><i class="mdi mdi-account-edit-outline"></i></button>
                                                    <button class="btn btn-soft-danger btn-sm" onclick="delSpecificMasterData('delProjectMaster','120')"><i class="mdi mdi-trash-can-outline"></i></button>
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
            document.title = "Contract Details List-";
            
            $("#contracts-details-list").DataTable({
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
    </script>
    </body>
</html>