# Base Image Used: Ubuntu 24.04 (which includes GLIBC 2.39, fixes the error na katong mu crash ang docker)
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Enable x86 (32-bit) multiarch fallback for the .deb environment
RUN dpkg --add-architecture i386

# Install system packages na importante
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Map out the execution container space (mao ni equivalent atong /mnt sa inline docker method. We just customized it now)
WORKDIR /app

# Transfer the package folder and unpack the engine
COPY pkg/ ./pkg/
RUN apt-get update && apt-get install -y ./pkg/Bonezegei-x86.deb \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf ./pkg/

# Bring over remaining project folders (lib, src, workspace configurations)
COPY . .

# Fetch the native libraries from the bzg package registry
RUN bzg install socket

# Expose port 8080 to the Docker network
EXPOSE 8080

# Launch the application with the entry script executor
CMD ["bonezegei", "src/http.bzg"]
