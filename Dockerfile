# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./
COPY components.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose default port
EXPOSE 3000

# Start the application in development mode
CMD ["npm", "run", "dev"]
