# syntax = docker/dockerfile:experimental
FROM python:3.7-slim AS app

WORKDIR /app

COPY . .
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

ENTRYPOINT python
