FROM  golang  AS builder
ADD . /go/src/apiexporter/
RUN cd src/apiexporter && go build -o apiexporter

From alpine
COPY --from=builder /go/src/apiexporter/apiexporter /usr/bin/apiexporter
CMD ["/usr/bin/apiexporter"]   

