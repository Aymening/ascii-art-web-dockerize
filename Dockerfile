# Use the official Golang image as the base image
FROM golang:1.22.3-alpine

# Install bash and create the working directory in a single RUN statement
RUN apk add bash

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code to the working directory
COPY . .

# Set metadata for the image
LABEL project="ASCII-ART-WEB" \
      version="1.0"

# Expose port 8080
EXPOSE 8080

# Run the main command by default when the container starts.
CMD go run main.go
