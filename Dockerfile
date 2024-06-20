FROM 905418305988.dkr.ecr.us-east-1.amazonaws.com/nginx-base:latest

# Copiar el contenido de la página web al directorio de Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Exponer el puerto 80 para acceder a la página web
EXPOSE 80