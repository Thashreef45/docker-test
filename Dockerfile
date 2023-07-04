# Use the official Node.js image as the base image
FROM node:slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . /app

# Build the TypeScript code
RUN npm run build

# Expose the port on which the application will run
EXPOSE 3000

# Define the command to run the application
CMD ["node", "index.js"]
