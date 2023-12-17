# Bun Docker Image

This Repository builds Bun Docker image for amd64/arm64 with [Ubuntu Chisel](https://github.com/canonical/chisel) to produce a very small docker image.

## How is the Docker Image so small?

Chisel installs only the bare minimum of the required packages aka only library files. So to the pre-built bun binary, only an additional 8MB of libraries are added.

This reduces also the attack vector of the image, as nothing is installed as bun + bash and the required libraries.

```
❯ docker images
REPOSITORY                 TAG          IMAGE ID       CREATED          SIZE
ghcr.io/shyim/bun-docker   latest       090c026d6905   14 minutes ago   95.3MB
oven/bun                   distroless   5833b222de8f   3 days ago       98.4MB
oven/bun                   alpine       2499bbe5831f   3 days ago       115MB
oven/bun                   latest       ad22f9f48cb6   3 days ago       204MB
```

## Usage

```bash
docker run -rm -it ghcr.io/shyim/bun-docker:latest
```

