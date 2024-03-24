all:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags "-s -w" -o go-shareenum
	GOOS=windows GOARCH=amd64 CGO_ENABLED=0 go build -ldflags "-s -w" -o go-shareenum.exe
	GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build -ldflags "-s -w" -o go-shareenum-mac-intel
	GOOS=darwin GOARCH=arm64 CGO_ENABLED=0 go build -ldflags "-s -w" -o go-shareenum-mac-arm

clean:
	rm -f go-shareenum
	rm -f go-shareenum.exe
	rm -f go-shareenum-mac-intel
	rm -f go-shareenum-mac-arm