<?php
require_once 'GoogleAuthenticator/PHPGangsta/GoogleAuthenticator.php';

$ga = new PHPGangsta_GoogleAuthenticator();

// 秘密鍵の生成
$secret = $ga->createSecret();
echo "{$secret}\n\n";

// サービス名
$title = '';

// ユーザー名
$name = 'foo';

// QRコードURLの生成と表示
$qrCodeUrl = $ga->getQRCodeGoogleUrl($name, $secret, $title);
echo "秘密鍵のQRコードURL：{$qrCodeUrl}\n\n";
?>

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
</head>
<body>

<?php
$oneCode = filter_input(INPUT_POST, 'oneCode');
echo $oneCode;
$discrepancy = ;
$checkResult = $ga->verifyCode($secret, $oneCode, $discrepancy);
?>

<form method="post" action="index.php">
<input type="text" name="oneCode" placeholder="認証コード" />
<button type="submit">認証!</button>
</form>

<?php
if ($checkResult) {
echo 'OK';
} else {
echo 'failed';
}
?>
</body>
</html>