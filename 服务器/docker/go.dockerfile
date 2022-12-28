FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add git go && go env -w GO111MODULE=on && go env -w GOPROXY=https://goproxy.cn,direct && echo -e "#!/bin/sh\ncd /work;go mod tidy;go build -o alpine_app main.go" > /bin/build && chmod +x /bin/build
WORKDIR /work
CMD [ "/bin/build" ]