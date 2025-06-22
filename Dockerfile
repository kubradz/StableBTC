# Utilise une image Node
FROM node:18-alpine

# Crée le dossier de travail
WORKDIR /app

# Copie les fichiers de dépendances
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le reste
COPY . .

# Build l'app (si Next.js ou React)
RUN npm run build

# Expose le port
EXPOSE 3000

# Lance l'app
CMD ["npm", "start"]
