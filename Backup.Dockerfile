FROM python:alpine3.10 as builder

WORKDIR /App
COPY app.py .

RUN sleep 1000

FROM alpine
WORKDIR /App
COPY --from=builder App/hello.txt /App/

CMD [ "cat", "hello.txt" ]