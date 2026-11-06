# Task 3: Docker Compose for Multi-Environment

## Objective

Create a Docker Compose configuration to run a static website using Nginx and demonstrate different environment configurations.

## Technologies Used

- Docker
- Docker Compose
- Nginx
- HTML
- Environment Variables

## Project Overview

This project uses Docker Compose to manage an Nginx container that serves a static HTML website.

The same Docker Compose configuration is used with different environment files to configure different host ports for development and production environments.

## Project Structure

```text
Task-03-Docker-Compose/
│
├── index.html
├── docker-compose.yml
├── .env.dev
├── .env.prod
├── .gitignore
└── README.md
```

## Docker Compose Configuration

The `docker-compose.yml` file defines:

### Nginx

- Uses the `nginx:alpine` Docker image.
- Serves the `index.html` static website.
- Maps the host port to Nginx container port 80.
- Uses a restart policy.

### Watchtower

Watchtower is configured as an optional service for automatically checking and updating Docker images.

It is placed under a Docker Compose profile so that it does not run during the normal application startup.

## Multi-Environment Configuration

Two environment configurations were created.

### Development

The development environment uses:

```text
SITE_PORT=8080
```

The website is accessed through:

```text
http://localhost:8080
```

### Production Configuration

The production configuration uses:

```text
SITE_PORT=80
```

The website is accessed through:

```text
http://localhost
```

The Nginx container continues to listen on port 80 in both configurations. Only the host port changes.

## Running the Project

### Development Environment

```bash
docker compose --env-file .env.dev up -d
```

Check running containers:

```bash
docker compose ps
```

Stop the application:

```bash
docker compose --env-file .env.dev down
```

### Production Configuration

```bash
docker compose --env-file .env.prod up -d
```

Check running containers:

```bash
docker compose ps
```

Stop the application:

```bash
docker compose --env-file .env.prod down
```

## Optional Watchtower

Watchtower can be started using the `updates` profile:

```bash
docker compose --env-file .env.dev --profile updates up -d
```

This demonstrates optional automatic Docker image update monitoring.

## Verification

The application was tested successfully using Docker Compose.

Development:

```text
http://localhost:8080
```

Production configuration:

```text
http://localhost
```

The Nginx container successfully served the static website in both configurations.

## Security

Environment files are excluded from Git using `.gitignore`.

Sensitive environment files should not be committed to the repository.

The `.env.dev` and `.env.prod` files contain local configuration values and are intentionally excluded from GitHub.

## Learning Outcome

This task demonstrates practical knowledge of:

- Docker Compose
- Container management
- Nginx
- Port mapping
- Environment-based configuration
- Multi-environment deployment concepts
- Optional container update automation using Watchtower