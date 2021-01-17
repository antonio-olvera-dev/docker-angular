FROM node:latest as node
LABEL authors="Antonio Olvera Fernández"
WORKDIR /usr/nodee
COPY "." "."
RUN npm -g update
RUN npm i
RUN npm run build


FROM nginx:latest as nginx-start
WORKDIR /
COPY --from=node /usr/nodee/dist/docker-angular /usr/share/nginx/html


