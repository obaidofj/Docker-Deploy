# get Nginx runtime image

FROM nginx:latest

COPY ./ /usr/share/nginx/html

EXPOSE 80

#run nginx when docker start

CMD ["nginx", "-g", "daemon off;"]