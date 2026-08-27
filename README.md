# Building an HTTP Server using Socket

This repository contains the implementation of a low-level HTTP Web Server built from scratch using the **Bonezegei Scripting Language (BSL)** and the **BSL Socket Library**.

---


## Repository Structure

```text
my-bsl-http-server/
├── .gitattributes
├── LICENSE
├── README.md
├── src/
│   └── http.bzg
└── documentation/
    ├── home.png
    ├── about.png
    ├── 404.png
    └── terminal.png
```
---
## 1. Objectives & Features

- Construct an HTTP server using raw socket operations.
- Implement custom route handling:
  - `GET /` — Root/Home response.
  - `GET /about` — About page response.
  - `404 Not Found` — Fallback for unregistered routes.
- Development environment configured using Visual Studio Code and Linux/Docker container environments.
- Licensed under the **MIT License**.

---

## 2. Prerequisites & Installation Guide

### A. VS Code Extension
1. Open Visual Studio Code.
2. Go to the Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X`).
3. Search for **Bonezegei** and install the **Bonezegei Scripting Language Formatter Extension**.

---

### B. Installing the Bonezegei Interpreter (BSL)

#### Option 1: Native Linux (Debian / Ubuntu / Codespaces)
Run the following commands in your terminal:

```bash
# 1. Download the .deb installer package
wget [https://github.com/bonezegei/Bonezegei_Scripting_Language/raw/refs/heads/main/Release/Bonezegei-x86.deb](https://github.com/bonezegei/Bonezegei_Scripting_Language/raw/refs/heads/main/Release/Bonezegei-x86.deb)

# 2. Update local package repositories
sudo apt update

# 3. Install the package
sudo apt install ./Bonezegei-x86.deb

#### Option 2: Docker Environment (e.g., Fedora / Non-Debian hosts)
If you are running Fedora or another OS, run the installer inside an Ubuntu container:

# 1. Run and mount your downloaded folder to the Ubuntu container
docker run -it -v ~/Downloads:/mnt:Z ubuntu:latest bash

# 2. Inside the container shell:
cd /mnt
apt update
apt install ./Bonezegei-x86.deb
```
### Verify Installation 

#### Verify the installation by checking the interpreter version:
```bash
bonezegei -v
```
Should return ok

# 3. Installing the BSL Socket Library
Run the following command to install the socket library dependency:  
bzg install socket
``` bash
## Configuration

### GitHub Syntax Highlighting (`.gitattributes`)
To force GitHub to render syntax highlighting for `.bzg` files using JavaScript grammar rules, the root directory includes a `.gitattributes` file with the following configuration:

```gitattributes
*.bzg linguist-language=JavaScript
```

## Running the Server

1. Navigate to the source folder:
   ```bash
   cd src
   ```
### Start the HTTP socket server:  
```bash
   bonezegei http.bzg
```
### The server will bind to port 8080 and listen for incoming connections:  
```text
Socket Ready
Server running on http://localhost:8080/
```[cite: 1]
```

---
## Documentation

