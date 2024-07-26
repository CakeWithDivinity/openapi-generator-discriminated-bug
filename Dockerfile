FROM node:22.5.1

RUN corepack enable

COPY . /app

WORKDIR /app

RUN apt-get update \
  && apt-get install -y --no-install-recommends default-jre-headless \
  && apt-get clean

CMD yarn generate