OS := $(shell uname)

build:
ifeq ($(OS), Darwin)
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o ./bin/app ./cmd/app/main.go
else
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./bin/app ./cmd/app/main.go
endif


run:
	./bin/app

clean:
	go clean
	rm -rf bin

test:
	go test ./...

test_coverage:
	go test ./... -coverprofile=coverage.out

dep:
	go mod download

