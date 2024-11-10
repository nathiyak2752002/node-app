# Use the official Node.js v20 image as a base
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Set the MongoDB URL as an environment variable
# ENV MONGODB_URI=mongodb://0.0.0.0:27017/bezkoder_db

# ENV MONGODB_URI=mongodb://host.docker.internal:27017/bezkoder_db


# Expose the port that the application will run on
EXPOSE 8082

# Define the command to run the application
CMD ["node", "server.js"]
