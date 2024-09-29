FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
COPY app-page.css /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
