FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

# RUN apk install bash
RUN apk update
RUN apk add curl && apk add bash

COPY . /app

EXPOSE 8000

ENTRYPOINT ["python3"]
CMD ["app.py"]