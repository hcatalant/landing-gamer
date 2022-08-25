#  producción
FROM nginx:1.17.6-alpine as production-stage
WORKDIR /app
COPY . .
COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]