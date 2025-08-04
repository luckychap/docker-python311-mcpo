FROM python:3.11-slim

ENV PATH="$PATH:/root/.local/bin"

RUN apt update \
    && apt install -y curl \
    && curl -LsSf https://astral.sh/uv/install.sh | sh \
    && uv tool install mcpo \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["uv", "--help"]
