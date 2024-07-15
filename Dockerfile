FROM ubuntu:24.04
RUN apt-get update -y
RUN apt-get install -y curl wget

CMD ["echo", "Hey"]
