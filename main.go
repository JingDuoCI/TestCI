package main

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

func main() {
	fmt.Printf("Hello Go\n")
	var wg sync.WaitGroup
	rand.Seed(time.Now().UnixNano())
	var count = rand.Intn(86400)
	if count < 0 {
		count = -count
	}

	fmt.Printf("It will hold %d seconds\n", count)
	wg.Add(count)
	go func() {
		for {
			wg.Done()
			time.Sleep(time.Second)
		}
	}()
	wg.Wait()
}
