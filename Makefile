.DEFAULT_GOAL := run

run:
	go run ./...

initializ:
	go get github.com/ananrafs/go-cobra/cmd

iCobra: initializ
	go get github.com/spf13/cobra

iViper: iCobra
	go get github.com/spf13/viper

init: 
	echo "start initialize"