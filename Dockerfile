FROM node:20-slim
WORKDIR /app
COPY ./app/package*.json /app
RUN npm ci
COPY ./app /app
CMD [ "node", "server.js"]
