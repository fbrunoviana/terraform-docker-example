FROM nginx:latest
RUN echo "guelo queima" > /usr/share/nginx/html/index.html
EXPOSE 80