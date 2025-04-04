
# Base image with Python
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy local code to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
