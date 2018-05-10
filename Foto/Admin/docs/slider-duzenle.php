        <?php 
        include 'header.php'; 
        include 'data/baglan.php';
        

        $slidersor=$db->prepare("SELECT * from slider where slider_id=:slider_id");
        $slidersor->execute(array(
          'slider_id'=>$_GET['slider_id']
          ));
        $slidercek=$slidersor->fetch(PDO::FETCH_ASSOC);

        ?>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Ayarlar</h3>
              </div>

              <!--<div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Anahtar Kelime">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Ara!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>-->

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="x_panel">
                    <div class="x_title">
                      <div class="col-md-6" align="left">
                        <h2>Slider İşlemleri<small>
                          <?php 
                          if (@$_GET['durum']=='ok') {?>

                          <b style="color:green;">İşlem Başarılı</b>

                          <?php } elseif (@$_GET['durum']=='no') {?>

                          <b style="color:red;">İşlem Başarısız</b>

                          <?php } elseif (@$_GET['durum']=='formathata') {?>

                          <b style="color:red;">İşlem Başarısız (Sadece JPEG ve PNG Uzantılı Dosyaları Yükleyebilirsiniz)</b>

                          <?php } elseif (@$_GET['durum']=='buyuk') {?>

                          <b style="color:red;">Dosya Boyutu Çok Büyük</b>

                          <?php }  ?>
                        </small></h2>
                      </div>
                      <div class="col-md-6" align="right">
                        <a href="slider.php"><button class="btn btn-success"><i class="fa fa-arrow-left" aria-hidden="true"></i> Geri</button></a>
                      </div>
                      
                      <div class="clearfix"></div>
                    </div>

                    <div class="x_content">
                      <form action="data/islem.php" method="POST" enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <input type="hidden" name="slider_id" value="<?php echo $slidercek['slider_id']; ?>">
                      <input type="hidden" name="slider_resimyolu" value="<?php echo $slidercek['slider_resimyolu']; ?>"> <!-- Bir slider eklerken eski çöpü silmek için -->

                      <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Yüklü Resim <span class="required">*</span>
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <img width="200" height="120" src="../../<?php echo $slidercek['slider_resimyolu']; ?>">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Resim Seç <span class="required">*</span>
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="file" id="first-name" name="slider_resimyolu" class="form-control col-md-7 col-xs-12">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Adı <span class="required">*</span>
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="first-name" required="required" name="slider_ad" value="<?php echo $slidercek['slider_ad']; ?>" class="form-control col-md-7 col-xs-12">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Linki <span class="required">*</span>
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="first-name" required="required" name="slider_link" value="<?php echo $slidercek['slider_link']; ?>" class="form-control col-md-7 col-xs-12">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Sırası <span class="required">*</span>
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="first-name" required="required" name="slider_sira" value="<?php echo $slidercek['slider_sira']; ?>" class="form-control col-md-7 col-xs-12">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Durumu <span class="required">*</span>
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <select id="heard" class="form-control" name="slider_durum" required>

                              <?php 
                              if($slidercek['slider_durum']==1) { ?>

                              <option value="1">Aktif</option>
                              <option value="0">Pasif</option>

                              <?php } else {?>
                              <option value="0">Pasif</option>
                              <option value="1">Aktif</option>                                                      
                              <?php } ?>


                            </select>
                          </div>
                        </div>


                        <div align="right" class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" name="sliderduzenle" class="btn btn-primary">Kaydet</button>

                        </div>

                      </form>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <?php include 'footer.php'; ?>
