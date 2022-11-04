FROM golang:1.19.3-alpine3.16 as dlv

RUN go install github.com/go-delve/delve/cmd/dlv@latest

FROM alpine:3.16
COPY --from=dlv /root/go/bin/dlv /bin/dlv

RUN apk add curl bash git htop

ENTRYPOINT [ "/bin/dlv" ]