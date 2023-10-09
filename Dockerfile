FROM node:18

RUN mkdir /app

COPY package.json /app
COPY yarn.lock /app

WORKDIR /app
RUN "yarn" "install" "--frozen-lockfile"

COPY . /app

WORKDIR /app


CMD "yarn" "start"
EXPOSE 3000