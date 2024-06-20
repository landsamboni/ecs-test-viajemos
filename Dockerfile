# Usar Amazon Linux 2 como imagen base
FROM amazonlinux:2

# Instalar Nginx desde un repositorio de terceros
RUN yum -y update && \
    amazon-linux-extras install nginx1 -y && \
    yum clean all

# Copiar el contenido de la página web al directorio de Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Exponer el puerto 80 para acceder a la página web
EXPOSE 80

# Comando para ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
