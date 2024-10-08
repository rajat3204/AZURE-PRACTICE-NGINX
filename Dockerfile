FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
WORKDIR /app
COPY . /app
#COPY app-page.css /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
