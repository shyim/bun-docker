FROM golang:alpine as builder

RUN go install github.com/canonical/chisel/cmd/chisel@latest
RUN mkdir /rootfs

FROM scratch
COPY rootfs/ /
CMD ["/bin/bun"]