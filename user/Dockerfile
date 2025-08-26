FROM node:20.19-alpine3.22
EXPOSE 8080
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
WORKDIR /opt/server
RUN chown roboshop:roboshop /opt/server
USER roboshop
WORKDIR /opt/server
COPY package.json /opt/server/
ADD server.js /opt/server/
RUN npm install 
CMD ["node", "server.js"]
