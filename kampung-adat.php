<?php require_once("controller/visitor.php");
$_SESSION["peninggalan_kebudayaan_bajawa"]["name_page"] = "Kampung Adat";
require_once("templates/top.php");

$view_tarian = mysqli_query($conn, "SELECT * FROM kebudayaan WHERE id_jenis_kebudayaan = 1");

$sql_jenis_kebudayaan = mysqli_query($conn, "SELECT * FROM jenis_kebudayaan");
$jenis_kebudayaan_list = [];
while ($row = mysqli_fetch_array($sql_jenis_kebudayaan)) {
  $jenis_kebudayaan_list[$row['id_jenis_kebudayaan']] = $row['jenis_kebudayaan'];
}
?>

<div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title white-color">Kampung Adat</h1>
          </div>
          <div class="ltn__breadcrumb-list">
            <ul>
              <li><a href="./">Beranda</a></li>
              <li>Kampung Adat</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__blog-area ltn__blog-item-3-normal mb-120">
  <div class="container">
    <div class="row">
    <?php foreach ($view_tarian as $data) { 
        // Get jenis_kebudayaan name from the ID
        $jenis_name = isset($jenis_kebudayaan_list[$data['id_jenis_kebudayaan']]) ? 
                      $jenis_kebudayaan_list[$data['id_jenis_kebudayaan']] : 'Tidak Terdefinisi';
      ?>
        <div class="col-lg-4 col-sm-6 col-12">
          <div class="ltn__blog-item ltn__blog-item-3">
            <div class="ltn__blog-img">
              <a href="kampung-adat-detail?post=<?= $data['id_kebudayaan'] ?>"><img src="assets/img/kebudayaan/<?= $data['image_kebudayaan'] ?>" style="width: 100%; height: 300px; object-fit: cover;" alt="#"></a>
            </div>
            <div class="ltn__blog-brief">
              <div class="ltn__blog-meta">
                <ul>
                  <li class="ltn__blog-author">
                    <a href="#"><i class="far fa-user"></i>by: <?= $data['author'] ?></a>
                  </li>
                  <li class="ltn__blog-tags">
                    <a href="#"><i class="fas fa-tags"></i><?= $jenis_name ?></a>
                  </li>
                </ul>
              </div>
              <h3 class="ltn__blog-title"><a href="kampung-adat-detail?post=<?= $data['id_kebudayaan'] ?>"><?= $data['nama_kebudayaan'] ?></a></h3>
              <div class="ltn__blog-meta-btn">
                <div class="ltn__blog-meta">
                  <ul>
                    <li class="ltn__blog-date"><i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                                                  echo date_format($date, "l, d M Y"); ?></li>
                  </ul>
                </div>
                <div class="ltn__blog-btn">
                  <a href="kampung-adat-detail?post=<?= $data['id_kebudayaan'] ?>">Lihat Lebih</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      <?php } ?>
    </div>
  </div>
</div>

<?php require_once("templates/bottom.php"); ?>