FROM alpine:latest

WORKDIR /app

RUN apk --no-cache add curl

COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]
