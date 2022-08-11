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
                                    <h4 class="card-title">Supplier Master Details List</h4>
                                </div>
                                <div class="card-body">
                                    <table id="supplier-list-details" class="table cus-datatable table-striped dt-responsive w-100">
                                        <thead>
                                            <tr>
                                                <th width="4%">CODE</th>
                                                <th width="10%">SHORT NAME</th>
                                                <th width="20%">FULL NAME</th>
                                                <th width="20%">ADDRESS</th>
                                                <th width="9%">PHONE</th>
                                                <th width="14%">EMAIL</th>
                                                <th width="12%">CONTACT PERSON</th>
                                                <th width="5%">EDIT</th>
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
        <div class="modal fade" id="addNewSupplier" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Add New Supplier Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="modal-body row" id="AddNewSupplierDetails" method="POST" action="PdmController">   
                        <input type="hidden" name="REQ" value="setNewSupplierDetails" >   
                        
                        <div class="col-md-12">
                            <div class="col-lg-12 mb-2 select2-sm">
                                <label class="form-label label-sm">SUPPLIER CODE</label>
                                <input class="form-control input-sm" type="text" name="supplier_code" value="7560" required readonly>
                            </div>
                            <div class="col-lg-12 mb-2 select2-sm">
                                <label class="form-label label-sm">SHORT NAME</label>
                                <input class="form-control input-sm" type="text" name="short_name" value="" maxlength="15" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">SUPPLIER FULL NAME</label>
                                <input class="form-control input-sm" type="text" name="full_name" value="" maxlength="80" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">ADDRESS</label>
                                <input class="form-control input-sm" type="text" name="address" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">PHONE</label>
                                <input class="form-control input-sm" type="text" name="phone" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">EMAIL</label>
                                <input class="form-control input-sm" type="text" name="email" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">CONTACT PERSON</label>
                                <input class="form-control input-sm" type="text" name="person" value="" required>
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
              
        <!-- Static Backdrop Modal -->
        <div class="modal fade" id="EditSupplierDetails" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Update Supplier Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="modal-body row" id="UpdateSupplierDetails" method="POST" action="PdmController">   
                        <input type="hidden" name="REQ" value="updateSupplierDetails" >   
                        <input type="hidden" name="supplier_code" id="supplier_code" value="" >   
                        
                        <div class="col-md-12">
                            <div class="col-lg-12 mb-2 select2-sm">
                                <label class="form-label label-sm">SHORT NAME</label>
                                <input class="form-control input-sm" type="text" name="u_short_name" id="u_short_name" value="" maxlength="15" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">SUPPLIER FULL NAME</label>
                                <input class="form-control input-sm" type="text" name="u_full_name" id="u_full_name" value="" maxlength="80" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">ADDRESS</label>
                                <input class="form-control input-sm" type="text" name="u_address" id="u_address" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">PHONE</label>
                                <input class="form-control input-sm" type="text" name="u_phone" id="u_phone" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">EMAIL</label>
                                <input class="form-control input-sm" type="text" name="u_email" id="u_email" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">ATTENTION PERSON</label>
                                <input class="form-control input-sm" type="text" name="u_person" id="u_person" value="" required>
                            </div>
                            <div class="col-lg-12 mb-2">
                                <label class="form-label label-sm">STATUS</label>
                                <select class="form-select form-control" name="u_supplier_status" id="u_supplier_status" required>
                                    <option value="Y">Active</option>
                                    <option value="N">Deleted</option>
                                    <option value="P">Pending</option>
                                </select>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <div class="col-lg-12 text-right">
                            <button type="reset" class="btn btn-soft-danger w-sm waves-effect waves-light" data-bs-dismiss="modal" aria-label="Close"><i class="mdi mdi-close-box-outline"></i> CANCEL</button>
                            <button type="submit" form="UpdateSupplierDetails" class="btn btn-warning w-sm waves-effect waves-light"><i class="mdi mdi-cash-check"></i> UPDATE DETAILS</button>
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
            document.title = "Supplier Master Details-";
            
            $("#supplier-list-details").DataTable({
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
                        text: '<i class="mdi mdi-layers-plus"></i> Add New Supplier',
                        className: 'cus-btn-primary',
                        action: function ( e, dt, node, config ) {
                            $('#addNewSupplier').modal('show');
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