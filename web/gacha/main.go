package main

import (
	"context"
	"log"
	"net/http"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"
	"encoding/json"
	"math"
)

func main() {
	srv := &http.Server{Addr: ":3334"}
	http.HandleFunc("/", gachaHandler)

	go func() {
		if err := srv.ListenAndServe(); err != nil {
			log.Printf("shutdown the server with error: %+v\n", err)
		}
	}()

	quit := make(chan os.Signal, 1)
	signal.Notify(quit, syscall.SIGTERM)
	log.Printf("SIGNAL %d received, then shutting down...\n", <-quit)

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := srv.Shutdown(ctx); err != nil {
		log.Println("failed to shutdown: %+v", err)
		os.Exit(1)
	}
}

func gachaHandler(w http.ResponseWriter, r *http.Request) {
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

	sm := (seedInt * nowInt) % 1000007
	log.Println(sm)
	var flag map[string]string

	if sm == 1337 {
		flag = map[string]string{
			"flag": "taskctf{Y0u_h4ve_4_gre4t_luck}",
		}
	} else {
		flag = map[string]string{
			"flag": "You might not have a luck...",
			"diff": strconv.Itoa(int(math.Abs(float64(sm - 1337)))),
		}
	}
	res, _ := json.Marshal(flag)
	w.WriteHeader(http.StatusOK)
	w.Write(res)
	return
}
