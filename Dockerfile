# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install Flask and Gunicorn
RUN pip install --no-cache-dir flask gunicorn

# Copy application code
COPY app.py .

# Expose port
EXPOSE 5000

# Run Flask application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
