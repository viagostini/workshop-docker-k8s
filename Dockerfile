FROM node:12

ENTRYPOINT [ "node",  "src/server.js" ]

RUN apt-get update && apt-get install -y curl && apt-get install -y jq

WORKDIR /opt/app_maroto

COPY package.json  .

RUN npm install

COPY src src

