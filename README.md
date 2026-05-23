# Compile Principles

Before deploying the experiment on macOS/Windows, you need to install `Docker` on your system.

## Quick Start

- Clone the repository:

```shell
git clone https://github.com/EpsilonZYJ/Computer-Architecture.git
cd Computer-Architecture
```

- Build the Docker image locally:

```shell
make build
```

Or pull the pre-built image from Docker Hub:

```shell
docker pull epsilonzyj/sysy-rv64-lab:latest
```

- Run the container:

```shell
make shell
```

This will launch the container and start the experiment environment.
