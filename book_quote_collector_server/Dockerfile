# Use Dart as a base image
FROM dart:stable

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the host machine to the container
COPY . .

# Get dependencies
RUN dart pub get

# Expose the server port
EXPOSE 8080

# Command to run your Serverpod server
CMD ["dart", "bin/server.dart"]
