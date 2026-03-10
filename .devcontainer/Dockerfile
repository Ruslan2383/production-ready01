FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Установка базовых инструментов
RUN apt-get update && apt-get install -y \
    git curl bash zsh \
    build-essential \
    python3 python3-pip python3-venv \
    nodejs npm \
    && rm -rf /var/lib/apt/lists/*

# Создаём пользователя, согласованного с devcontainer.json
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && usermod -aG sudo $USERNAME

USER $USERNAME
WORKDIR /workspace
