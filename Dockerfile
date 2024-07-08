# Use the official Python 3.9.19 image from Docker Hub
FROM python:3.9.19-slim

# Set the working directory inside the container
WORKDIR /app

# Copy only necessary files
COPY app.py /app/app.py
COPY other_file.py /app/other_file.py
# Add other files or directories as needed

# Install pip and upgrade it
RUN python -m pip install --upgrade pip

# Install dependencies
# Since we are not using requirements.txt, install dependencies directly
RUN pip install Flask==1.1.2 ifaddr==0.1.7 itsdangerous==1.1.0 Jinja2==2.11.2 MarkupSafe==1.1.1 Werkzeug==1.0.1 zeroconf==0.28.0 gunicorn==20.1.0

# Set the command to run your application
CMD ["python", "app.py"]
