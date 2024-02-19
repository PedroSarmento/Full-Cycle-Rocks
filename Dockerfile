FROM scratch

WORKDIR /app

COPY main /app

CMD ["./main"]