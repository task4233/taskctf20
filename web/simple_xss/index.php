<!DOCTYPE html>
<?php
 echo '<script>let old_alert = alert;</script>';
echo '<script>alert = (s) => { let text; old_alert(s); if (s==="injected") { let result=document.getElementById("result").innerHTML; if(result.includes("alert(") && result.includes("injected" && (result.includes("on") || result.includes("script")))) {text = "taskctf{n1ce_inject10n!}"} else {text = "それってホントにinjectした?"}; old_alert(text) }}</script>';
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
        「Raw: 」に文字列を入れて, 「エンコード！」を押すとエンコード出来るよ！
    </p>
    <form id="rot">
        Raw: <input type="text" id="text"/>
        <input type="button" value="変換！" onclick="translateText();" />
    </form>
    <div id="result"></div>

    <script>
        function caesarCipher(str, shift_len) {
            const capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            const alphabets = "abcdefghijklmnopqrstuvwxyz";
            return str.replace(/[A-Z]/g, (ch) => capitals.charAt((capitals.indexOf(ch) + Number(shift_len)) % capitals.length))
                        .replace(/[a-z]/g, (ch) => alphabets.charAt((alphabets.indexOf(ch) + Number(shift_len)) % alphabets.length))                         
        }

        function translateText() {
            let text = document.getElementById("text").value;
            document.getElementById("result").innerHTML = "Result: " + caesarCipher(text, 13);
            return;
        }
    </script>
</body>
</html>
