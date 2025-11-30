/*usr/bin/env go run "$0"; exit;*/

package main

import (
	"fmt"
	"runtime"
	"runtime/debug"
)

func main() {
	fmt.Println(runtime.GOMAXPROCS(0))
	if bi, ok := debug.ReadBuildInfo(); ok {
		fmt.Println(bi)
	}
}
