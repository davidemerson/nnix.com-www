FROM nginx:latest

EXPOSE 80
EXPOSE 443

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]