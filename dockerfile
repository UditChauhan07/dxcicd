FROM node:14-alpine
RUN mkdir -p /main
WORKDIR /main      
COPY package.json /main
RUN npm install        
COPY . /main
EXPOSE 4200
CMD ["npm", "run", "start"]
