<!-- BEGIN RIGHT SIDEBAR -->            
<div class="col-md-3 col-sm-3 blog-sidebar">                   

  <!-- BEGIN BLOG TAGS -->
  <div class="blog-tags margin-bottom-20">
    <h3>Gambar / <em>Image</em></h3>
    <ul>
    <?php
        if( isset($images) and !empty($images) ):
        foreach( $images as $rnt ):
    ?>
      <li>
        <a href="<?php echo base_url() ?>frontend/tour_packages/detail/<?php echo $rnt->id_paket_wisata ?>" class="ina">
        	<img alt="" src="<?php echo base_url() ?>upload/<?php echo $rnt->gambar ?>">
        </a>
      </li>
    <?php
        endforeach;
        endif;
    ?>
    </ul>
  </div>
  <!-- END BLOG TAGS -->
</div>
<!-- END RIGHT SIDEBAR --> 