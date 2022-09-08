FROM python:alpine3.10 as builder

WORKDIR /App
COPY App/app.py /App

RUN ["python3", "app.py"]

FROM alpine
WORKDIR /App
COPY --from=builder App/hello.txt /App/

ENTRYPOINT [ "/bin/sh", "-c" , "cat hello.txt && sleep 20"]