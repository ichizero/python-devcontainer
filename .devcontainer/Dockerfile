FROM python:3.7-slim AS dev

WORKDIR /app

# RUN rm -f /etc/apt/apt.conf.d/docker-clean; echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
# RUN --mount=type=cache,target=/var/cache/apt --mount=type=cache,target=/var/lib/apt \
RUN apt update && \
    apt install -y git zsh && \
    apt clean

# RUN --mount=type=cache,target=/root/.cache/pip \
#     --mount=type=bind,target=./ \
RUN pip install --no-cache-dir autopep8 flake8
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && \
    rm requirements.txt

ENTRYPOINT /bin/zsh
