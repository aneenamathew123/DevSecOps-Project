FROM node:20-slim
#RUN apt-get update && apt-cache policy libgnutls30
RUN apt-get update \
    && apt-get install --only-upgrade -y libgnutls30 \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY ./app/package*.json /app
RUN npm ci
COPY ./app /app
CMD [ "node", "server.js"]
