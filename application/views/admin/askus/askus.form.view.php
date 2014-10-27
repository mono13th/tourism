<?php
$askus = (isset($askus)?$askus:array());
$id_tanya_kami = isset( $askus[0]->id_tanya_kami )?$askus[0]->id_tanya_kami:0;
$email = isset( $askus[0]->email )?$askus[0]->email:"";
$pertanyaan = isset( $askus[0]->pertanyaan )?$askus[0]->pertanyaan:"";
?>
<!-- BEGIN VALIDATION STATES-->
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>Form Jawaban /<em>Answering Form</em>
        </div>							
    </div>
    
    <div class="portlet-body form">
        <!-- BEGIN FORM-->
        <form action="<?php echo base_url() ?>admin/askus/save" method="post" id="TanyaKami" class="form-horizontal">
        <input type="hidden" name="id_tanya_kami" value="<?php echo $id_tanya_kami ?>" />
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
                    <label class="control-label col-md-3">Alamat Surel Pengirim / <em>Email Sender</em>
                    </label>
                    <div class="col-md-4">
                        <input type="text" name="email" data-required="1" class="form-control" readonly placeholder="<?php echo $email; ?>"/>
                    </div>
                </div>                                    
                
                <div class="form-group">
                    <label class="control-label col-md-3">Pertanyaan / <em>Question</em>
                    </label>
                    <div class="col-md-9">
                        <textarea class="form-control" rows="6" id="pertanyaan" name="pertanyaan" data-error-container="#editor1_error" readonly placeholder="<?php echo $pertanyaan; ?>"></textarea>
                        <div id="editor1_error">
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="control-label col-md-3">Jawaban / <em>Answer</em> <span class="required">
                    * </span>
                    </label>
                    <div class="col-md-9">
                        <textarea class="ckeditor form-control" id="jawaban" rows="6" name="jawaban" data-error-container="#editor2_error"></textarea>
                        <div id="editor2_error">
                        </div>
                    </div>
                </div>                                    
                                                                                        
            </div>
            <div class="form-actions">
                <div class="row">
                    <div class="col-md-offset-3 col-md-9">
                        <button type="submit" name="submit" id="submit_askus" class="btn green">Submit</button>
                        <button type="button" ID="CancelButton" class="btn default">Cancel</button>
                    </div>
                </div>
            </div>
        </form>
        <!-- END FORM-->
    </div>
    <!-- END VALIDATION STATES-->
<script>    
    $("#CancelButton").click(function(e) {
        location.href = "<?php echo base_url() ?>admin/askus"
    });
</script>