# Dockerfile example
FROM node:18

WORKDIR /Capsule

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3130  
CMD ["npm", "start"]

# check the application is running
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl -f http://localhost:3130/ || exit 1