<?php

if (!isset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"])) {
  function alert($message, $message_type)
  {
    $_SESSION["peninggalan_kebudayaan_bajawa"] = [
      "message_$message_type" => $message,
      "time_message" => time()
    ];

    return true;
  }
}

if (isset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"])) {
  function alert($message, $message_type)
  {
    global $conn;
    $id_user = valid($conn, $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["id"]);
    $id_role = valid($conn, $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["id_role"]);
    $role = valid($conn, $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["role"]);
    $email = valid($conn, $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["email"]);
    $name = valid($conn, $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["name"]);
    $image = valid($conn, $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["image"]);

    $_SESSION["peninggalan_kebudayaan_bajawa"]["users"] = [
      "id" => $id_user,
      "id_role" => $id_role,
      "role" => $role,
      "email" => $email,
      "name" => $name,
      "image" => $image,
      "message_$message_type" => $message,
      "time_message" => time()
    ];
  }
}
