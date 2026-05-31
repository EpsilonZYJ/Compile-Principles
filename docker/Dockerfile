FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    make \
    gcc g++ llvm clang \
    gcc-riscv64-linux-gnu g++-riscv64-linux-gnu \
    flex bison \
    qemu-user qemu-user-static

RUN printf "\n[Tool Version]\n\n" && \
    gcc --version && \
    g++ --version && \
    llvm-config --version && \
    riscv64-linux-gnu-gcc --version && \
    riscv64-linux-gnu-g++ --version && \
    qemu-riscv64 --version && \
    flex --version && \
    bison --version && \
    cmake --version && \
    make --version

WORKDIR /app
CMD [ "/bin/bash" ]