<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$tempat_kebudayaan = "SELECT * FROM tempat_kebudayaan ORDER BY id_tempat_kebudayaan DESC LIMIT 50";
$view_tempat_kebudayaan = mysqli_query($conn, $tempat_kebudayaan);
if (isset($_POST["add_tempat_kebudayaan"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (tempat_kebudayaan($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Tempat kebudayaan baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: tempat-kebudayaan");
    exit();
  }
}
if (isset($_POST["edit_tempat_kebudayaan"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (tempat_kebudayaan($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Tempat kebudayaan " . $_POST['nama_kebudayaanOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: tempat-kebudayaan");
    exit();
  }
}
if (isset($_POST["delete_tempat_kebudayaan"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (tempat_kebudayaan($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Tempat kebudayaan " . $_POST['nama_kebudayaan'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: tempat-kebudayaan");
    exit();
  }
}
