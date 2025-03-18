<<<<<<< HEAD
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

CMD ["node", "server.js"]

EXPOSE 3000
=======
# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy Django project
COPY . .

# Expose port and start server
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myapp.wsgi"]
>>>>>>> 486fa38 (Initial commit for Django app CI/CD)
