FROM python:3.11-slim

WORKDIR /app
COPY app.py .
COPY templates/ templates/

# Instala dependencias
RUN apt-get update && apt-get install -y docker.io
RUN pip install flask

# Elimina la línea que usa VOLUME
# VOLUME ["/var/run/docker.sock:/var/run/docker.sock"]

CMD ["python", "app.py"]
