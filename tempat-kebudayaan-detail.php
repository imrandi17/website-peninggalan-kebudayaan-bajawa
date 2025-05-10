<?php require_once("controller/visitor.php");
$_SESSION["peninggalan_kebudayaan_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: tempat-kebudayaan");
  exit;
} else {
  $id_tempat_kebudayaan = valid($conn, $_GET['post']);
  $tempat_kebudayaan_detail = "SELECT * FROM tempat_kebudayaan WHERE id_tempat_kebudayaan='$id_tempat_kebudayaan'";
  $view_tempat_kebudayaan_detail = mysqli_query($conn, $tempat_kebudayaan_detail);
  $data = mysqli_fetch_assoc($view_tempat_kebudayaan_detail);
  $sql = "UPDATE tempat_kebudayaan SET pembaca = pembaca + 1 WHERE id_tempat_kebudayaan = '$id_tempat_kebudayaan'";
  mysqli_query($conn, $sql);
?>

  <div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
            <div class="section-title-area ltn__section-title-2">
              <h1 class="section-title white-color">Kebudayaan <?= $data['nama_kebudayaan'] ?></h1>
            </div>
            <div class="ltn__breadcrumb-list">
              <ul>
                <li><a href="./">Beranda</a></li>
                <li><a href="tempat-kebudayaan">Tempat Kebudayaan</a></li>
                <li>Tempat Kebudayaan <?= $data['nama_kebudayaan'] ?></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="ltn__page-details-area ltn__blog-details-area mb-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="ltn__blog-details-wrap">
            <div class="ltn__page-details-inner ltn__blog-details-inner">
              <div class="ltn__blog-meta">
                <div class="ltn__blog-img">
                  <img src="assets/img/wisata/<?= $data['image_kebudayaan'] ?>" alt="">
                </div>
              </div>
              <h2 class="ltn__blog-title"><?= $data['nama_kebudayaan'] ?></h2>
              <div class="ltn__blog-meta">
                <ul>
                  <li class="ltn__blog-author">
                    <a href="#">Oleh: <?= $data['author'] ?></a>
                  </li>
                  <li class="ltn__blog-date">
                    <i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                        echo date_format($date, "d M Y - h:i a"); ?>
                  </li>
                </ul>
              </div>
              <?= $data['deskripsi'] ?>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <aside class="sidebar-area blog-sidebar ltn__right-sidebar">
            <!-- Popular Post Widget -->
            <div class="widget ltn__popular-post-widget">
              <h4 class="ltn__widget-title ltn__widget-title-border">Tempat Kebudayaan Lainnya</h4>
              <ul>
                <?php
                $tempat_kebudayaan = "SELECT * FROM tempat_kebudayaan WHERE id_tempat_kebudayaan!='$data[id_tempat_kebudayaan]' ORDER BY id_tempat_kebudayaan DESC LIMIT 50";
                $view_tempat_kebudayaan = mysqli_query($conn, $tempat_kebudayaan);
                foreach ($view_tempat_kebudayaan as $data) { ?>
                  <li>
                    <div class="popular-post-widget-item clearfix">
                      <div class="popular-post-widget-img">
                        <a href="tempat-kebudayaan-detail?post=<?= $data['id_tempat_kebudayaan'] ?>"><img src="assets/img/wisata/<?= $data['image_kebudayaan'] ?>" class="rounded-0" style="width: 60px; height: 60px; object-fit: cover;" alt="#"></a>
                      </div>
                      <div class="popular-post-widget-brief">
                        <h6><a href="tempat-kebudayaan-detail?post=<?= $data['id_tempat_kebudayaan'] ?>"><?= $data['nama_kebudayaan'] ?></a></h6>
                        <div class="ltn__blog-meta">
                          <ul>
                            <li class="ltn__blog-date">
                              <a href="#"><i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                                              echo date_format($date, "d M Y - h:i a"); ?></a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </li>
                <?php } ?>
              </ul>
            </div>
          </aside>
        </div>
      </div>
    </div>
  </div>

<?php }
require_once("templates/bottom.php"); ?>