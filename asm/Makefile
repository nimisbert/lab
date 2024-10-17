# Docker binary
DOCKER=docker
# Docker container name
CONTAINER=arm64-asm-lab
# Host working directory
WORKDIR=./
# Share the host working directory with the container
BIND_MOUNT=-v $(WORKDIR):/home/asm
# Run the assembler laboratory container
RUN=-ti $(CONTAINER) /bin/sh

build:
	$(DOCKER) build -t $(CONTAINER) .

run:
	$(DOCKER) run $(BIND_MOUNT) $(RUN)
