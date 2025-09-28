# Usa la misma imagen que ya usas
FROM docker.n8n.io/n8nio/n8n:latest

# Instala ffmpeg de forma fiable
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ffmpeg \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*
