# Use an official OpenJDK image as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY . /app

# Compile the Java code
RUN javac HelloWorld.java

# Define the command to run when the container starts
ENTRYPOINT ["java", "HelloWorld"]
