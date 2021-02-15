package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	http.HandleFunc("/", sayHello)
	log.Fatal(http.ListenAndServe(":" + port, nil))
}

// sayHello responds to a request with a webpage that says "Hello" and links to an additional request.
//
// Note: It is bad security practice to reply to a response with error information. However the service I am building
// is so simple that I haven't even set up logging for it so this is the only way to communicate to the developer when
// a problem occurs. Typically I would log an error and send back a 500 or 404 for any error experienced by the server.
func sayHello(w http.ResponseWriter, r *http.Request) {
	var err error
	valueFromRedis := 42
	_, err = fmt.Fprintf(w, `<h1>Hello!</h1>
		<p>This simple application was created to demonstrate creating and destroying a simple, AWS-based web application with a Redis database.</p>
		<p>The answer to life, the universe, and everything is retrieved from the Redis database when this page loads: %v</p>
		`, valueFromRedis)
	if err != nil {
		http.Error(w, "Could not write to the response writer: " + err.Error(), http.StatusInternalServerError)
		return
	}
}
