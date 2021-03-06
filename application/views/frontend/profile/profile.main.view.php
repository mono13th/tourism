<div class="main">
  <div class="container">
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN CONTENT -->
      <div class="col-md-12 col-sm-12">

        <div class="content-page">
          <div class="row">
            <!-- BEGIN LEFT SIDEBAR -->            
            <div class="col-md-9 col-sm-9 blog-posts">
              
              <?php
			  	$attraction = isset($attraction)?$attraction:array();
			  	if( isset($attraction) and !empty($attraction) ):
				foreach( $attraction as $row ):
			  ?>
              <div class="row">
                <div class="col-md-4 col-sm-4">
                  <!-- BEGIN CAROUSEL -->            
                  <div class="front-carousel">
                    <div class="carousel slide" id="myCarousel">
                      <!-- Carousel items -->
                      <?php 
					  	if( !empty($row->gambar) and isset($row->gambar) ):
					  ?>
                      <div class="carousel-inner">
                        <?php
							$no = 0;
                        	foreach( $row->gambar as $rg ):
							$no++;
						?>
                        <div class="item <?php echo $no==1?"active":"" ?>">
                          <img alt="" src="<?php echo base_url() ?>upload/<?php echo $rg->gambar ?>">
                        </div>
                        <?php
                        	endforeach;
						?>
                      </div>
                      <?php 
					  	else:
					  ?>
					  <div class="carousel-inner">
                        <div class="item active">
                          <img alt="" src="<?php echo base_url() ?>upload/No_image_available.png">
                        </div>
                      </div>
                      <?php 
					  	endif;
					  ?>
                      <?php
                      	if( !empty($row->gambar) and isset($row->gambar) and count($row->gambar) > 1 ):
					  ?>
                      <!-- Carousel nav -->
                      <a data-slide="prev" href="#myCarousel" class="carousel-control left">
                        <i class="fa fa-angle-left"></i>
                      </a>
                      <a data-slide="next" href="#myCarousel" class="carousel-control right">
                        <i class="fa fa-angle-right"></i>
                      </a>
                      <?php endif; ?>
                    </div>                
                  </div>
                  <!-- END CAROUSEL -->             
                </div>
                <div class="col-md-8 col-sm-8">
                  <h3>
                      <a href="<?php echo base_url() ?>frontend/profile/location/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_ina) ?>" class="ina">
                      	<?php echo strtoupper($row->nama_lokasi_wisata_ina) ?>
                      </a>
                      <a href="<?php echo base_url() ?>frontend/profile/location/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_eng) ?>" class="eng">
                      	<?php echo strtoupper($row->nama_lokasi_wisata_eng) ?>
                      </a>
                  </h3>
                  <p class="ina">
                  	<?php echo PotongKata($row->deskripsi_ina, 50) ?>
                  </p>
                  <p class="eng">
                  	<?php echo PotongKata($row->deskripsi_eng, 50) ?>
                  </p>
                  <a href="<?php echo base_url() ?>frontend/profile/location/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_ina) ?>" class="ina more">
					Selengkapnya
                  </a>
                  <a href="<?php echo base_url() ?>frontend/profile/location/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_eng) ?>" class="eng more">
                    Read More
                  </a>
                </div>
              </div>
              <hr class="blog-post-sep">
              <?php 
			  	endforeach;
				else:
			  ?>
              	<h4 class="ina">Data tidak ditemukan</h4>
                <h4 class="eng">Data not Found</h4>
              <?php
				endif; 
			  ?>
             <ul class="pagination">
             	<?php echo $paging; ?>
             </ul>              
            </div>
            <!-- END LEFT SIDEBAR -->

            <!-- BEGIN RIGHT SIDEBAR -->            
            <?php $this->load->view("frontend/profile/profile.right.view.php"); ?>
            <!-- END RIGHT SIDEBAR -->            
          </div>
        </div>
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
  </div>
</div>