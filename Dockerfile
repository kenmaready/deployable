FROM python:stretch

COPY . /deployable
WORKDIR /deployable

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]