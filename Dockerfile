FROM golang:1.18
#ENV PROTOBUF_VERSION=21.1 \
#    PROTOC_GEN_GO_VERSION=1.28.0
#RUN apk add --no-cache build-base curl automake autoconf libtool git zlib-dev
#RUN go install  google.golang.org/protobuf/cmd/protoc-gen-go@v${PROTOC_GEN_GO_VERSION}
#RUN mkdir -p /protobuf && \
#        wget https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOBUF_VERSION}/protobuf-all-${PROTOBUF_VERSION}.zip &&  unzip protobuf-all-21.1.zip && cd protobuf-3.21.1/ &&  ./configure && make install

RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -d -b $(go env GOPATH)/bin v1.52.2