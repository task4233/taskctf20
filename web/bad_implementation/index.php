<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>BBS</title>
</head>
<body>
<?php
  require "script.php";
  $file = filter_input(INPUT_GET, 'file');
  if ($file != null) {
     $content = read_file($file);
     echo "<p>${content}</p>";
  }
  $content = read_file($file);
?>
</body>
</html>
