# Usamos una imagen base oficial de Nginx
FROM nginx:latest

# Copiamos el contenido de la página web al directorio de Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Exponemos el puerto 80 para acceder a la página web
EXPOSE 80
