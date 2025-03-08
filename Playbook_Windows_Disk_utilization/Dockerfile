# Use the official Ubuntu image as the base
FROM ubuntu:latest

# Set a non-interactive frontend to prevent tzdata from prompting during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Ansible
RUN apt update && \
    apt install -y ansible && \
    apt clean && rm -rf /var/lib/apt/lists/*
WORKDIR /app

# copy the build files and node packages into the work directory

COPY playbooks /app

# Set default command to check Ansible version
CMD ["ansible", "--version"]