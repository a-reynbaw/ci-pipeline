# using a personal project for the scan
FROM node:18-alpine

LABEL maintainer="a-reynbaw@gmail.com"
LABEL description="Containerized Comp Arch Quiz App for DevSecOps scanning"

# install git so the container can clone my repo
RUN apk add --no-cache git

WORKDIR /app

RUN git clone https://github.com/a-reynbaw/comp_arch_I-Quiz-App.git .

# install my project's dependencies
RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]