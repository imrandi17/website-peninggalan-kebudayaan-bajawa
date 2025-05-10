<?php

$messageTypes = ["success", "info", "warning", "danger", "dark"];

if (!isset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"])) {
  if (isset($_SESSION["peninggalan_kebudayaan_bajawa"]["time_message"]) && (time() - $_SESSION["peninggalan_kebudayaan_bajawa"]["time_message"]) > 2) {
    foreach ($messageTypes as $type) {
      if (isset($_SESSION["peninggalan_kebudayaan_bajawa"]["message_$type"])) {
        unset($_SESSION["peninggalan_kebudayaan_bajawa"]["message_$type"]);
      }
    }
    unset($_SESSION["peninggalan_kebudayaan_bajawa"]["time_message"]);
  }
} else if (isset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"])) {
  if (isset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["time_message"]) && (time() - $_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["time_message"]) > 2) {
    foreach ($messageTypes as $type) {
      if (isset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["message_$type"])) {
        unset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["message_$type"]);
      }
    }
    unset($_SESSION["peninggalan_kebudayaan_bajawa"]["users"]["time_message"]);
  }
}
