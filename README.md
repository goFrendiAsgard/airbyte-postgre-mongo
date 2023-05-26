# What is this

POC to ectract data from postgres and load into mongodb using airbyte.

# Prerequisites

- Docker + Docker compose
- Zsh/Bash
- Internet connection

# How to start

```bash
./start.sh
```

Once the containers are started, you can open:
- Airbyte UI: `http://localhost:8000`.
- Adminer: `http://localhost:8080`.
- Mongo expres: `http://localhost:8081`.

The credentials for Airbyte, Postgre, and Mongo can be set by using `BASIC_AUTH_USERNAME` and `BASIC_AUTH_PASSWORD`.

By default, the values are as follow:

```bash
export BASIC_AUTH_USERNAME=airbyte
export BASIC_AUTH_PASSWORD=password
```

You can edit `.env` if you need to change any environment variables.


# How to remove all containers

```bash
docker-compose down
```

# Caveat

- Use `host.docker.internal` to refer to host network.
- Your data will be available under `_airbyte_data` key.
- [This](https://stackoverflow.com/questions/66483326/mongodb-how-to-transform-existing-document-to-expected-structure) might help if you need to do further transformation