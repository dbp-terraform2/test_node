FROM node:latest

RUN apt update && apt install -y git vim curl stress-ng

ARG RAILS_ROOT=/app
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

COPY . $RAILS_ROOT

ENV PATH=$RAILS_ROOT/bin:${PATH}

EXPOSE 8080

CMD ["node", "/app/app/app.js"]
