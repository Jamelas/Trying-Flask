FROM python:3.10.11
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app/
RUN rm -r venv/
RUN rm -r .git/
RUN rm -r .idea/
RUN rm -r __pycache__/
RUN rm -r .gitignore
RUN rm -r README.md

EXPOSE 8000

ENV FLASK_APP hello
CMD python -m flask run -h 0.0.0.0 -p 8000

