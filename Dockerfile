FROM node:alpine 

WORKDIR /app 

COPY . . 

RUN npm install 

RUN npm run build --prod 

#stage 2 

FROM nginx:alpine 

COPY dist/myapplication /usr/share/nginx/html 
