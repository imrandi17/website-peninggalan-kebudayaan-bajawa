<?php require_once("controller/visitor.php");
$_SESSION["peninggalan_kebudayaan_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php"); ?>

<div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title white-color">Galeri</h1>
          </div>
          <div class="ltn__breadcrumb-list">
            <ul>
              <li><a href="./">Beranda</a></li>
              <li>Galeri</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__gallery-area mb-120">
  <div class="container">
    <div class="ltn__gallery-active row ltn__gallery-style-2 ltn__gallery-info-hide---">
      <div class="ltn__gallery-sizer col-1"></div>
      <?php foreach ($view_galeri as $data) { ?>
        <div class="ltn__gallery-item filter_category_3 col-lg-4 col-sm-6 col-12">
          <div class="ltn__gallery-item-inner">
            <div class="ltn__gallery-item-img">
              <a href="assets/img/galeri/<?= $data['image_galeri'] ?>" data-rel="lightcase:myCollection">
                <img src="assets/img/galeri/<?= $data['image_galeri'] ?>" style="width: 100%; height: 250px; object-fit: cover;" alt="Image">
                <span class="ltn__gallery-action-icon">
                  <i class="fas fa-search"></i>
                </span>
              </a>
            </div>
            <div class="ltn__gallery-item-info">
              <?php
              $id_tipe_fitur = $data['id_tipe_fitur'];
              $id_fitur = $data['id_fitur'];
             if ($id_tipe_fitur == 2) {
                $tempat_kebudayaan = "SELECT * FROM tempat_kebudayaan WHERE id_tempat_kebudayaan='$id_fitur'";
                $data_tempat_kebudayaan = mysqli_query($conn, $tempat_kebudayaan);
                $data = mysqli_fetch_assoc($data_tempat_kebudayaan); ?>
                <h4><?= $data['nama_kebudayaan'] ?></h4>
              <?php } ?>
            </div>
          </div>
        </div>
      <?php } ?>
    </div>
  </div>
</div>

<?php require_once("templates/bottom.php"); ?>