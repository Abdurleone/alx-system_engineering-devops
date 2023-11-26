#!/usr.bin/env bash
# Setting up my client config file using puppet
include stdlib

file { '/etc/ssh/ssh_config':
   ensure => present,

content =>"
        #SSH client configuration
	host*
	IdentifyFile ~/.ssh/school
	PasswordAuthentication no
	",
}
