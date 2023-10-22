# dev mode
# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the Next.js application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Next.js development server with hot-reloading
CMD ["npm", "run", "dev"]
