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
                                    <h4 class="card-title">New Contract Details</h4>
                                </div>
                                <div class="card-body">
                                    <form id="setNewFarmerDetails" class="form-horizontal row" method="POST" action="GlobalController" enctype="multipart/form-data">
                                        <input type="hidden" name="REQ" value="addNewFarmerDetails">

                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group select2-sm">
                                                        <label class="form-label label-sm">Select Farmer Name : </label>
                                                        <select name="zone_name" id="zone_name" class="form-control GlobalSelect" required>
                                                            <option value="">Select Farmer Name</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group select2-sm">
                                                        <label class="form-label label-sm">Reporting Office Name : </label>
                                                        <select name="reporting_office" id="reporting_office" class="form-control GlobalSelect" required>
                                                            <option value="">Select Office Name</option>
                                                            <option value="1">CORPORATE OFFICES</option>
                                                        </select>
                                                    </div>
                                                </div>
<!--                                                <div class="col-md-6">
                                                    <div class="form-group select2-sm">
                                                        <label class="form-label label-sm">Contract Seasons : </label>
                                                        <select name="reporting_officer" id="reporting_officer" class="form-control GlobalSelect" required>
                                                            <option value="">Select Seasons Name</option>
                                                        </select>
                                                    </div>
                                                </div>-->
                                                <div class="col-md-3">
                                                    <div class="form-group select2-sm">
                                                        <label class="form-label label-sm">Reporting Field Officer : </label>
                                                        <select name="reporting_officer" id="reporting_officer" class="form-control GlobalSelect" required>
                                                            <option value="">Select Field Officer</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group select2-sm">
                                                        <label class="form-label label-sm">Warehouse Name : </label>
                                                        <select name="reporting_officer" id="warehouse_name" class="form-control GlobalSelect" required>
                                                            <option value="">Select Warehouse</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="row mt-2">
                                                <div class="col-md-12">
                                                    <small class="inputGroupTitle-sm">Contract Season Details </small>
                                                </div>
                                                <div class="col-md-12">
                                                    <table id="new-contract-crop-details" class="table table-bordered">
                                                      <thead>
                                                        <tr>
                                                          <th width="3%">SN</th>
                                                          <th width="10%">LAND ID</th>
                                                          <th width="8%">LAND AREA</th>
                                                          <th width="20%">SEASON NAME</th>
                                                          <th width="20%">CROP NAME</th>
                                                          <th width="20%">CROP VARIETY</th>
                                                          <th width="5%"><a href="javascript:void()" class="btn btn-outline-success btn-sm" onclick="addRow('new-contract-crop-details')"><i class="mdi mdi-plus"></i></a></th>
                                                        </tr>
                                                      </thead>
                                                      <tbody>
                                                            <tr>
                                                              <td><small>1</small></td>
                                                              <td><input type="text" class="form-control upper" name="member_name" value="LND0050" required readonly></td>
                                                              <td><input type="text" class="form-control number" name="member_contact" value="30 DEC" readonly></td>
                                                              <td>                                                        
                                                                <select name="reporting_office" class="form-control GlobalSelect SeasonName"  style="min-width:100%; max-width:100%;" required>
                                                                    <option value="">Select Season</option>
                                                                    <option value="1">KHARIF II 2022</option>
                                                                    <option value="1">ROBI I 2022</option>
                                                                    <option value="1">ROBI II 2022</option>
                                                                </select>
                                                              </td>
                                                              <td>                                                        
                                                                <select name="reporting_office" class="form-control GlobalSelect CropName"  style="min-width:100%; max-width:100%;" required>
                                                                    <option value="">Select Crop</option>
                                                                    <option value="1">POTATO </option>
                                                                    <option value="1">POTATO </option>
                                                                    <option value="1">POTATO </option>
                                                                </select>
                                                              </td>
                                                              <td>                                                        
                                                                <select name="reporting_office" class="form-control GlobalSelect VarietyName"  style="min-width:100%; max-width:100%;" required>
                                                                    <option value="">Select Crop Variety</option>
                                                                    <option value="1">SANTANA</option>
                                                                    <option value="1">APEX</option>
                                                                    <option value="1">OTHERS</option>
                                                                </select>
                                                              </td>
                                                              <td><a href="javascript:void()" class="btn btn-outline-danger btn-sm" onclick="delRow(this,'new-contract-crop-details')"><i class="mdi mdi-minus"></i></a></td>
                                                            </tr>
                                                      </tbody>
                                                    </table>
                                                </div>  
                                            </div>
                                            
                                            <div class="row mt-2">
                                                <div class="col-md-12">
                                                    <small class="inputGroupTitle-sm">Contract Input Details </small>
                                                </div>
                                                <div class="col-md-12">
                                                    <table id="new-contract-input-details" class="table table-bordered">
                                                      <thead>
                                                        <tr>
                                                          <th width="3%">SN</th>
                                                          <th width="12%">INPUT CATEGORY</th>
                                                          <th width="15%">PRODUCT NAME</th>
                                                          <th width="9%">STOCK QTY</th>
                                                          <th width="7%">UNIT</th>
                                                          <th width="7%">PRICE</th>
                                                          <th width="12%">DISTRIBUTION QTY</th>
                                                          <th width="10%">SUB TOTAL</th>
                                                          <th width="5%"><a href="javascript:void()" class="btn btn-outline-success btn-sm" onclick="addRow('new-contract-input-details')"><i class="mdi mdi-plus"></i></a></th>
                                                        </tr>
                                                      </thead>
                                                      <tbody>
                                                            <tr>
                                                              <td><small>1</small></td>
                                                              <td>                                                        
                                                                <select name="reporting_office" class="form-control GlobalSelect SeasonName"  style="min-width:100%; max-width:100%;" required>
                                                                    <option value="">Select Category</option>
                                                                    <option value="1">Category 001</option>
                                                                    <option value="1">Category 002</option>
                                                                    <option value="1">Category 003</option>
                                                                </select>
                                                              </td>
                                                              <td>                                                        
                                                                <select name="reporting_office" class="form-control GlobalSelect CropName"  style="min-width:100%; max-width:100%;" required>
                                                                    <option value="">Select Crop</option>
                                                                    <option value="1">POTATO </option>
                                                                    <option value="1">POTATO </option>
                                                                    <option value="1">POTATO </option>
                                                                </select>
                                                              </td>
                                                              <td><input type="text" class="form-control number" name="member_contact" value=""></td>
                                                              <td><input type="text" class="form-control number" name="member_contact" value=""></td>
                                                              <td><input type="text" class="form-control number" name="member_contact" value=""></td>
                                                              <td><input type="text" class="form-control number" name="member_contact" value=""></td>
                                                              <td><input type="text" class="form-control number" name="member_contact" value=""></td>
                                                              <td><a href="javascript:void()" class="btn btn-outline-danger btn-sm" onclick="delRow(this,'new-contract-input-details')"><i class="mdi mdi-minus"></i></a></td>
                                                            </tr>
                                                      </tbody>
                                                    </table>
                                                </div>  
                                            </div>
                                            
                                            <div class="row mt-2 mb-3">
                                                <div class="col-md-12">
                                                    <small class="inputGroupTitle-sm">Payment Details </small>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-group select2-sm">
                                                                <label class="form-label label-sm">Total Amount : </label>
                                                                <input type="text" class="form-control number" name="member_contact" value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group select2-sm">
                                                                <label class="form-label label-sm">Payment Amount : </label>
                                                                <input type="text" class="form-control number" name="member_contact" value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group select2-sm">
                                                                <label class="form-label label-sm">Loan Amount : </label>
                                                                <input type="text" class="form-control number" name="member_contact" value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group select2-sm">
                                                                <label class="form-label label-sm">Total Due Amount : </label>
                                                                <input type="text" class="form-control number" name="member_contact" value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>  
                                            </div>
                                            
                                            <div class="col-lg-12 text-right">
                                                <button type="button" class="btn btn-soft-danger" data-bs-dismiss="modal"><i class="mdi mdi-close"></i> CANCEL</button>
                                                <button type="submit" class="btn btn-success w-sm waves-effect waves-light"><i class="mdi mdi-content-save-all"></i> SAVE DETAILS</button>
                                            </div>       
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- end cardaa -->
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
            document.title = "Farmers Enrollment Details-";
        });
    </script>
    </body>
</html>