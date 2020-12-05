<!DOCTYPE html>
<?php
 $text = "";
 if (isset($_POST['text'])) {
    $text = filter_input(INPUT_POST, 'text');
    $text = str_rot13($text);
 }
?>
<html>

<head>
    <meta charset="utf-8" />
    <title>Caesar Cipher Translator</title>
</head>

<body>
    <h1>Caesar Cipher Translator</h1>
    <p>
        シーザー暗号をエンコードするページを作りました！<br>
        「Raw: 」に文字列を入れて, 「変換！」を押すとエンコード出来るよ！
    </p>
    <form method="post" action="index.php">
        Raw: <input type="text" name="text"/>
        <button type="submit">変換!</button>
    </form>
    Result: <input value="<?= "${text}" ?>" />
    <button id="cpyToClipboard" placeholder="まだ実装してないよ">コピー</button>
    <?php
 if (preg_match("/injected/i", "injected")) {
    echo '<script>let old_alert = alert;</script>';
    echo '<script>alert = (s) => { let text; old_alert(s); if(s==="injected") {text = "taskctf{n1ce_inject10n!}";} old_alert(text);}</script>';
  }

    ?>
</body>
</html>
