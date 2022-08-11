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
                                    <h4 class="card-title">Farm Input Category Details List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="inp-category-list-details" class="table cus-datatable table-striped dt-responsive nowrap w-100">
                                        <thead>
                                            <tr>
                                                <th>INPUT CAT CODE</th>
                                                <th>INPUT CATEGORY NAME</th>
                                                <th>ACTIONS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>INC001</td>
                                                <td>Decompost</td>
                                                <td class=" dt-body-center">
                                                    <button class="btn btn-soft-primary btn-sm" onclick="editProjectMasterData('120')"><i class="mdi mdi-account-edit-outline"></i></button>
                                                    <button class="btn btn-soft-danger btn-sm" onclick="delSpecificMasterData('delProjectMaster','120')"><i class="mdi mdi-trash-can-outline"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>INC002</td>
                                                <td>Herbicides</td>
                                                <td class=" dt-body-center">
                                                    <button class="btn btn-soft-primary btn-sm" onclick="editProjectMasterData('120')"><i class="mdi mdi-account-edit-outline"></i></button>
                                                    <button class="btn btn-soft-danger btn-sm" onclick="delSpecificMasterData('delProjectMaster','120')"><i class="mdi mdi-trash-can-outline"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>INC003</td>
                                                <td>TRAINING SERVICES</td>
                                                <td class=" dt-body-center">
                                                    <button class="btn btn-soft-primary btn-sm" onclick="editProjectMasterData('120')"><i class="mdi mdi-account-edit-outline"></i></button>
                                                    <button class="btn btn-soft-danger btn-sm" onclick="delSpecificMasterData('delProjectMaster','120')"><i class="mdi mdi-trash-can-outline"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>INC004</td>
                                                <td>AGRI SERVICES</td>
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
        
        <!--  Extra Large modal example -->
        <div id="addNewInpCategoryDetails" class="modal fade bs-example-modal-center" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myExtraLargeModalLabel">Add New Input Category Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    
                    <form class="modal-body" id="AddNewProjectMasterDetails" method="POST" action="PdmController">
                        <input type="hidden" name="REQ" value="setNewProjectMasterDetails" >
                        
                        <div class="row">
                            <div class="col-lg-12 mb-2">
                                <label class="form-label">INPUT CATEGORY NAME</label>
                                <input class="form-control" type="text" name="district_name" value="" required>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer pt-4">
                        <div class="col-lg-12 text-right">
                            <button type="reset" class="btn btn-soft-danger w-md waves-effect waves-light" data-bs-dismiss="modal" aria-label="Close"><i class="mdi mdi-close-box-outline"></i> Cancel</button>
                            <button type="submit" form="AddNewProjectMasterDetails" class="btn btn-success w-lg waves-effect waves-light"><i class="mdi mdi-content-save-all"></i> SAVE DETAILS</button>
                        </div>                                        
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
    </div>
    <!-- END layout-wrapper -->
    
    <!-- Footer page -->
    <%@include file="../footer.jsp" %>
    <!-- Footer Libraries page -->
    <%@include file="../footer_libs.jsp" %>
    <script>
        $(document).ready(function () {
            document.title = "Input Category Master Details-";
            
            $("#inp-category-list-details").DataTable({
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
                    },{
                        text: '<i class="mdi mdi-layers-plus"></i> Add New Input Category',
                        className: 'cus-btn-primary',
                        action: function ( e, dt, node, config ) {
                            $('#addNewInpCategoryDetails').modal('show');
                        }
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