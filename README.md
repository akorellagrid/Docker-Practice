# docker-testapp

## Overview
This is a simple Node.js application with MongoDB and Mongo Express, designed to be run using Docker and Docker Compose.

## Prerequisites
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

## Port Bindings
- **App server**: `localhost:3000` (if your app listens on 3000)
- **MongoDB**: `localhost:27017`
- **Mongo Express**: `localhost:8081`

## Dockerizing the App

### 1. Build and Run with Docker Compose

This project includes a `mongo.yaml` file for Docker Compose. To start all services (MongoDB, Mongo Express, and your Node.js app):

```sh
docker-compose -f mongo.yaml up --build
```

### 2. Build and Run with Dockerfile Only

To build and run just the Node.js app container:

```sh
# Build the image
docker build -t docker-testapp .

docker run -p 5050:5050 --env-file .env docker-testapp
```

> Adjust the port number if your app uses a different port.

## Environment Variables
Set the following environment variables as needed (see Dockerfile):
- `MONGO_DB_USERNAME`
- `MONGO_DB_PASSWORD`
- `MONGO_DB_URL`

## Accessing Services
- App: [http://localhost:5050](http://localhost:5050)
- Mongo Express: [http://localhost:8081](http://localhost:8081)

## Stopping the Containers

```sh
docker-compose -f mongo.yaml down
```

---
For more details, see the Dockerfile and mongo.yaml in this repository.