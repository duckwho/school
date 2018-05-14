package main

import (
	"flag"
	"fmt"
	"time"

	"github.com/golang/glog"
	"github.com/google/goexpect"
	"github.com/google/goterm/term"
)

const (
	timeout = 10 * time.Minute
)

var (
	addr = flag.String("address", "", "address of telnet server")
	user = flag.String("user", "", "username to use")
	pass = flag.String("pass", "", "password to use")
)

func main() {
	flag.Parse()
	fmt.Println(term.Bluef("Ftp 1 example"))

	e, _, err := expect.Spawn(fmt.Sprintf("ls %s", *addr), -1)
	if err != nil {
		glog.Exit(err)
	}
	defer e.Close()

	e.ExpectBatch([]expect.Batcher{
		&expect.BExp{R: "username:"},
		&expect.BSnd{S: *user + "\n"},
		&expect.BExp{R: "password:"},
		&expect.BSnd{S: *pass + "\n"},
		&expect.BExp{R: "ftp>"},
		&expect.BSnd{S: "bin\n"},
		&expect.BExp{R: "ftp>"},
		&expect.BSnd{S: "prompt\n"},
		&expect.BExp{R: "ftp>"},
		&expect.BSnd{S: "mget *\n"},
		&expect.BExp{R: "ftp>"},
		&expect.BSnd{S: "bye\n"},
	}, timeout)

	fmt.Println(term.Greenf("All done"))
}
