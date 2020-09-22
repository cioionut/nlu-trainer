FROM node:7.4-alpine
RUN mkdir /nlu-data

WORKDIR /nlu-trainer
COPY . ./

RUN npm i -g nlu-trainer

EXPOSE 8080

CMD ["nlu-trainer", "-p", "8080"]
