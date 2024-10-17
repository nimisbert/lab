# Assembler testing/learning laboratory 
# host   architecture : arm64 Apple Silicon M1
# docker architecture : aarch64

FROM arm64v8/alpine:latest

RUN apk update
RUN apk add --no-cache make
RUN apk add --no-cache gcc
RUN apk add --no-cache gdb
RUN apk add --no-cache binutils
RUN apk add --no-cache file

# GEF : GDB Enhanced Features
RUN wget -O ~/.gdbinit-gef.py -q https://gef.blah.cat/py
RUN echo source ~/.gdbinit-gef.py >> ~/.gdbinit

RUN mkdir -p /home/asm
WORKDIR /home/asm
