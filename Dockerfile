# Gebruik een basis image
FROM node:18

# Stel de werkdirectory in
WORKDIR /app

# Kopieer alleen package.json en package-lock.json eerst (best practice)
COPY package*.json ./

# Installeer afhankelijkheden
RUN npm install

# Kopieer alle bestanden naar de container
COPY . .

# Geef het opstartcommando voor de applicatie
CMD ["npm", "start"]

# Expose de poort waarop de applicatie draait
EXPOSE 3000