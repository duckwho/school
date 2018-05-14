package main

import (
	// "fmt"
	"github.com/ThomasRooney/gexpect"
)

func main() {
	child, err := gexpect.Spawn("ruby split.rb")
	if err != nil {
		panic(err)
	}
	child.Expect("To split a string, enter the string: ")
	child.SendLine("helloworld")
	// child.Expect("Enter the split position: ")
	// child.SendLine("3")
	child.Interact()
	child.Close()
}
