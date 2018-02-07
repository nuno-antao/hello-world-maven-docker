# Use an official Java runtime as parent image
FROM openjdk:8-jre-alpine

# Mantainer of the image
MAINTAINER Nuno Antao <nuno.j.antao@gmail.com>

# Set the working directory to /app
WORKDIR /app

# Copy the content of the current directory to /app
ADD . /app

# Run when the container launches
CMD ["java", "-cp", ".", "myartifact-0.0.1.jar", "target/mygroup.myartifact.App"]