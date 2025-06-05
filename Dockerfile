# Use official lightweight Python image
FROM python:3.11-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into /app
COPY . .

# Expose Streamlit port
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "scripts/app.py", "--server.port=8501", "--server.address=0.0.0.0"]
