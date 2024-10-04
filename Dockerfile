# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /opt

# Copy app.py into the container
COPY app.py /opt/

# Install Flask using pip
RUN pip install flask

# Expose port 8080 to allow external access
EXPOSE 8080

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
