BRANCH := `git rev-parse --abbrev-ref HEAD`

.PHONY: dependencies install run

build:
	go build -o bin/wtf

install:
	which wtf | xargs rm || true
	go install -ldflags="-X main.version=$(git describe --always --abbrev=6)_${BRANCH} -X main.date=$(date +%FT%T%z)"
	which wtf

run: build
	bin/wtf
