FROM ubuntu:22.04

LABEL maintainer="Olawale Adekoya"

ENV DEBIAN_FRONTEND=noninteractive \
    PYENV_ROOT="/root/.pyenv" \
    POETRY_HOME="/opt/poetry" \
    PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$POETRY_HOME/bin:$PATH"

# Build essentials & Python tooling
RUN apt-get update && apt-get install -y \
    build-essential curl wget git gcc make openssl libssl-dev \
    libbz2-dev libreadline-dev libsqlite3-dev zlib1g-dev \
    libncursesw5-dev libgdbm-dev tk-dev lzma liblzma-dev \
    python3 python3-pip python3-venv && \
    curl https://pyenv.run | bash && \
    bash -c "eval \"$(pyenv init -)\" && pyenv install 3.11 && pyenv global 3.11" && \
    curl -sSL https://install.python-poetry.org | python3 - && \
    ln -s $POETRY_HOME/bin/poetry /usr/local/bin/poetry
