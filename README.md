# my-bsl-http-server

A minimal HTTP server implemented in Bonezegei Scripting Language (BSL) using the BSL Socket library.

## Project Description
This project implements a simple low-level HTTP server that listens on port 8080 and serves three routes:
- `/` — Default landing page (200 OK)
- `/about` — About page with project/developer details (200 OK)
- Any other path — 404 Not Found page

## Installation & Setup (Dockerized Linux Setup)
The project runs inside an isolated Ubuntu Docker container to satisfy the `GLIBC 2.38+` and 32-bit architecture requirements of the native engine.

### Prerequisites
- [Docker](https://docker.com) installed on your host system.
- The `Bonezegei-x86.deb` installer placed inside the `pkg/` folder.

### 1. Build the Docker Image
From the root directory of your project, build the container image using:

```bash
docker build -t bonezegei-server .
```

### 2. Run the Container Server Instance
Launch the server in interactive mode, ensuring port mapping matches your assignment specification:

```bash
docker run -it -p 8080:8080 --name running-http-server bonezegei-server
```

## Usage
While the container terminal is active, open a web browser tab or open a separate terminal window on your host computer to inspect the server endpoints:
- `http://localhost:8080/` — Home page
- `http://localhost:8080/about` — About page
- `http://localhost:8080/anything` — 404 error fall-through route

## Documentation / Screenshots
Place your captured evaluation images inside the `documentation/` folder layout:
- `documentation/home.png` (Screenshot of `/` route)
- `documentation/about.png` (Screenshot of `/about` route)
- `documentation/404.png` (Screenshot of an unmapped route)
- `documentation/terminal.png` (Screenshot of terminal showing `Socket Ready`)

## Structural & Environment Adaptations
- **Native Extensions Fixed**: Windows binary path indicators (`.dll`) were updated across `lib/socket.bzg` and `lib/http/http.bzg` to point to the Linux environment architecture (`lib/socket/socket.so` / `lib/http/http.so`).
- **Dependency Automation**: The `Dockerfile` handles running `bzg install socket` automatically during image build compilation.
- **Unreachable Block Silenced**: The trailing `socket_cleanup()` call has been muted since the continuous server script processes inside an endless execution matrix loop (`while (1)`).
- **Dot-Notation Bypass**: Route checking relies directly on scalar evaluation checks rather than non-existent string methods (`data.indexOf`).
