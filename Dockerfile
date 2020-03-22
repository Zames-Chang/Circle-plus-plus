FROM node:9.2.0
COPY package.json server.js config.js /app/
COPY server /app/server
COPY static /app/static
WORKDIR /app
RUN npm install && npm cache clean --force
CMD node server.js
