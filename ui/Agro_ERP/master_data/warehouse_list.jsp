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
                                    <h4 class="card-title">Warehouse Details List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="warehouse-list-details" class="table cus-datatable table-striped dt-responsive w-100">
                                        <thead>
                                            <tr>
                                                <th width="4%">CODE</th>
                                                <th width="15%">WAREHOUSE NAME</th>
                                                <th width="20%">ADDRESS</th>
                                                <th width="12%">LOCATION</th>
                                                <th width="12%">IN-CHARGE NAME</th>
                                                <th width="8%">CAPACITY(TONNES)</th>
                                                <th width="6%">ACTIONS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
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
                      
        <!-- Static Backdrop Modal -->
        <div class="modal fade" id="addNewWarehouseDetails" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Add New Warehouse Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="modal-body row" id="AddNewSupplierDetails" method="POST" action="PdmController">   
                        <input type="hidden" name="REQ" value="setNewSupplierDetails" >   
                        
                        <div class="col-md-12">
                            <div class="col-lg-12 mb-2 select2-sm">
                                <label class="form-label label-sm">WAREHOUSE CODE</label>
                                <input class="form-control input-sm" type="text" name="supplier_code" value="WHE0001" required readonly>
                            </div>
                            <div class="col-lg-12 mb-2 select2-sm">
                                <label class="form-label label-sm">WAREHOUSE NAME</label>
                                <input class="form-control input-sm" type="text" name="short_name" value="" maxlength="15" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">ADDRESS</label>
                                <input class="form-control input-sm" type="text" name="full_name" value="" maxlength="80" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">IN-CHARGE NAME</label>
                                <input class="form-control input-sm" type="text" name="address" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">CAPACITY(TONNES)</label>
                                <input class="form-control input-sm" type="text" name="phone" value="" required>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <div class="col-lg-12 text-right">
                            <button type="reset" class="btn btn-soft-danger w-sm waves-effect waves-light" data-bs-dismiss="modal" aria-label="Close"><i class="mdi mdi-close-box-outline"></i> CANCEL</button>
                            <button type="submit" form="AddNewSupplierDetails" class="btn btn-success w-sm waves-effect waves-light"><i class="mdi mdi-cash-check"></i> SEND REQUEST</button>
                        </div>                                        
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <!-- END layout-wrapper -->
    
    <!-- Footer page -->
    <%@include file="../footer.jsp" %>
    <!-- Footer Libraries page -->
    <%@include file="../footer_libs.jsp" %>
    <script>
        $(document).ready(function () {
            document.title = "Warehouse Master Details-";
            
            $("#warehouse-list-details").DataTable({
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
                        text: '<i class="mdi mdi-layers-plus"></i> Add New Warehouse',
                        className: 'cus-btn-primary',
                        action: function ( e, dt, node, config ) {
                            $('#addNewWarehouseDetails').modal('show');
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