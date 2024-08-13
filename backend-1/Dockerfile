FROM node:20.16.0-alpine

WORKDIR /usr/src/app

ENV NODE_ENV production

COPY package*.json ./

RUN npm ci --only=production

USER node

COPY --chown=node:node  ./src .

EXPOSE 3000

RUN ["node", "index.js"]
