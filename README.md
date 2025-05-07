
# Simple Flask MySQL Web Application

This is a simple Python Flask web application that connects to a MySQL database. It was originally built for demonstrating Ansible Playbook automation but has now been enhanced to support modern DevOps practices.

---

## 🚀 Features

- Python Flask-based Web App
- MySQL Database Integration
- Docker Support
- Kubernetes Manifests with HPA (Horizontal Pod Autoscaler)
- Monitoring with Prometheus & Grafana
- Slack Notification Integration

---

## 🛠️ Setup Instructions

### 1. Install Required Dependencies (For Bare Metal)

```bash
apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip default-libmysqlclient-dev
```

### 2. Install Python Libraries

```bash
pip3 install flask flask-mysql
```

---

## 🐳 Docker Support

Build the Docker image:

```bash
docker build -t flask-mysql-app:latest .
```

Run the container:

```bash
docker run -p 5000:5000 flask-mysql-app:latest
```

---

## ☸️ Kubernetes Deployment

This project includes Kubernetes manifests for:

- App Deployment & Service
- MySQL Deployment & Service
- HPA (Horizontal Pod Autoscaler)
- Monitoring (Prometheus & Grafana)
- Slack Alerts

Apply manifests:

```bash
kubectl apply -f k8s/
```

---

## 📊 Monitoring & Alerts

- Prometheus scrapes metrics from Flask app and Kubernetes nodes.
- Grafana dashboard is included.
- Slack alerts configured via Alertmanager.

---

## 🧪 Testing the Application

Open a browser and access:

```
http://<IP>:5000                            => Welcome
http://<IP>:5000/how%20are%20you            => I am good, how about you?
```

---

## 🤝 Contributing

Feel free to fork the repo, raise PRs, and enhance it further.

---

## 📬 Stay Connected

For contributions, feedback, or collaboration, connect with me on [LinkedIn](https://www.linkedin.com/in/aakash-sharma-8937b81aa/).

