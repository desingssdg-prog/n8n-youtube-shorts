# Usa la imagen oficial de n8n (versión estable)
FROM n8nio/n8n:latest

# Actualiza la lista de paquetes y luego instala ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# n8n ya está configurado para iniciarse solo
# No necesitas más comandos