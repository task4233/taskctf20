<?php
    if (preg_match('/\.(?:png|jpg|jpeg|gif|txt)$/', $_SERVER["REQUEST_URI"])) {
       $_SERVER["REQUEST_URL"] = "/index.php";
    }
    echo $_SERVER["REQUEST_URL"];
    $data = filter_input(INPUT_GET, "data", FILTER_SANITIZE_SPECIAL_CHARS);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>base64 decoder</title>
</head>
<body>
<form action="show.php" method="GET">
    <input type="text" name="data" />
    <input type="submit" value="デコード" />
</form>
</body>
