FROM nginx:alpine

LABEL maintainer="Ahmed Abdelfattah"
LABEL project="devops-cicd-resume-project"

RUN rm -rf /usr/share/nginx/html/*

WORKDIR /usr/share/nginx/html

COPY website/ .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]