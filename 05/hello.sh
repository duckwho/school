#!/usr/bin/expect
set timeout 4000
#spawn ./split
spawn ruby split.rb
#expect "To split a string, enter the string: " { send "\r" }
expect {
      "To split a string, enter the string: " {
            send "hellowoorld\r"
            exp_continue
      }
      "Enter the split position: " {
            send "3\r"
            interact
      }
}
