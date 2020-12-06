# Gacha
ガチャを作ったらしいけど, そのseedの使い方間違ってない？

http://34.82.49.144:3334/

## Attachment
 - [main.go](main.go)
 
# 解法
下記の部分で, GETリクエストをリクエストを受け取って, JSTの現在時刻を加算して100000で割った余りが1337になればフラグが得られることがわかります。

```
	seed := r.FormValue("seed")
	if len(seed) == 0 {
		seed = "1"
	}
	seedInt, err := strconv.Atoi(seed)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// get current time(HHmmss)
	jst := time.FixedZone("Asia/Tokyo", 9*60*60)
	nowStr := time.Now().In(jst).Format("150405")
	log.Println(nowStr)
	nowInt, err := strconv.Atoi(nowStr)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	sm := (seedInt + nowInt) % 100000
	log.Println(sm)
	var flag map[string]string

	if sm == 1337 {
		flag = map[string]string{
			"flag": "taskctf{This_is_dummy}",
		}
	} else {
		flag = map[string]string{
			"flag": "You might not have a luck...",
			"sum":  strconv.Itoa(sm),
		}
	}
```

そのため, それを満たすような値をseedに入れてリクエストを送り続ければ解けます。

# フラグ
`taskctf{Y0u_h4ve_4_gre4t_luck}`
