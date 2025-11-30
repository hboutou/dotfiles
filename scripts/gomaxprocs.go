/*usr/bin/env go run "$0"; exit;*/

package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println(runtime.GOMAXPROCS(0))
}
