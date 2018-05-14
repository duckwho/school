package main

import (
	"fmt"
	"log"
	"os/exec"
)

func main() {
	// out, err := exec.Command("script -c ./hello.sh me.script").Output()

	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("%s", out)
}


// login := exec.Command(cmd, "login")

// buffer := bytes.Buffer{}
// buffer.Write([]bytes("username\npassword\n")

// login.Stdout = os.Stdout
// login.Stdin = buffer
// login.Stderr = os.Stderr

// err := login.Run()
// if err != nil {
//	fmt.Fprintln(os.Stderr, err)
// }
