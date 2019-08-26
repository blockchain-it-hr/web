FROM node:10.15.1
WORKDIR /home/app/
COPY / .
RUN git config --global url."https://".insteadOf git://
RUN npm install
RUN npm run build

EXPOSE 3000
CMD ["node", "index.html"]
