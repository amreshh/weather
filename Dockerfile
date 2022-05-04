FROM docker.io/node:18-alpine3.14
LABEL org.opencontainers.image.source=https://github.com/amreshh/weather
WORKDIR /app
ADD . /app/
RUN npm install
EXPOSE 3000
ENTRYPOINT [ "node", "src/app.js" ]