package main

import (
	// "bufio"
	// "fmt"
	"io/ioutil"
	// "os"
)

func check(e error) {
	if e != nil {
		panic(e)
	}
}



func main() {

	d1 := []byte("#!/usr/bin/expect\nhello\ngo\nyolo\n")
	err := ioutil.WriteFile("/tmp/dat1", d1, 0644)
	check(err)






// #!/usr/bin/expect
// set timeout 4000
// #spawn ./split
// spawn ./log_table
// #expect "To split a string, enter the string: " { send "\r" }
// expect {
//	  "Enter your start: " {
//			send "20\r"
//			exp_continue
//	  }
//	  "Enter your stop: " {
//			send "100\r"
//			exp_continue
//	  }
//	  "Enter your increment" {
//			send "3\r"
//			interact
//	  }
// }



	// f, err := os.Create("/tmp/dat2")
	// check(err)



	// defer f.Close()



	// d2 := []byte{115, 111, 109, 101, 10}
	// n2, err := f.Write(d2)
	// check(err)
	// fmt.Printf("wrote %d bytes\n", n2)



	// n3, err := f.WriteString("writes\n")
	// fmt.Printf("wrote %d bytes\n", n3)


	// f.Sync()


	// w := bufio.NewWriter(f)
	// n4, err := w.WriteString("buffered\n")
	// fmt.Printf("wrote %d bytes\n", n4)


	// w.Flush()

}


package main

import (
	"fmt"
	"log"
	"os/exec"
	"github.com/BurntSushi/toml"
)




func main() {
	var conf Config
	if _, err := toml.DecodeFile("./commands.toml", &conf); err != nil {
		fmt.Println(err)
	}
	fmt.Printf("%#v\n", conf)

	// out, err := exec.Command("expect hello.sh").Output()
	// if err != nil {
	//	log.Fatal(err)
	// }
	// fmt.Printf("The date is %s\n", out)
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
