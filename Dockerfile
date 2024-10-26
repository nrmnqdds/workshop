# Specify base image
FROM node:20-alpine AS build

# Set working directory
WORKDIR /app

COPY . .

RUN npm ci
RUN npm run build

EXPOSE 4173

CMD ["npm", "run", "preview"]
