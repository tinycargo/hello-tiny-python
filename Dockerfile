FROM python:3.8.1-alpine3.11 as base
FROM base as builder

RUN mkdir /install
WORKDIR /install

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir --prefix=/install -r /requirements.txt

FROM base

COPY --from=builder /install /usr/local
COPY src /app

WORKDIR /app

ENTRYPOINT [ "python" ]
CMD [ "hello.py" ]
