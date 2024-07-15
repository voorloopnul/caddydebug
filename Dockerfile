FROM caddy:latest
RUN mkdir /app
COPY run.sh /app
WORKDIR /app
CMD ["ash", "run.sh"]
