# Use the official Python 3.9.6 image as the base image
FROM python:3.9.22-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Set the default command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]