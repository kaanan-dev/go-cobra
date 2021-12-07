.DEFAULT_GOAL := run

run:
	go run ./...

initializ:
	go get github.com/kaanan-dev/go-cobra/cmd

iCobra: 
	go get github.com/spf13/cobra

iViper: iCobra
	go get github.com/spf13/viper

init: iViper
	echo "start initialize"