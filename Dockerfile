FROM golang:1.14.1

# Install golang-ci
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.23.8

# Install CodeClimate test reporter
RUN curl -sL https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /opt/cc-test-reporter &&\
    chmod +x /opt/cc-test-reporter


