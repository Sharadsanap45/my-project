FROM quay.io/centos/centos:stream9
RUN mkdir /abc
# Set working directory
WORKDIR /app

# Install Python and pip
RUN dnf install -y python3 python3-pip && \
    dnf clean all

# Copy requirements first
COPY requirements.txt .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Run app
CMD ["python3", "app.py"]

      
