FROM node:8.4

ENV APP_ROOT /code

WORKDIR ${APP_ROOT}

ADD . /code

RUN npm install && npm run build

ENV PATH $APP_ROOT/bin:$PATH

CMD ["lisky"]
