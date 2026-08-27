# my-bsl-http-server

A minimal HTTP server implemented in Bonezegei Scripting Language (BSL) using the BSL Socket library.

## Project Description
This project implements a simple low-level HTTP server that listens on port 8080 and serves three routes:
- `/` — Default landing page (200 OK)
- `/about` — About page with project/developer details (200 OK)
- Any other path — 404 Not Found page

## Installation & Setup
1. Install the Bonezegei extension in VS Code and follow its instructions to install the `bonezegei` interpreter.
2. Install the socket library:

```bash
bzg install socket
```

3. From the project root, run the server:

```powershell
bonezegei src\http.bzg
```

## Usage
Open a browser and visit:
- http://localhost:8080/ — home page
- http://localhost:8080/about — about page
- http://localhost:8080/anything — shows the 404 page

## Documentation / Screenshots
Place screenshots in the `documentation/` folder:
- `documentation/home.png`
- `documentation/about.png`
- `documentation/404.png`
- `documentation/terminal.png`

## Notes
- `.gitattributes` is configured to render `.bzg` files using JavaScript syntax highlighting on GitHub.
- `socket_cleanup()` is commented out in `src/http.bzg` to avoid environment-specific cleanup errors during development. You may re-enable it if your environment supports graceful cleanup.
