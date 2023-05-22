# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port if your application requires it
# EXPOSE 3000

# Specify the command to run when the container starts
CMD [ "node", "app.py" ]
