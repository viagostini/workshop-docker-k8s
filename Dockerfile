FROM node:12 AS base

RUN apt-get update && apt-get install -y curl && apt-get install -y jq

WORKDIR /opt/app_maroto

COPY package.json package-lock.json ./



FROM base AS dev

RUN npm install --save-dev

ENTRYPOINT [ "npx",  "nodemon", "src/server.js" ]



FROM base AS prod

ENTRYPOINT [ "node",  "src/server.js" ]

RUN npm install

COPY src src

