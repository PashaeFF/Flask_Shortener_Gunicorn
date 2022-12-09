FROM python:3.9

COPY . .

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD ["/src/runner.py" ]
