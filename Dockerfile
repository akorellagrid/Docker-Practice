FROM node:18-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty \
    MONGO_DB_URL=mongodb://mongo:27017/mydatabase


RUN mkdir -p /usr/src/test-app
WORKDIR /usr/src/test-app

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

CMD ["node", "server.js"]

