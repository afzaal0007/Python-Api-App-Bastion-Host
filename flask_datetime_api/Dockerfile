# Dockerfile  
FROM python:3.9-slim  

# Set the working directory  
WORKDIR /app  

# Copy the requirements file and install dependencies  
COPY requirements.txt requirements.txt  
RUN pip install --no-cache-dir -r requirements.txt  

# Copy the application code  
COPY app.py app.py  

# Command to run the application  
CMD ["python", "app.py"]