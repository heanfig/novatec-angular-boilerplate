FROM nginx:1.13.3-alpine

COPY nginx/ /etc/nginx/conf.d/

RUN rm -rf /usr/share/nginx/html/*

RUN ["npm", "run", "build"]

COPY dist/ /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]