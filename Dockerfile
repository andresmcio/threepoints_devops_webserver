FROM node:18-alpine

WORKDIR /usr/src/app

COPY src/package*.json ./
RUN npm install --ignore-scripts

COPY src/index.js .

EXPOSE 8090

CMD [ "node", "index.js" ]
