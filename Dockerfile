FROM golang as builder

WORKDIR /app
COPY main.go /app/
RUN go build main.go


FROM scratch

WORKDIR app/
COPY --from=builder /app .

CMD ["./main"]
