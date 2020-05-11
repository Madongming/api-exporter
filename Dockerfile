FROM  golang  AS builder
ADD . /go/src/apiexporter/
RUN cd src/apiexporter && CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o apiexporter

From alpine
COPY --from=builder /go/src/apiexporter/apiexporter /usr/bin/apiexporter
CMD ["/usr/bin/apiexporter"]   

