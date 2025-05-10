<?php require_once("controller/visitor.php");
$_SESSION["peninggalan_kebudayaan_bajawa"]["name_page"] = "Upacara Adat";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: upacara-adat");
  exit;
} else {
  $id_kebudayaan = valid($conn, $_GET['post']);
  $kebudayaan_detail = "SELECT * FROM kebudayaan WHERE id_kebudayaan='$id_kebudayaan'";
  $view_kebudayaan_detail = mysqli_query($conn, $kebudayaan_detail);
  $data = mysqli_fetch_assoc($view_kebudayaan_detail);
  
  // Get the jenis_kebudayaan name
  $id_jenis = $data['id_jenis_kebudayaan'];
  $sql_jenis = "SELECT jenis_kebudayaan FROM jenis_kebudayaan WHERE id_jenis_kebudayaan='$id_jenis'";
  $result_jenis = mysqli_query($conn, $sql_jenis);
  $jenis_data = mysqli_fetch_assoc($result_jenis);
  $jenis_name = $jenis_data ? $jenis_data['jenis_kebudayaan'] : 'Tidak Terdefinisi';
  
  // Update viewer count
  $sql = "UPDATE kebudayaan SET pembaca = pembaca + 1 WHERE id_kebudayaan = '$id_kebudayaan'";
  mysqli_query($conn, $sql);
?>

  <div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
            <div class="section-title-area ltn__section-title-2">
              <h1 class="section-title white-color">Upacara Adat <?= $data['nama_kebudayaan'] ?></h1>
            </div>
            <div class="ltn__breadcrumb-list">
              <ul>
                <li><a href="./">Beranda</a></li>
                <li><a href="upacara-adat">Upacara Adat</a></li>
                <li>Upacara Adat <?= $data['nama_kebudayaan'] ?></li>
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
                  <img src="assets/img/kebudayaan/<?= $data['image_kebudayaan'] ?>" alt="<?= $data['nama_kebudayaan'] ?>">
                </div>
              </div>
              <h2 class="ltn__blog-title"><?= $data['nama_kebudayaan'] ?></h2>
              <div class="ltn__blog-meta">
                <ul>
                  <li class="ltn__blog-author">
                    <a href="#">Oleh: <?= $data['author'] ?></a>
                  </li>
                  <li class="ltn__blog-tags">
                    <i class="fas fa-tags"></i><?= $jenis_name ?>
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
              <h4 class="ltn__widget-title ltn__widget-title-border">Upacara Adat Lainnya</h4>
              <ul>
                <?php
                $tarian_lain = "SELECT * FROM kebudayaan WHERE id_jenis_kebudayaan = 2 AND id_kebudayaan != '$data[id_kebudayaan]' ORDER BY id_kebudayaan DESC LIMIT 50";
                $view_tarian_lain = mysqli_query($conn, $tarian_lain);
                foreach ($view_tarian_lain as $item) { ?>
                  <li>
                    <div class="popular-post-widget-item clearfix">
                      <div class="popular-post-widget-img">
                        <a href="upacara-adat-detail?post=<?= $item['id_kebudayaan'] ?>"><img src="assets/img/kebudayaan/<?= $item['image_kebudayaan'] ?>" class="rounded-0" style="width: 60px; height: 60px; object-fit: cover;" alt="#"></a>
                      </div>
                      <div class="popular-post-widget-brief">
                        <h6><a href="upacara-adat-detail?post=<?= $item['id_kebudayaan'] ?>"><?= $item['nama_kebudayaan'] ?></a></h6>
                        <div class="ltn__blog-meta">
                          <ul>
                            <li class="ltn__blog-date">
                              <a href="#"><i class="far fa-calendar-alt"></i><?php $date = date_create($item["created_at"]);
                                                                              echo date_format($date, "d M Y"); ?></a>
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