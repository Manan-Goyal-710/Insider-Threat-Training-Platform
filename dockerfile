# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /Users/bawa/Downloads/studynotion8/server

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy all files from the current directory to the working directory
COPY . .

# Set environment variables if needed
# ENV NODE_ENV production

# Expose the port on which your Node.js app will run
EXPOSE 3000

# Command to run your application
CMD ["npm","run", "dev"]
