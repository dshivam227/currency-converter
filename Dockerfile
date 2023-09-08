# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your project files to the container
COPY . .

# Expose the port your application will run on
EXPOSE 7850

# Start your Node.js application
CMD ["node", "app.js"]
