<?php if (!isset($_SESSION)) {
  session_start();
}
require_once("../controller/auth.php");
if (isset($_SESSION["peninggalan_kebudayaan_bajawa"])) {
  unset($_SESSION["peninggalan_kebudayaan_bajawa"]);
  header("Location: ./");
  exit();
}
