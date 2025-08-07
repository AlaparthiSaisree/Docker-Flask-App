FROM python:3.11-slim-bookworm

WORKDIR /app

# Install system updates and security patches
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y build-essential gcc && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]