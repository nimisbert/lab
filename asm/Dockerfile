FROM alpine:latest
RUN apk update
RUN apk add --no-cache make 
RUN apk add --no-cache gdb
RUN apk add --no-cache gcc-arm-none-eabi
RUN mkdir -p /home/asm
WORKDIR /home/asm
COPY . /home/asm
