FROM python:3.13.2-slim AS pyhton-base

# Locking version to 1.8.3
RUN pip install poetry==1.8.3


ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=1 \
    POETRY_VIRTUALENVS_CREATE=1 \
    POETRY_CACHE_DIR=/tmp/poetry_cache

WORKDIR /app

COPY pyproject.toml poetry.lock ./
COPY tutorial.py ./tutorial.py
COPY resources ./resources/

RUN poetry install --no-dev --no-root && rm -rf $POETRY_CACHE_DIR
RUN apt-get update && \
    apt-get install -y ffmpeg xorg libasound2-dev

ENV VIRTUAL_ENV=/app/.venv \ 
    PATH="/app/.venv/bin:$PATH"

CMD [ "python", "tutorial.py" ] 