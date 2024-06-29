FROM node:lts-alpine

WORKDIR /app

COPY package*.json /app/

COPY client/package*.json /app/client/
RUN npm install-client --omit=dev

COPY server/package*.json /app/server
RUN npm install-server --omit=dev

COPY client/ /app/client
RUN npm run build --prefix client

COPY server/ /app/server

USER node

CMD [ "npm" ,"start" ,"--prefix","server"]

EXPOSE 8000