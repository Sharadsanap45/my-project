# Use official Python base image
FROM python:3.11-slim
RUN mkdir /PQR
# Set working directory inside container
WORKDIR /app

# Copy requirements file first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application code
COPY . .

# Command to run your app
CMD ["python", "app.py"]


