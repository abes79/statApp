FROM python:3

COPY /app /app

WORKDIR /app

RUN chmod +x ./statScript.sh

EXPOSE 8000

CMD [ "/bin/bash", "-c", "python3 ./app.py & ./statScript.sh" ]
