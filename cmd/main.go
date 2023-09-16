package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, request *http.Request) {
		_, err := fmt.Fprint(w, "Hello World!")
		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
		}
	})

	log.Fatal(http.ListenAndServe("0.0.0.0:4561", nil))
}
