#!/usr.bin/env bash
# Setting up my client config file using puppet

file { 'ect/ssh/ssh_cofig':
        ensure => present,

content =>"

        #SSH client configuration
	host*
	IdentifyFile ~/.ssh/school
	PasswordAuthentication no

}
