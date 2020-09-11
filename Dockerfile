FROM node:lts

WORKDIR /app

EXPOSE 3000 35729

RUN npm install --global docusaurus-init  &&\
    npx docusaurus-init &&\
    cd website &&\
    yarn install
WORKDIR /app/website
CMD ["yarn", "start"]
