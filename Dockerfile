FROM golang:1.9

ENV GOPATH /go/src/app
WORKDIR /go/src/app

RUN go get -u github.com/tuxx/wtf && \
    cd src/github.com/tuxx/wtf/ && \
    /bin/bash && \
    make install && \ 
    make run && \
    ls && \
    ./bin/wtf
