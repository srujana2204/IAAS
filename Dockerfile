# Simulate a VM with Ubuntu + shell
FROM ubuntu:22.04

# Install utilities
RUN apt update && apt install -y \
    curl \
    git \
    nginx \
    net-tools \
    iputils-ping \
    python3 \
    python3-pip

# Create a working directory
WORKDIR /workspace

# Expose a port
EXPOSE 8080

# Keep container alive with a dummy service or bash
CMD ["bash"]
CMD ["tail", "-f", "/dev/null"]
