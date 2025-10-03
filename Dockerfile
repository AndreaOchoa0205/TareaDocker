# Imagen base 
FROM node:18-alpine

# Creamos un usuario no root llamado Andrea y un group llamado DevOps
RUN addgroup -S DevOps && adduser -S Andrea -G DevOps

# Crea un directorio
WORKDIR /app

# Se copia los archivos del proyecto
COPY app/ .

# Instalamos dependencias
RUN npm install

# Se crea el directorio y le da permisos al usuario Andrea y grupo DevOps a dicho directorio
RUN mkdir -p /app/volumen && chown -R Andrea:DevOps /app

# Usar el nuevo usuario llamado Andrea
USER Andrea

# Exponer el puerto
EXPOSE 3000

# Comando por defecto
CMD ["npm", "start"]
