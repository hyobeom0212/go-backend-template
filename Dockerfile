FROM golang:1.20

WORKDIR /src
COPY . /src
RUN make build
EXPOSE 4561
CMD ["make", "run"]

