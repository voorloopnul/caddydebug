FROM ubuntu:latest
RUN mkdir /app
COPY run.sh /app
COPY rathole /app
WORKDIR /app
CMD ["./run.sh"]
