FROM python:3.10.12-slim-buster

WORKDIR /app/api

COPY ./app/api .

RUN python3 -m venv /opt/env && \
    /opt/env/bin/pip install --upgrade pip && \
    /opt/env/bin/pip install -r requirements.txt && \
    chmod +x /app/api/entrypoint.sh

CMD [ "/app/api/entrypoint.sh" ]