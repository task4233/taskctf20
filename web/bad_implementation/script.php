<?php
function read_file($path) {
  $prefix="./log/";
  $path = str_replace('../', '', $path);

  $file=$prefix.$path;
  echo "${file}";
  if (file_exists($file)) {
    $content = file_get_contents($file);
  } else {
    $content = "404 Not Found.";
  }
  return $content;
}
?>