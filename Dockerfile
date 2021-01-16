FROM nginx:alpine
RUN rm -rf usr/share/nginx/html/*
# RUN npm i
# RUN ng build
CMD ["nginx", "-g", "daemon off"]

