FROM alpine 
RUN apk add --update nodejs npm 
RUN npm install -g http-server 
COPY . /src 
WORKDIR /scr 
EXPOSE 8083
ENTRYPOINT ["http-server","-p","8083"]
