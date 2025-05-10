<?php require_once("../controller/auth.php");
$_SESSION["peninggalan_kebudayaan_bajawa"]["name_page"] = "Login";
require_once("../templates/auth_top.php"); ?>

<?php foreach ($views_auth as $data) { ?>
  <div class="d-flex justify-content-center align-items-center" style="
      background: url('../assets/img/aut/<?= $data['image'] ?>') center center / cover no-repeat;
      min-height: 100vh;
      width: 100%;
      ">
    <div class="card shadow-lg border-0 rounded-4" style="
        background: rgba(255, 255, 255, 0.25);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        border: 1px solid rgba(255, 255, 255, 0.18);
        max-width: 450px;
        width: 100%;
      ">
      <div class="p-5">
        <div class="text-center mb-4">
          <h1 class="h3 fw-bold text-primary">Selamat Datang Kembali!</h1>
          <p class="text-muted small">Silakan masuk untuk melanjutkan.</p>
        </div>
        <form method="post">
          <div class="mb-3">
            <input type="email" name="email" class="form-control form-control-lg rounded-pill" id="email" placeholder="Alamat Email" required>
          </div>
          <div class="mb-3">
            <input type="password" name="password" class="form-control form-control-lg rounded-pill" id="password" placeholder="Kata Sandi" required>
          </div>
          <button type="submit" name="login" class="btn btn-primary w-100 rounded-pill py-2 fw-semibold">
            Masuk
          </button>
        </form>
        <hr>
        <div class="text-center">
          <a class="small text-decoration-none" href="forgot-password">Lupa Password?</a> <span>|</span>
          <a class="small text-decoration-none" href="register">Buat Akun Baru</a>
        </div>
        <div class="text-center mt-2">
          <a class="small text-decoration-none" href="../">← Kembali ke Beranda</a>
        </div>
      </div>
    </div>
  </div>
<?php } ?>

<?php require_once("../templates/auth_bottom.php") ?>
