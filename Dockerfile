FROM golang:1.20

WORKDIR /app
COPY . /app
RUN make build
EXPOSE 4561
CMD ["make", "run"]

