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
                                    <h4 class="card-title">Sowing Planning List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="sowing-details-list" class="table cus-datatable table-striped dt-responsive nowrap w-100">
                                        <thead>
                                            <tr>
                                                <th>LAND ID</th>
                                                <th>TOTAL AREA</th>
                                                <th>ADDRESS/LOCATION</th>
                                                <th>OFFICE NAME</th>
                                                <th>APO NAME</th>
                                                <th>FARMER NAME</th>
                                                <th>MOBILE NO</th>
                                                <th>SEASON</th>
                                                <th>CROP VARIETY</th>
                                                <th>SOWING DATE</th>
                                                <th>EST. HARVEST DATE</th>
                                                <th>ACTION</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="#">LND00001</a></td>
                                                <td>10 DEC</td>
                                                <td>Address of the Land</td>
                                                <td>Rangpur Zonal Office</td>
                                                <td>Name of the Officer</td>
                                                <td>Name of the Farmer</td>
                                                <td>01611111111</td>
                                                <td>KHARIF II 2022</td>
                                                <td>Potato Santana</td>
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
        
        <!--  Extra Large modal example -->
        <div id="addNewSowingDetails" class="modal fade bs-example-modal-xl" data-bs-backdrop="static" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-xl modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myExtraLargeModalLabel">Add Sowing Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    
                    <form id="add-new-farm-details" class="modal-body" method="POST" action="MasterController">
                        <input type="hidden" name="REQ" value="setNewMrDetails" >
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group select2-sm">
                                    <label class="form-label label-sm">Farmer Name : </label>
                                    <select class="form-control GlobalSelect" name="reporting_officer" id="" required>
                                        <option value="">Select Farmer Name</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group select2-sm">
                                    <label class="form-label label-sm">Farm Name : </label>
                                    <select class="form-control GlobalSelect" name="reporting_office" id="" required>
                                        <option value="">Select Farm</option>
                                        <option value="1">FRM00001 - Farm of ABC</option>
                                        <option value="1">FRM00031 - Farm of XYZ</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group select2-sm">
                                    <label class="form-label label-sm">Season Name : </label>
                                    <select class="form-control GlobalSelect" name="reporting_officer" id="" required>
                                        <option value="">Select Season</option>
                                        <option value="1">ROBI 2022</option>
                                        <option value="1">KHARIF I 2022</option>
                                        <option value="1">KHARIF II 2022</option>
                                        <option value="1">ROBI 2023</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr>
                                    
                        <div class="pt-0">
                            <div class="col-md-12">
                                <small class="inputGroupTitle-sm">Farm Crop Informations </small>
                            </div>
                            <table id="farm-crop-info-details" class="table table-striped cus-default-table mb-0">
                                <thead class="table-light">
                                   <tr>
                                      <th style="width: 2%;">SN</th>
                                      <th style="width: 10%;">CROP TYPE</th>
                                      <th style="width: 10%;">CROP NAME</th>
                                      <th style="width: 10%;">VARIETY</th>
                                      <th style="width: 12%;">REMARKS</th>
                                      <th width="3%" class="last-th">
                                        <button type="button" class="btn btn-soft-success btn-sm" onclick="addRow('farm-crop-info-details')"><i class="mdi mdi-plus"></i></button>
                                      </th>
                                   </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><small>1</small></td>
                                        <td class="select2-sm">
                                            <select class="form-control GlobalSelect" name="department_name" style="max-width:100%;">
                                                <option value='Main Crop'>Main Crop</option>
                                                <option value='Inter Crop'>Inter Crop</option>
                                                <option value='Border Crop'>Border Crop</option>
                                            </select>
                                        </td>
                                        <td class="select2-sm">
                                            <select class="form-control GlobalSelect" name="product_code" style="max-width:100%;">
                                                <option value='POTATO'>POTATO</option>
                                                <option value='RICE'>RICE</option>
                                            </select>
                                        </td>
                                        <td class="select2-sm">
                                            <select class="form-control GlobalSelect" name="product_code" style="max-width:100%;">
                                                <option value='Santana'>Santana</option>
                                                <option value='Diamont'>Diamont</option>
                                            </select>
                                        </td>
                                        <td><input class="form-control input-sm default" type="text" name="remarks" value="N/A"></td>
                                        <td class="last-td">
                                            <button type="button" class="btn btn-soft-danger btn-sm" onclick="delRow(this,'farm-crop-info-details')" title="Delete Item"><i class="mdi mdi-trash-can-outline"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <div class="col-md-12">
                                <small class="inputGroupTitle-sm">Farm Other Informations </small>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Date of Sowing : </label>
                                        <input class="form-control input-sm default" type="date" name="remarks" required>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Seed Source : </label>
                                        <select class="form-control GlobalSelect" name="reporting_office" id="" required>
                                            <option value="">Select Farm</option>
                                            <option value="1">Own</option>
                                            <option value="1">Warehouse</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Seed Qty Used(gms) : </label>
                                        <input class="form-control input-sm default" type="text" name="remarks" required>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Estimated Yield(Kgs) : </label>
                                        <input class="form-control input-sm default" type="text" name="remarks" required>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Estimated Purchase(Kgs) : </label>
                                        <input class="form-control input-sm default" type="text" name="remarks" required>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Estimated Harvest Date : </label>
                                        <input class="form-control input-sm default" type="date" name="remarks" readonly>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Row to Row Spacing(Inch) : </label>
                                        <input class="form-control input-sm default" type="text" name="remarks" >
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group select2-sm">
                                        <label class="form-label label-sm">Tuber to Tuber Spacing(Inch) : </label>
                                        <input class="form-control input-sm default" type="text" name="remarks" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row pt-2">
                            <div class="col-lg-12 text-right">
                                <button type="button" class="btn btn-soft-danger" data-bs-dismiss="modal"><i class="mdi mdi-close"></i> CANCEL</button>
                                <button type="submit" class="btn btn-success w-sm waves-effect waves-light"><i class="mdi mdi-content-save-all"></i> SAVE DETAILS</button>
                            </div>                                        
                        </div>
                    </form>
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
            document.title = "Sowing Details List-";
            
            $("#sowing-details-list").DataTable({
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
                        text: '<i class="mdi mdi-layers-plus"></i> Add Sowing Details',
                        className: 'cus-btn-primary',
                        action: function ( e, dt, node, config ) {
                            $('#addNewSowingDetails').modal('show');
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
        
        function addFarmlandSeasonalPlanning(fid){
//            $('#addNewFarmlandPlanningDetails').modal('show');
        }
    </script>
    </body>
</html>