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
                                    <h4 class="card-title">Crop Variety Details List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="crop-variety-list-details" class="table cus-datatable table-striped dt-responsive nowrap w-100">
                                        <thead>
                                            <tr>
                                                <th>CROP CODE</th>
                                                <th>CROP NAME</th>
                                                <th>VARIETY NAME</th>
                                                <th>CROP CYCLE(DAYS)</th>
                                                <th>EXPECTED YIELD(KGS)/DCE.</th>
                                                <th>INITIAL HARVEST(DAYS)</th>
                                                <th>ACTIONS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>CPV001</td>
                                                <td>Potato</td>
                                                <td>Potato Santana</td>
                                                <td>90</td>
                                                <td>250 Kgs</td>
                                                <td>90</td>
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
        <div id="addNewCropVarietyDetails" class="modal fade bs-example-modal-center" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myExtraLargeModalLabel">Add New Crop Variety Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    
                    <form class="modal-body" id="AddNewProjectMasterDetails" method="POST" action="PdmController">
                        <input type="hidden" name="REQ" value="setNewProjectMasterDetails" >
                        
                        <div class="row">
                            <div class="col-lg-12 mb-2">
                                <label class="form-label">CROP NAME</label>
                                <select class="form-select form-control GlobalSelect" data-trigger name="division_name" required>
                                    <option value=''>Select Crop Name</option>
                                    <option value='26'>Potato</option>
                                    <option value='27'>Paddy</option>
                                </select>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label">CROP CYCLE(DAYS)</label>
                                <input class="form-control" type="text" name="district_name" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label">EXPECTED YIELD(KGS)/DCEIMAL</label>
                                <input class="form-control number" type="text" name="district_name" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label">INITIAL HARVEST(DAYS)</label>
                                <input class="form-control number" type="text" name="district_name" value="" required>
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
            document.title = "Crop Variery Master Details-";
            
            $("#crop-variety-list-details").DataTable({
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
                        text: '<i class="mdi mdi-layers-plus"></i> Add New Crop Variety',
                        className: 'cus-btn-primary',
                        action: function ( e, dt, node, config ) {
                            $('#addNewCropVarietyDetails').modal('show');
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