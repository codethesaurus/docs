FROM python:3

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD mkdocs serve -a 0.0.0.0:8000
