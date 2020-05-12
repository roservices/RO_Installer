#!/usr/bin/expect
set password [lindex $argv 0]
spawn sudo passwd roservices

expect "New password:"
send "$password\r"

expect "Retype new password:"
send "$password\r"

interact
