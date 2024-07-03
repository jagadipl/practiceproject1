# Use Official Python Image From Docker Hub
FROM python:3.10-slim

# Set the working Directory in the Container
WORKDIR /app

# Copy requirement file to container
COPY requirements.txt /app/

# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of application code into the container
COPY . /app/


# Run on Port
EXPOSE 8000

# Run Django
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8001" ]