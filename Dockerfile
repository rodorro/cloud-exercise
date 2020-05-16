FROM ubuntu:18.04

# Directorio de trabajo
WORKDIR /opt/myapp

COPY . .

# Actualizar contenedor e instalar comandos
RUN apt-get update
RUN apt-get install -y sudo curl

# Instalar Node V10
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v

# Instalar app
RUN npm install --only=production

EXPOSE 8888

#Inicio app
CMD ["npm", "start"]
