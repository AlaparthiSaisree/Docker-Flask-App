# Docker-Flask-App
Dockerize a Flask Web App
Perfect! Here's a **simple and effective DevOps article** you can include in your GitHub, blog, or Dev.to — formatted in **Markdown** (`README.md` style) so you can publish it right away.

---

## 📄 Article Title:

# 🚀 My First DevOps Project: Dockerizing a Python Flask App

---

### 🧑‍💻 Introduction

As a DevOps beginner, I wanted to start small but strong. So I built and containerized a simple Python Flask web app using **Docker**.

This project taught me:

* How to structure a Flask app
* What a Dockerfile does
* How to build and run a container
* Basic Docker commands

And I’m sharing it here step-by-step — so you can do it too in 15 minutes!

---

### 🛠️ What I Used

* 🐍 Python 3
* 🔥 Flask web framework
* 🐳 Docker
* 💻 VS Code

---

### 📁 Project Structure

```
docker-flask-app/
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md
```

---

### 📜 Step 1: The Flask App (`app.py`)

```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Dockerized Flask App!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
```

---

### 📦 Step 2: Define Dependencies (`requirements.txt`)

```
flask
```

---

### 🐳 Step 3: Create the Dockerfile

```dockerfile
# Use a base image
FROM python:3.11-slim-bookworm

# Set the working directory
WORKDIR /app
# Install system updates and security patches
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y build-essential gcc && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
# Copy dependency file and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy the app code
COPY . .
# Define how to run the app
CMD ["python", "app.py"]

---

### 🧪 Step 4: Build and Run the Docker Image

**Build the image:**

```bash
docker build -t flask-app .
```

**Run the container:**

```bash
docker run -p 5000:5000 flask-app
```

Now open [http://localhost:5000](http://localhost:5000) and you’ll see your app running!
or (http://127.0.0.1:5000/)

---

### 🧠 What I Learned

* Docker allows easy packaging of apps with all their dependencies.
* A Dockerfile is just a script that tells Docker how to build an image.
* Keeping things simple is the best way to build confidence.

---

### 📌 Next Steps

* Add tests and run them in the Docker build
* Push to Docker Hub
* Deploy to a cloud VM or use CI/CD pipeline

---

### 🔗 GitHub Repo

[🔗 View Full Code on GitHub](https://github.com/AlaparthiSaisree/Docker-Flask-App) *(Replace with your repo link)*

---

### 🙌 Final Words

This was my first step into the DevOps world — simple, fast, and effective. If you're just starting out, I highly recommend trying this project. It builds confidence and teaches Docker fundamentals without overwhelming you.

Let’s keep building, one container at a time! 🚢

---

