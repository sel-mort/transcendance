# Use the official Node.js image as the base image
FROM node:21-alpine

# Set the working directory inside the container
WORKDIR /app/frontend

# Copy package.json and package-lock.json to the working directory
COPY ./app/frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY ./app/frontend/ ./

# Build the Next.js application
RUN npm run build

# Expose the port on which the application will run
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]