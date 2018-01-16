FROM python:3-slim

ADD requirements.txt /code/requirements.txt
WORKDIR /code

RUN pip install -r requirements.txt

ADD . /code

ENV PYTHONUNBUFFERED=1

CMD ["./watchdog"]
