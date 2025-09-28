# Usa una imagen base explícita y estable
FROM n8nio/n8n:latest

# Instalar ffmpeg de forma fiable
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
