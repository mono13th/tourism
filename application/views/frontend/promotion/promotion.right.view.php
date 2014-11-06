<!-- BEGIN RIGHT SIDEBAR -->            
<div class="col-md-3 col-sm-3 blog-sidebar">

  <!-- BEGIN RECENT NEWS -->                            
  <h2 class="no-top-space ina">Kategori</h2>
  <h2 class="no-top-space eng">Category</h2>
  <div class="recent-news margin-bottom-10">
    <?php
        if( isset( $categories ) and !empty($categories) ):
        
    ?>
    <ul class="nav sidebar-categories margin-bottom-40">
		<?php
			foreach( $categories as $rp ):
		?>
        	<li class="ina">
                <a href="<?php echo base_url();?>frontend/promotion/category/<?php echo $rp->id_kategori_promosi?>/<?php echo SEO($rp->kategori_promosi_ina) ?>">
                <?php echo $rp->kategori_promosi_ina ?>
                </a>
            </li>
            <li class="eng">
                <a href="<?php echo base_url();?>frontend/promotion/category/<?php echo $rp->id_kategori_promosi?>/<?php echo SEO($rp->kategori_promosi_eng) ?>">
                    <?php echo $rp->kategori_promosi_eng ?>
                </a>
            </li>
		<?php
        	endforeach;
		?>
    </ul>
    <?php
        
        else:
    ?>
        <label class="ina"> Data tidak ditemukan</label>
        <label class="eng"> Data not Found</label>
    <?php	
        endif;
    ?>
  </div>
  <!-- END RECENT NEWS -->                            

  <!-- BEGIN BLOG TAGS -->
  <div class="blog-tags margin-bottom-20">
    <h3>Gambar / <em>Image</em></h3>
    <ul>
    <?php
        if( isset($images) and !empty($images) ):
        foreach( $images as $rnt ):
    ?>
      <li>
        <a href="<?php echo base_url() ?>frontend/promotion/detail/<?php echo $rnt->id_promosi ?>" class="ina">
        	<img alt="" src="<?php echo base_url() ?>upload/thumbs/<?php echo $rnt->gambar ?>">
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