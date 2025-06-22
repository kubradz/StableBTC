FROM node:18-alpine
WORKDIR /app

# Copie uniquement ce qu'il faut depuis /frontend
COPY frontend/package*.json ./
RUN npm install

COPY frontend ./
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]
