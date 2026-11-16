# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Run Python application
CMD ["python", "app.py"]
