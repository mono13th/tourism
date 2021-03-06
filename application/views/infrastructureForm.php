<?php include('header.php'); ?>
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="page-sidebar-menu " data-auto-scroll="true" data-slide-speed="200">
				<?php include('sidebar.php'); ?>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
	</div>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">			
			
			<!-- BEGIN PAGE HEADER-->
			<h3 class="page-title">
			<?php echo $title?> <small><?php echo $small_title?></small>
			</h3>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->	
            
            <div id="InfrastructureForm">		
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN VALIDATION STATES-->
					<div class="portlet box green">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i><?php echo $title?> Form
							</div>							
						</div>
                        
						<div class="portlet-body form">
							<!-- BEGIN FORM-->
							<form action="<?php echo base_url().'index.php/infrastructure/insert_infrastructure';?>" id="form_infrastructure" method="post" class="form-horizontal">
								<div class="form-body">									
									<div class="alert alert-danger display-hide">
										<button class="close" data-close="alert"></button>
										You have some form errors. Please check below.
									</div>
									<div class="alert alert-success display-hide">
										<button class="close" data-close="alert"></button>
										Your form validation is successful!
									</div>
                                    <div class="form-group">
										<label class="control-label col-md-3">Kategori/Category<span class="required">
										* </span>
										</label>
										<div class="col-md-4">
											<select class="form-control select2me" name="cbo_cat">
												<option value="">Please Choose Option</option>
                                                <?php foreach($query_kat as $value){ ?>
												<option value="<?php echo $value["id_kategori_sarana_prasarana"]?>">
												<?php echo $value["kategori_sarana_prasarana_ina"]." / <i>".$value["kategori_sarana_prasarana_eng"]."</i>";?>
                                                </option>
                                                <?php } ?>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3">Title (English) <span class="required">
										* </span>
										</label>
										<div class="col-md-4">
											<input type="text" name="title_eng" data-required="1" class="form-control"/>
										</div>
									</div>
                                    <div class="form-group">
										<label class="control-label col-md-3">Judul (Bahasa) <span class="required">
										* </span>
										</label>
										<div class="col-md-4">
											<input type="text" name="title_ind" data-required="1" class="form-control"/>
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-md-3">Description (English) <span class="required">
										* </span>
										</label>
										<div class="col-md-9">
											<textarea class="wysihtml5 form-control" rows="6" name="desc_eng" data-error-container="#editor1_error"></textarea>
											<div id="editor1_error">
											</div>
										</div>
									</div>
                                    
                                    <div class="form-group">
										<label class="control-label col-md-3">Penjelasan (Bahasa) <span class="required">
										* </span>
										</label>
										<div class="col-md-9">
											<textarea class="wysihtml5 form-control" rows="6" name="desc_ind" data-error-container="#editor1_error"></textarea>
											<div id="editor2_error">
											</div>
										</div>
									</div>
                                    <div class="form-group">
										<label class="control-label col-md-3">Url <span class="required">
										* </span>
										</label>
										<div class="col-md-4">
											<input type="text" name="url" data-required="1" class="form-control"/>
										</div>
									</div>
                                    
                                   <div class="form-group">
										<label class="control-label col-md-3">Map Position <span class="required">
										* </span>
										</label>
										<div class="col-md-4">
											<select class="form-control select2me" name="cbo_map">
												<option value="">Please Choose Option</option>
												
											</select>
										</div>
									</div>
																											
								</div>
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn green" name="submit" id="submit_infra" value="">Submit</button>
											<button type="button" ID="CancelButton" class="btn default">Cancel</button>
										</div>
									</div>
								</div>
							</form>
							<!-- END FORM-->
						</div>
						<!-- END VALIDATION STATES-->
					</div>
				</div>
			</div>
            </div>
            
            
			<!-- END PAGE CONTENT-->
	
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Tourism by SS and co.
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<?php include("jsfile.php"); ?>

</body>
<!-- END BODY -->
</html>