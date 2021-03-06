<div class="main">
  <div class="container">
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN CONTENT -->
      <div class="col-md-12 col-sm-12">
        <h2>Potensi Wisata / <em>Attraction</em></h2>
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
                      <div class="carousel-inner">
                        <div class="item">
                          <img alt="" src="<?php echo base_url() ?>upload/location/Wakatobi Villas-.jpg">
                        </div>
                        <div class="item">
                          <img alt="" src="<?php echo base_url() ?>upload/location/Wakatobi Villas-.jpg">
                        </div>
                        <div class="item active">
                          <img alt="" src="<?php echo base_url() ?>upload/location/Wakatobi Villas-.jpg">
                        </div>
                      </div>
                      <!-- Carousel nav -->
                      <a data-slide="prev" href="#myCarousel" class="carousel-control left">
                        <i class="fa fa-angle-left"></i>
                      </a>
                      <a data-slide="next" href="#myCarousel" class="carousel-control right">
                        <i class="fa fa-angle-right"></i>
                      </a>
                    </div>                
                  </div>
                  <!-- END CAROUSEL -->             
                </div>
                <div class="col-md-8 col-sm-8">
                  <h3>
                      <a href="<?php echo base_url() ?>frontend/attraction/detail/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_ina) ?>" class="ina">
                      	<?php echo strtoupper($row->nama_lokasi_wisata_ina) ?>
                      </a>
                      <a href="<?php echo base_url() ?>frontend/attraction/detail/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_eng) ?>" class="eng">
                      	<?php echo strtoupper($row->nama_lokasi_wisata_eng) ?>
                      </a>
                  </h3>
                  <p class="ina">
                  	<?php echo PotongKata($row->deskripsi_ina, 50) ?>
                  </p>
                  <p class="eng">
                  	<?php echo PotongKata($row->deskripsi_eng, 50) ?>
                  </p>
                  <a href="<?php echo base_url() ?>frontend/attraction/detail/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_ina) ?>" class="ina more">
					Selengkapnya
                  </a>
                  <a href="<?php echo base_url() ?>frontend/attraction/detail/<?php echo $row->id_lokasi_wisata ?>/<?php echo SEO($row->nama_lokasi_wisata_eng) ?>" class="eng more">
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
            <div class="col-md-3 col-sm-3 blog-sidebar">                           

              <!-- BEGIN BLOG PHOTOS STREAM -->
              <div class="blog-photo-stream margin-bottom-20">
                <h3>Foto-foto / <em>Photos</em></h3>
                <ul class="list-unstyled">
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/people/img5-small.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/works/img1.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/people/img4-large.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/works/img6.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/pics/img1-large.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/pics/img2-large.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/works/img3.jpg"></a></li>
                  <li><a href="#"><img alt="" src="<?php echo base_url() ?>inc/frontend/pages/img/people/img2-large.jpg"></a></li>
                </ul>                    
              </div>
              <!-- END BLOG PHOTOS STREAM -->

           
            </div>
            <!-- END RIGHT SIDEBAR -->            
          </div>
        </div>
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
  </div>
</div>
