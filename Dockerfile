FROM alpine

RUN addgroup -S nonroot \ && adduser -S nonroot -G nonroot

USER nonroot

WORKDIR /usr/src/app

COPY src/package*.json ./
RUN npm install --ignore-scripts

COPY src/index.js .

EXPOSE 8090

CMD [ "node", "index.js" ]
