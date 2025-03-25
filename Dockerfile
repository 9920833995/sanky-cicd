# Use an official Python runtime as base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy only requirements first (for better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Expose the application port (if required)
EXPOSE 5000  # Change this based on your app's port

# Run the application
CMD ["python", "app.py"]
