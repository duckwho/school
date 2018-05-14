package main

import (
	"fmt"
	"io"
	"os"
	"log"
	"os/exec"
)

func main() {
	subProcess := exec.Command("ruby", "./split.rb") //Just for testing, replace with your subProcess

	stdin, err := subProcess.StdinPipe()
	// out, err := subProcess.Output()

	if err != nil {
		// fmt.Println(err) //replace with logger, or anything you want
		log.Fatal(err)
	}
	defer stdin.Close() // the doc says subProcess.Wait will close it, but I'm not sure, so I kept this line

	subProcess.Stdout = os.Stdout
	subProcess.Stderr = os.Stderr

	fmt.Println("START") //for debug
	if err = subProcess.Start(); err != nil { //Use start, not run
		fmt.Println("An error occured: ", err) //replace with logger, or anything you want
	}

	// fmt.Printf("the yo is %s", out)
	io.WriteString(stdin, "helloworld\n")
	io.WriteString(stdin, "3\n")
	subProcess.Wait()
	fmt.Println("END") //for debug
	// fmt.Printf("%s\n", out)
}
