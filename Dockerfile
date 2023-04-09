# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install the dependencies
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on
EXPOSE 8000

# Start the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
