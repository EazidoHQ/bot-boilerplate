FROM rasa/rasa:2.6.3

RUN cd /app

COPY . .

USER root

RUN rasa train

ENTRYPOINT [ ]

EXPOSE 5005

CMD rasa run actions -p $APORT & rasa run --enable-api --cors "*" -p $PORT
