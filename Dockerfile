FROM node:20-slim
RUN apt-get update && apt-cache policy libgnutls30
WORKDIR /app
COPY ./app/package*.json /app
RUN npm ci
COPY ./app /app
CMD [ "node", "server.js"]
