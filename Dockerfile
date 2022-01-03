FROM node
RUN git clone --depth 1 https://github.com/akroma-project/stats-server.git /stats-server
WORKDIR /stats-server
RUN npm install
RUN npm install -g grunt-cli
RUN grunt pow
EXPOSE 443
CMD ["npm", "start"]
