FROM python:3.9

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["gunicorn"  , "-b", "0.0.0.0:5000", "runner:app"]
