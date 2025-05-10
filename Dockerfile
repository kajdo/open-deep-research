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

# Expose the port (default to 3000 if APP_PORT not set)
EXPOSE ${APP_PORT:-3000}

# Start the application (build happens on startup for development)
CMD ["sh", "-c", "npm run build && PORT=${APP_PORT:-3000} npm start"]
