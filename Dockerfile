# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# The BOT_TOKEN will be provided via environment variables or .env file
ENV BOT_TOKEN=insert_token_here

# Run bot.py when the container launches
CMD ["python", "-u","./bot.py"]
