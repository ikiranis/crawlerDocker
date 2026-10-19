### Configure

Create `.env` next to `docker-compose.yml` (it is git-ignored):

```
cp .env.example .env
```

| Variable   | Default | Description                                  |
|------------|---------|----------------------------------------------|
| `APP_PORT` | `8820`  | Host port mapped to the app's port `8080`    |

### Install

Place the built jar at `app/app.jar`, then build and start:

```
docker compose up -d --build
```

To rebuild from scratch:

```
docker compose build --no-cache
docker compose up -d
```

### Stop

```
docker compose down
```

### Logs

```
docker compose logs -f crawler-app
```

### Enter the container

```
docker exec -it crawler-docker-app /bin/sh
```

### Test API calls to

```
http://xxx.xxx.xxx.xxx:8820/
```

(use the `APP_PORT` value from `.env`)
