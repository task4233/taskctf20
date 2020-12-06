<?php
$url = "http://34.82.49.144:3334?seed=" . strval(rand());
echo $url;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
echo $res;
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>gacha</title>
</head>
<body>
<h1>Gacha</h1>
<p>運が良ければフラグが出るよ</p>
<form method="get" action="index.php">
<button type="submit">1回引く</button>
</form>
<p><?= $res ?></p>
</body>
</html>