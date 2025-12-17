#!/bin/sh
set -e

echo "Moving into Spring Boot project directory"
cd hospitalManagementSystem

chmod +x mvnw

echo "Building application"
./mvnw clean package -DskipTests

echo "Starting application"
java -jar target/*.jar
